import 'package:offline_sudoku/features/gameplay/data/datasources/game_session_local_data_source.dart';
import 'package:offline_sudoku/features/gameplay/data/models/game_session_record.dart';
import 'package:offline_sudoku/features/gameplay/domain/entities/game_session.dart';
import 'package:offline_sudoku/features/gameplay/domain/repositories/game_session_repository.dart';

final class IsarGameSessionRepository implements GameSessionRepository {
  const IsarGameSessionRepository(this._localDataSource);

  final GameSessionLocalDataSource _localDataSource;

  @override
  Future<void> saveSession(GameSession session) {
    return _localDataSource.put(GameSessionRecord.fromDomain(session));
  }

  @override
  Future<GameSession?> getSession(String id) async {
    return (await _localDataSource.get(id))?.toDomain();
  }

  @override
  Future<GameSession?> getCurrentSession() async {
    return (await _localDataSource.getCurrent())?.toDomain();
  }

  @override
  Future<List<GameSession>> getActiveSessions() async {
    final records = await _localDataSource.getActive();
    return records.map((record) => record.toDomain()).toList(growable: false);
  }

  @override
  Future<void> deleteSession(String id) {
    return _localDataSource.delete(id);
  }
}
