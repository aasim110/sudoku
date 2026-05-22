import 'package:offline_sudoku/features/stats/domain/entities/user_stats.dart';

abstract interface class UserStatsRepository {
  Future<void> saveStats(UserStats stats);

  Future<UserStats?> getStats(String userId);
}
