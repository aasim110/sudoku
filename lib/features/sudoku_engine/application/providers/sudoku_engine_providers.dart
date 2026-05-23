import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/features/sudoku_engine/application/services/async_sudoku_generator.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/services/sudoku_generator.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/services/sudoku_hint_engine.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/services/sudoku_solver.dart';

final sudokuSolverProvider = Provider<SudokuSolver>((ref) {
  return const BacktrackingSudokuSolver();
});

final sudokuPuzzleGeneratorProvider = Provider<SudokuPuzzleGenerator>((ref) {
  return BacktrackingSudokuGenerator(solver: ref.watch(sudokuSolverProvider));
});

final asyncSudokuPuzzleGeneratorProvider = Provider<AsyncSudokuPuzzleGenerator>(
  (ref) {
    return const IsolateSudokuPuzzleGenerator();
  },
);

final sudokuHintEngineProvider = Provider<SudokuHintEngine>((ref) {
  return ExplainableSudokuHintEngine(solver: ref.watch(sudokuSolverProvider));
});
