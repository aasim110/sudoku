import 'package:offline_sudoku/features/stats/data/datasources/user_stats_local_data_source.dart';
import 'package:offline_sudoku/features/stats/data/models/user_stats_record.dart';
import 'package:offline_sudoku/features/stats/domain/entities/user_stats.dart';
import 'package:offline_sudoku/features/stats/domain/repositories/user_stats_repository.dart';

final class IsarUserStatsRepository implements UserStatsRepository {
  const IsarUserStatsRepository(this._localDataSource);

  final UserStatsLocalDataSource _localDataSource;

  @override
  Future<void> saveStats(UserStats stats) {
    return _localDataSource.put(UserStatsRecord.fromDomain(stats));
  }

  @override
  Future<UserStats?> getStats(String userId) async {
    return (await _localDataSource.get(userId))?.toDomain();
  }
}
