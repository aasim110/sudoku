import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/utils/persistence_id.dart';
import 'package:offline_sudoku/features/achievements/data/models/achievement_record.dart';

abstract interface class AchievementLocalDataSource {
  Future<void> put(AchievementRecord record);

  Future<void> putAll(List<AchievementRecord> records);

  Future<AchievementRecord?> get(String id);

  Future<List<AchievementRecord>> getAll();
}

final class IsarAchievementLocalDataSource
    implements AchievementLocalDataSource {
  const IsarAchievementLocalDataSource(this._isar);

  final Isar _isar;

  IsarCollection<AchievementRecord> get _collection =>
      _isar.collection<AchievementRecord>();

  @override
  Future<void> put(AchievementRecord record) {
    return _isar.writeTxn(() => _collection.put(record));
  }

  @override
  Future<void> putAll(List<AchievementRecord> records) {
    return _isar.writeTxn(() => _collection.putAll(records));
  }

  @override
  Future<AchievementRecord?> get(String id) {
    return _collection.get(PersistenceId.fromString(id));
  }

  @override
  Future<List<AchievementRecord>> getAll() {
    return _collection.where().findAll();
  }
}
