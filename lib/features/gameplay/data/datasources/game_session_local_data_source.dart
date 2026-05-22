import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/utils/persistence_id.dart';
import 'package:offline_sudoku/features/gameplay/data/models/game_session_record.dart';
import 'package:offline_sudoku/features/gameplay/domain/entities/game_session.dart';

abstract interface class GameSessionLocalDataSource {
  Future<void> put(GameSessionRecord record);

  Future<GameSessionRecord?> get(String id);

  Future<GameSessionRecord?> getCurrent();

  Future<List<GameSessionRecord>> getActive();

  Future<void> delete(String id);
}

final class IsarGameSessionLocalDataSource
    implements GameSessionLocalDataSource {
  const IsarGameSessionLocalDataSource(this._isar);

  final Isar _isar;

  IsarCollection<GameSessionRecord> get _collection =>
      _isar.collection<GameSessionRecord>();

  @override
  Future<void> put(GameSessionRecord record) {
    return _isar.writeTxn(() => _collection.put(record));
  }

  @override
  Future<GameSessionRecord?> get(String id) {
    return _collection.get(PersistenceId.fromString(id));
  }

  @override
  Future<GameSessionRecord?> getCurrent() async {
    final active = await getActive();
    if (active.isEmpty) {
      return null;
    }

    active.sort((left, right) => right.updatedAt.compareTo(left.updatedAt));
    return active.first;
  }

  @override
  Future<List<GameSessionRecord>> getActive() async {
    final records = await _collection.where().findAll();
    return records
        .where(
          (record) =>
              record.statusName == GameSessionStatus.playing.name ||
              record.statusName == GameSessionStatus.paused.name,
        )
        .toList(growable: false);
  }

  @override
  Future<void> delete(String id) {
    return _isar.writeTxn(
      () => _collection.delete(PersistenceId.fromString(id)),
    );
  }
}
