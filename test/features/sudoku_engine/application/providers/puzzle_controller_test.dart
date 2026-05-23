import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/sudoku_engine/application/providers/puzzle_controller.dart';
import 'package:offline_sudoku/features/sudoku_engine/application/providers/sudoku_engine_providers.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/repositories/sudoku_puzzle_repository.dart';

import '../../../../helpers/fakes.dart';

void main() {
  test(
    'latest selected difficulty wins when cache loads complete out of order',
    () async {
      final repository = ControlledSudokuPuzzleRepository();
      final container = ProviderContainer(
        overrides: [
          sudokuPuzzleRepositoryProvider.overrideWithValue(repository),
          asyncSudokuPuzzleGeneratorProvider.overrideWithValue(
            FakeAsyncSudokuPuzzleGenerator(),
          ),
        ],
      );
      addTearDown(container.dispose);

      await container.read(puzzleControllerProvider.future);
      final controller = container.read(puzzleControllerProvider.notifier);

      controller.selectDifficulty(SudokuDifficulty.hard);
      controller.selectDifficulty(SudokuDifficulty.expert);

      repository.complete(SudokuDifficulty.hard, [
        fakePuzzle(difficulty: SudokuDifficulty.hard),
      ]);
      await Future<void>.delayed(Duration.zero);

      expect(
        container.read(selectedDifficultyProvider),
        SudokuDifficulty.expert,
      );

      repository.complete(SudokuDifficulty.expert, [
        fakePuzzle(difficulty: SudokuDifficulty.expert),
      ]);
      await Future<void>.delayed(Duration.zero);

      final state = container.read(puzzleControllerProvider).asData!.value;
      expect(state.selectedDifficulty, SudokuDifficulty.expert);
      expect(state.currentPuzzle?.difficulty, SudokuDifficulty.expert);
    },
  );
}

final class ControlledSudokuPuzzleRepository implements SudokuPuzzleRepository {
  final _pending = <SudokuDifficulty, Completer<List<SudokuPuzzle>>>{};

  @override
  Future<void> savePuzzle(SudokuPuzzle puzzle) async {}

  @override
  Future<SudokuPuzzle?> getPuzzle(String id) async => null;

  @override
  Future<List<SudokuPuzzle>> getCachedPuzzles({
    SudokuDifficulty? difficulty,
    int limit = 50,
  }) {
    if (difficulty == null) {
      return Future.value(const <SudokuPuzzle>[]);
    }

    return _pending
        .putIfAbsent(difficulty, () => Completer<List<SudokuPuzzle>>())
        .future;
  }

  void complete(SudokuDifficulty difficulty, List<SudokuPuzzle> puzzles) {
    _pending[difficulty]?.complete(puzzles);
  }

  @override
  Future<void> deletePuzzle(String id) async {}
}
