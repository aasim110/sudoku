import 'dart:isolate';

import 'package:offline_sudoku/core/utils/app_logger.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/services/sudoku_generator.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/services/sudoku_solver.dart';

abstract interface class AsyncSudokuPuzzleGenerator {
  Future<SudokuPuzzle> generate({
    required SudokuDifficulty difficulty,
    String? seed,
    DateTime? createdAt,
  });
}

final class IsolateSudokuPuzzleGenerator implements AsyncSudokuPuzzleGenerator {
  const IsolateSudokuPuzzleGenerator();

  @override
  Future<SudokuPuzzle> generate({
    required SudokuDifficulty difficulty,
    String? seed,
    DateTime? createdAt,
  }) async {
    final stopwatch = Stopwatch()..start();
    final json = await Isolate.run(
      () => _generatePuzzleJson(
        difficultyName: difficulty.name,
        seed: seed,
        createdAtMilliseconds:
            (createdAt ?? DateTime.now().toUtc()).millisecondsSinceEpoch,
      ),
    );
    stopwatch.stop();

    AppLogger.info(
      'Generated ${difficulty.name} Sudoku in ${stopwatch.elapsedMilliseconds}ms',
    );
    return SudokuPuzzle.fromJson(json);
  }
}

Map<String, dynamic> _generatePuzzleJson({
  required String difficultyName,
  required String? seed,
  required int createdAtMilliseconds,
}) {
  final stopwatch = Stopwatch()..start();
  final difficulty = SudokuDifficulty.values.byName(difficultyName);
  final puzzle =
      BacktrackingSudokuGenerator(
        solver: const BacktrackingSudokuSolver(),
      ).generate(
        difficulty: difficulty,
        seed: seed,
        createdAt: DateTime.fromMillisecondsSinceEpoch(
          createdAtMilliseconds,
          isUtc: true,
        ),
      );
  stopwatch.stop();

  return puzzle
      .copyWith(
        metadata: {
          ...puzzle.metadata,
          'generationDurationMs': stopwatch.elapsedMilliseconds,
          'generatedInIsolate': true,
        },
      )
      .toJson();
}
