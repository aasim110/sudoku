import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/utils/persistence_id.dart';
import 'package:offline_sudoku/features/stats/data/models/user_stats_record.dart';

abstract interface class UserStatsLocalDataSource {
  Future<void> put(UserStatsRecord record);

  Future<UserStatsRecord?> get(String userId);
}

final class IsarUserStatsLocalDataSource implements UserStatsLocalDataSource {
  const IsarUserStatsLocalDataSource(this._isar);

  final Isar _isar;

  IsarCollection<UserStatsRecord> get _collection =>
      _isar.collection<UserStatsRecord>();

  @override
  Future<void> put(UserStatsRecord record) {
    return _isar.writeTxn(() => _collection.put(record));
  }

  @override
  Future<UserStatsRecord?> get(String userId) {
    return _collection.get(PersistenceId.fromString(userId));
  }
}
