import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/sudoku_engine/application/providers/sudoku_engine_providers.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';

final class PuzzleState {
  const PuzzleState({
    required this.currentPuzzle,
    required this.cachedPuzzles,
    required this.selectedDifficulty,
  });

  const PuzzleState.initial()
    : currentPuzzle = null,
      cachedPuzzles = const <SudokuPuzzle>[],
      selectedDifficulty = SudokuDifficulty.easy;

  final SudokuPuzzle? currentPuzzle;
  final List<SudokuPuzzle> cachedPuzzles;
  final SudokuDifficulty selectedDifficulty;

  PuzzleState copyWith({
    SudokuPuzzle? currentPuzzle,
    List<SudokuPuzzle>? cachedPuzzles,
    SudokuDifficulty? selectedDifficulty,
  }) {
    return PuzzleState(
      currentPuzzle: currentPuzzle ?? this.currentPuzzle,
      cachedPuzzles: cachedPuzzles ?? this.cachedPuzzles,
      selectedDifficulty: selectedDifficulty ?? this.selectedDifficulty,
    );
  }
}

final puzzleControllerProvider =
    AsyncNotifierProvider<PuzzleController, PuzzleState>(PuzzleController.new);

final currentPuzzleProvider = Provider<SudokuPuzzle?>((ref) {
  return ref.watch(
    puzzleControllerProvider.select(
      (state) => state.asData?.value.currentPuzzle,
    ),
  );
});

final cachedPuzzlesProvider = Provider<List<SudokuPuzzle>>((ref) {
  return ref.watch(
    puzzleControllerProvider.select(
      (state) => state.asData?.value.cachedPuzzles ?? const <SudokuPuzzle>[],
    ),
  );
});

final selectedDifficultyProvider = Provider<SudokuDifficulty>((ref) {
  return ref.watch(
    puzzleControllerProvider.select(
      (state) =>
          state.asData?.value.selectedDifficulty ?? SudokuDifficulty.easy,
    ),
  );
});

final class PuzzleController extends AsyncNotifier<PuzzleState> {
  int _difficultyRequestId = 0;

  @override
  Future<PuzzleState> build() async {
    final cached = await ref
        .read(sudokuPuzzleRepositoryProvider)
        .getCachedPuzzles();
    return PuzzleState(
      currentPuzzle: cached.isEmpty ? null : cached.first,
      cachedPuzzles: cached,
      selectedDifficulty: SudokuDifficulty.easy,
    );
  }

  Future<SudokuPuzzle> generatePuzzle({
    required SudokuDifficulty difficulty,
    String? seed,
  }) async {
    final puzzle = await ref
        .read(asyncSudokuPuzzleGeneratorProvider)
        .generate(
          difficulty: difficulty,
          seed: seed,
          createdAt: DateTime.now().toUtc(),
        );

    await ref.read(sudokuPuzzleRepositoryProvider).savePuzzle(puzzle);
    final previous = state.asData?.value ?? const PuzzleState.initial();
    state = AsyncData(
      previous.copyWith(
        currentPuzzle: puzzle,
        selectedDifficulty: difficulty,
        cachedPuzzles: [puzzle, ...previous.cachedPuzzles],
      ),
    );
    return puzzle;
  }

  Future<void> setDifficulty(SudokuDifficulty difficulty) async {
    final requestId = ++_difficultyRequestId;
    await _loadDifficulty(difficulty, requestId: requestId);
  }

  void selectDifficulty(SudokuDifficulty difficulty) {
    final requestId = ++_difficultyRequestId;
    final previous = state.asData?.value ?? const PuzzleState.initial();
    state = AsyncData(previous.copyWith(selectedDifficulty: difficulty));
    unawaited(_loadDifficulty(difficulty, requestId: requestId));
  }

  Future<void> _loadDifficulty(
    SudokuDifficulty difficulty, {
    required int requestId,
  }) async {
    final cached = await ref
        .read(sudokuPuzzleRepositoryProvider)
        .getCachedPuzzles(difficulty: difficulty);
    if (!ref.mounted || requestId != _difficultyRequestId) {
      return;
    }

    state = AsyncData(
      PuzzleState(
        selectedDifficulty: difficulty,
        cachedPuzzles: cached,
        currentPuzzle: cached.isEmpty ? null : cached.first,
      ),
    );
  }
}
