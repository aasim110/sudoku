import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/gameplay/application/providers/timer_controller.dart';
import 'package:offline_sudoku/features/gameplay/domain/entities/game_session.dart';
import 'package:offline_sudoku/features/sudoku_engine/application/providers/sudoku_engine_providers.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/hint_result.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_cell.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';
import 'package:uuid/uuid.dart';

final gameControllerProvider =
    AsyncNotifierProvider<GameController, GameSession?>(GameController.new);

final gameSessionProvider = Provider<GameSession?>((ref) {
  return ref.watch(gameControllerProvider).asData?.value;
});

final gameCellsProvider = Provider<List<SudokuCell>>((ref) {
  return ref.watch(
    gameControllerProvider.select(
      (state) => state.asData?.value?.cells ?? const <SudokuCell>[],
    ),
  );
});

final gameCellProvider = Provider.family<SudokuCell?, int>((ref, index) {
  return ref.watch(
    gameCellsProvider.select((cells) {
      if (index < 0 || index >= cells.length) {
        return null;
      }
      return cells[index];
    }),
  );
});

final selectedCellIndexProvider = Provider<int?>((ref) {
  return ref.watch(
    gameControllerProvider.select(
      (state) => state.asData?.value?.selectedCellIndex,
    ),
  );
});

final selectedCellProvider = Provider<SudokuCell?>((ref) {
  final index = ref.watch(selectedCellIndexProvider);
  if (index == null) {
    return null;
  }
  return ref.watch(gameCellProvider(index));
});

final notesModeProvider = Provider<bool>((ref) {
  return ref.watch(
    gameControllerProvider.select(
      (state) => state.asData?.value?.notesModeEnabled ?? false,
    ),
  );
});

final mistakesProvider = Provider<int>((ref) {
  return ref.watch(
    gameControllerProvider.select(
      (state) => state.asData?.value?.mistakeCount ?? 0,
    ),
  );
});

final hintsUsedProvider = Provider<int>((ref) {
  return ref.watch(
    gameControllerProvider.select(
      (state) => state.asData?.value?.hintCount ?? 0,
    ),
  );
});

final gameStatusProvider = Provider<GameSessionStatus?>((ref) {
  return ref.watch(
    gameControllerProvider.select((state) => state.asData?.value?.status),
  );
});

final canUndoProvider = Provider<bool>((ref) {
  return ref.watch(
    gameControllerProvider.select(
      (state) => state.asData?.value?.canUndo ?? false,
    ),
  );
});

final canRedoProvider = Provider<bool>((ref) {
  return ref.watch(
    gameControllerProvider.select(
      (state) => state.asData?.value?.canRedo ?? false,
    ),
  );
});

final selectedPeerIndexesProvider = Provider<Set<int>>((ref) {
  final selectedIndex = ref.watch(selectedCellIndexProvider);
  if (selectedIndex == null) {
    return const <int>{};
  }

  final row = selectedIndex ~/ 9;
  final column = selectedIndex % 9;
  final boxRow = (row ~/ 3) * 3;
  final boxColumn = (column ~/ 3) * 3;
  final indexes = <int>{};

  for (var offset = 0; offset < 9; offset++) {
    indexes.add((row * 9) + offset);
    indexes.add((offset * 9) + column);
  }

  for (var rowOffset = 0; rowOffset < 3; rowOffset++) {
    for (var columnOffset = 0; columnOffset < 3; columnOffset++) {
      indexes.add(((boxRow + rowOffset) * 9) + boxColumn + columnOffset);
    }
  }

  indexes.remove(selectedIndex);
  return Set<int>.unmodifiable(indexes);
});

final class GameController extends AsyncNotifier<GameSession?> {
  static const _uuid = Uuid();

  @override
  Future<GameSession?> build() async {
    final session = await ref
        .read(gameSessionRepositoryProvider)
        .getCurrentSession();
    if (session != null) {
      ref
          .read(gameTimerControllerProvider.notifier)
          .setElapsed(session.elapsedTime);
    }
    return session;
  }

  Future<void> startNewGame({
    required SudokuDifficulty difficulty,
    String? seed,
    bool isDailyChallenge = false,
  }) async {
    final generator = ref.read(sudokuPuzzleGeneratorProvider);
    final now = DateTime.now().toUtc();
    final puzzle = generator.generate(
      difficulty: difficulty,
      seed: seed,
      createdAt: now,
    );
    final session = GameSession(
      id: _uuid.v4(),
      puzzle: puzzle,
      cells: _cellsFromPuzzle(puzzle),
      status: GameSessionStatus.playing,
      createdAt: now,
      updatedAt: now,
      startedAt: now,
      isDailyChallenge: isDailyChallenge,
    );

    state = AsyncData(session);
    ref.read(gameTimerControllerProvider.notifier).start();
    unawaited(ref.read(sudokuPuzzleRepositoryProvider).savePuzzle(puzzle));
    unawaited(ref.read(gameSessionRepositoryProvider).saveSession(session));
  }

