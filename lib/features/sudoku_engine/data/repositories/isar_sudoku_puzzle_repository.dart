import 'package:offline_sudoku/features/sudoku_engine/data/datasources/sudoku_puzzle_local_data_source.dart';
import 'package:offline_sudoku/features/sudoku_engine/data/models/sudoku_puzzle_record.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/repositories/sudoku_puzzle_repository.dart';

final class IsarSudokuPuzzleRepository implements SudokuPuzzleRepository {
  const IsarSudokuPuzzleRepository(this._localDataSource);

  final SudokuPuzzleLocalDataSource _localDataSource;

  @override
  Future<void> savePuzzle(SudokuPuzzle puzzle) {
    return _localDataSource.put(SudokuPuzzleRecord.fromDomain(puzzle));
  }

  @override
  Future<SudokuPuzzle?> getPuzzle(String id) async {
    return (await _localDataSource.get(id))?.toDomain();
  }

  @override
  Future<List<SudokuPuzzle>> getCachedPuzzles({
    SudokuDifficulty? difficulty,
    int limit = 50,
  }) async {
    final records = await _localDataSource.getCached(
      difficulty: difficulty,
      limit: limit,
    );
    return records.map((record) => record.toDomain()).toList(growable: false);
  }

  @override
  Future<void> deletePuzzle(String id) {
    return _localDataSource.delete(id);
  }
}
