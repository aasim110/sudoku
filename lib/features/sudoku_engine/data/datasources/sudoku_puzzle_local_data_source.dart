import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/utils/persistence_id.dart';
import 'package:offline_sudoku/features/sudoku_engine/data/models/sudoku_puzzle_record.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';

abstract interface class SudokuPuzzleLocalDataSource {
  Future<void> put(SudokuPuzzleRecord record);

  Future<SudokuPuzzleRecord?> get(String id);

  Future<List<SudokuPuzzleRecord>> getCached({
    SudokuDifficulty? difficulty,
    int limit = 50,
  });

  Future<void> delete(String id);
}

final class IsarSudokuPuzzleLocalDataSource
    implements SudokuPuzzleLocalDataSource {
  const IsarSudokuPuzzleLocalDataSource(this._isar);

  final Isar _isar;

  IsarCollection<SudokuPuzzleRecord> get _collection =>
      _isar.collection<SudokuPuzzleRecord>();

  @override
  Future<void> put(SudokuPuzzleRecord record) {
    return _isar.writeTxn(() => _collection.put(record));
  }

  @override
  Future<SudokuPuzzleRecord?> get(String id) {
    return _collection.get(PersistenceId.fromString(id));
  }

  @override
  Future<List<SudokuPuzzleRecord>> getCached({
    SudokuDifficulty? difficulty,
    int limit = 50,
  }) async {
    final records = difficulty == null
        ? await _collection.where().findAll()
        : await _collection
              .filter()
              .difficultyNameEqualTo(difficulty.name)
              .findAll();

    records.sort((left, right) => right.createdAt.compareTo(left.createdAt));
    return records.take(limit).toList(growable: false);
  }

  @override
  Future<void> delete(String id) {
    return _isar.writeTxn(
      () => _collection.delete(PersistenceId.fromString(id)),
    );
  }
}