  void restartCurrentPuzzle() {
    final session = state.asData?.value;
    if (session == null) {
      return;
    }

    final now = DateTime.now().toUtc();
    final restarted = session.copyWith(
      cells: _cellsFromPuzzle(session.puzzle),
      status: GameSessionStatus.playing,
      startedAt: now,
      completedAt: null,
      selectedCellIndex: null,
      elapsedTime: Duration.zero,
      notesModeEnabled: false,
      mistakeCount: 0,
      hintCount: 0,
      undoStack: const <GameMove>[],
      redoStack: const <GameMove>[],
    );

    ref.read(gameTimerControllerProvider.notifier).start();
    _setSession(restarted);
  }

  void selectCell(int index) {
    _updateSession((session) => session.copyWith(selectedCellIndex: index));
  }

  void toggleNotesMode() {
    _updateSession(
      (session) =>
          session.copyWith(notesModeEnabled: !session.notesModeEnabled),
    );
  }

  void placeNumber(int value) {
    final session = state.asData?.value;
    final index = session?.selectedCellIndex;
    if (session == null || index == null || value < 1 || value > 9) {
      return;
    }

    final cell = session.cells[index];
    if (!cell.canEdit) {
      return;
    }

    if (session.notesModeEnabled) {
      _toggleNote(session, index, value);
      return;
    }

    final nextCell = cell.copyWith(value: value, notes: const <int>[]);
    final cells = [...session.cells]..[index] = nextCell;
    final isMistake = value != cell.solution;
    final move = GameMove(
      id: _uuid.v4(),
      type: GameMoveType.placeNumber,
      cellIndex: index,
      createdAt: DateTime.now().toUtc(),
      previousValue: cell.value,
      nextValue: value,
      previousNotes: cell.notes,
    );
    final completed = cells.every(
      (current) => current.value == current.solution,
    );

    _setSession(
      session.copyWith(
        cells: _clearRelatedNotes(cells, index, value),
        status: completed ? GameSessionStatus.completed : session.status,
        completedAt: completed ? DateTime.now().toUtc() : session.completedAt,
        mistakeCount: session.mistakeCount + (isMistake ? 1 : 0),
        undoStack: [...session.undoStack, move],
        redoStack: const <GameMove>[],
      ),
    );
  }

  void eraseSelectedCell() {
    final session = state.asData?.value;
    final index = session?.selectedCellIndex;
    if (session == null || index == null) {
      return;
    }

    final cell = session.cells[index];
    if (!cell.canEdit || cell.value == null) {
      return;
    }

    final cells = [...session.cells]..[index] = cell.copyWith(value: null);
    final move = GameMove(
      id: _uuid.v4(),
      type: GameMoveType.eraseNumber,
      cellIndex: index,
      createdAt: DateTime.now().toUtc(),
      previousValue: cell.value,
    );

    _setSession(
      session.copyWith(
        cells: cells,
        undoStack: [...session.undoStack, move],
        redoStack: const <GameMove>[],
      ),
    );
  }

  void undo() {
    final session = state.asData?.value;
    if (session == null || session.undoStack.isEmpty) {
      return;
    }

    final move = session.undoStack.last;
    final undoStack = [...session.undoStack]..removeLast();
    final cells = _applyMove(session.cells, move, reverse: true);

    _setSession(
      session.copyWith(
        cells: cells,
        selectedCellIndex: move.cellIndex,
        undoStack: undoStack,
        redoStack: [...session.redoStack, move],
      ),
    );
  }

  void redo() {
    final session = state.asData?.value;
    if (session == null || session.redoStack.isEmpty) {
      return;
    }

    final move = session.redoStack.last;
    final redoStack = [...session.redoStack]..removeLast();
    final cells = _applyMove(session.cells, move, reverse: false);

    _setSession(
      session.copyWith(
        cells: cells,
        selectedCellIndex: move.cellIndex,
        undoStack: [...session.undoStack, move],
        redoStack: redoStack,
      ),
    );
  }

