import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/utils/persistence_id.dart';
import 'package:offline_sudoku/features/daily_challenge/data/models/daily_challenge_record.dart';

abstract interface class DailyChallengeLocalDataSource {
  Future<void> put(DailyChallengeRecord record);

  Future<DailyChallengeRecord?> get(String id);

  Future<DailyChallengeRecord?> getByDate(DateTime date);

  Future<List<DailyChallengeRecord>> getRecent({int limit = 30});
}

final class IsarDailyChallengeLocalDataSource
    implements DailyChallengeLocalDataSource {
  const IsarDailyChallengeLocalDataSource(this._isar);

  final Isar _isar;

  IsarCollection<DailyChallengeRecord> get _collection =>
      _isar.collection<DailyChallengeRecord>();

  @override
  Future<void> put(DailyChallengeRecord record) {
    return _isar.writeTxn(() => _collection.put(record));
  }

  @override
  Future<DailyChallengeRecord?> get(String id) {
    return _collection.get(PersistenceId.fromString(id));
  }

  @override
  Future<DailyChallengeRecord?> getByDate(DateTime date) async {
    final normalized = DateTime.utc(date.year, date.month, date.day);
    final records = await _collection.where().findAll();

    for (final record in records) {
      final recordDate = DateTime.utc(
        record.challengeDate.year,
        record.challengeDate.month,
        record.challengeDate.day,
      );
      if (recordDate == normalized) {
        return record;
      }
    }

    return null;
  }

  @override
  Future<List<DailyChallengeRecord>> getRecent({int limit = 30}) async {
    final records = await _collection.where().findAll();
    records.sort(
      (left, right) => right.challengeDate.compareTo(left.challengeDate),
    );
    return records.take(limit).toList(growable: false);
  }
}
