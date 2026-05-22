import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';

abstract interface class SudokuPuzzleRepository {
  Future<void> savePuzzle(SudokuPuzzle puzzle);

  Future<SudokuPuzzle?> getPuzzle(String id);

  Future<List<SudokuPuzzle>> getCachedPuzzles({
    SudokuDifficulty? difficulty,
    int limit = 50,
  });

  Future<void> deletePuzzle(String id);
}