  void applyHint(HintResult hint) {
    final session = state.asData?.value;
    final index = hint.cellIndex;
    final value = hint.value;
    if (session == null || index == null || value == null) {
      return;
    }

    final cell = session.cells[index];
    if (!cell.canEdit) {
      return;
    }

    final cells = [...session.cells]
      ..[index] = cell.copyWith(
        value: hint.changesBoard ? value : cell.value,
        notes: hint.changesBoard ? const <int>[] : hint.candidates,
      );
    final move = GameMove(
      id: _uuid.v4(),
      type: GameMoveType.applyHint,
      cellIndex: index,
      createdAt: DateTime.now().toUtc(),
      previousValue: cell.value,
      nextValue: hint.changesBoard ? value : cell.value,
      previousNotes: cell.notes,
      nextNotes: hint.changesBoard ? const <int>[] : hint.candidates,
      hint: hint,
    );

    _setSession(
      session.copyWith(
        cells: cells,
        hintCount: session.hintCount + 1,
        undoStack: [...session.undoStack, move],
        redoStack: const <GameMove>[],
      ),
    );
  }

  void pause() {
    ref.read(gameTimerControllerProvider.notifier).pause();
    _updateSession(
      (session) => session.copyWith(status: GameSessionStatus.paused),
    );
  }

  void resume() {
    ref.read(gameTimerControllerProvider.notifier).resume();
    _updateSession(
      (session) => session.copyWith(status: GameSessionStatus.playing),
    );
  }

  void syncElapsedTime(Duration elapsed) {
    _updateSession((session) => session.copyWith(elapsedTime: elapsed));
  }

  void _toggleNote(GameSession session, int index, int value) {
    final cell = session.cells[index];
    final notes = [...cell.notes];
    notes.contains(value) ? notes.remove(value) : notes.add(value);
    notes.sort();

    final cells = [...session.cells]..[index] = cell.copyWith(notes: notes);
    final move = GameMove(
      id: _uuid.v4(),
      type: notes.contains(value)
          ? GameMoveType.addNote
          : GameMoveType.removeNote,
      cellIndex: index,
      createdAt: DateTime.now().toUtc(),
      previousNotes: cell.notes,
      nextNotes: notes,
    );

    _setSession(
      session.copyWith(
        cells: cells,
        undoStack: [...session.undoStack, move],
        redoStack: const <GameMove>[],
      ),
    );
  }

  void _updateSession(GameSession Function(GameSession session) update) {
    final session = state.asData?.value;
    if (session == null) {
      return;
    }
    _setSession(update(session));
  }

  void _setSession(GameSession session) {
    final updated = session.copyWith(updatedAt: DateTime.now().toUtc());
    state = AsyncData(updated);
    unawaited(ref.read(gameSessionRepositoryProvider).saveSession(updated));
  }

  List<SudokuCell> _cellsFromPuzzle(SudokuPuzzle puzzle) {
    return List<SudokuCell>.generate(81, (index) {
      final initialValue = puzzle.initialGrid[index];
      final solution = puzzle.solutionGrid[index];
      if (initialValue != null && initialValue != 0) {
        return SudokuCell.given(
          index: index,
          value: initialValue,
          solution: solution,
        );
      }
      return SudokuCell.empty(index: index, solution: solution);
    }, growable: false);
  }

  List<SudokuCell> _applyMove(
    List<SudokuCell> currentCells,
    GameMove move, {
    required bool reverse,
  }) {
    final cells = [...currentCells];
    final cell = cells[move.cellIndex];

    switch (move.type) {
      case GameMoveType.placeNumber:
      case GameMoveType.eraseNumber:
      case GameMoveType.applyHint:
        cells[move.cellIndex] = cell.copyWith(
          value: reverse ? move.previousValue : move.nextValue,
          notes: reverse ? move.previousNotes : move.nextNotes,
        );
      case GameMoveType.addNote:
      case GameMoveType.removeNote:
      case GameMoveType.clearNotes:
        cells[move.cellIndex] = cell.copyWith(
          notes: reverse ? move.previousNotes : move.nextNotes,
        );
    }

    return cells;
  }

  List<SudokuCell> _clearRelatedNotes(
    List<SudokuCell> cells,
    int index,
    int value,
  ) {
    final row = index ~/ 9;
    final column = index % 9;
    final box = (row ~/ 3) * 3 + (column ~/ 3);

    return [
      for (final cell in cells)
        if (cell.index != index &&
            (cell.row == row || cell.column == column || cell.box == box) &&
            cell.notes.contains(value))
          cell.copyWith(
            notes: cell.notes.where((note) => note != value).toList(),
          )
        else
          cell,
    ];
  }
}
