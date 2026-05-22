import 'package:offline_sudoku/features/gameplay/domain/entities/game_session.dart';

abstract interface class GameSessionRepository {
  Future<void> saveSession(GameSession session);

  Future<GameSession?> getSession(String id);

  Future<GameSession?> getCurrentSession();

  Future<List<GameSession>> getActiveSessions();

  Future<void> deleteSession(String id);
}
