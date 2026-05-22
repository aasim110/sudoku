import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/core/persistence/isar_provider.dart';
import 'package:offline_sudoku/features/achievements/data/datasources/achievement_local_data_source.dart';
import 'package:offline_sudoku/features/achievements/data/repositories/isar_achievement_repository.dart';
import 'package:offline_sudoku/features/achievements/domain/repositories/achievement_repository.dart';
import 'package:offline_sudoku/features/daily_challenge/data/datasources/daily_challenge_local_data_source.dart';
import 'package:offline_sudoku/features/daily_challenge/data/repositories/isar_daily_challenge_repository.dart';
import 'package:offline_sudoku/features/daily_challenge/domain/repositories/daily_challenge_repository.dart';
import 'package:offline_sudoku/features/gameplay/data/datasources/game_session_local_data_source.dart';
import 'package:offline_sudoku/features/gameplay/data/repositories/isar_game_session_repository.dart';
import 'package:offline_sudoku/features/gameplay/domain/repositories/game_session_repository.dart';
import 'package:offline_sudoku/features/settings/data/datasources/app_settings_local_data_source.dart';
import 'package:offline_sudoku/features/settings/data/repositories/isar_app_settings_repository.dart';
import 'package:offline_sudoku/features/settings/domain/repositories/app_settings_repository.dart';
import 'package:offline_sudoku/features/stats/data/datasources/user_stats_local_data_source.dart';
import 'package:offline_sudoku/features/stats/data/repositories/isar_user_stats_repository.dart';
import 'package:offline_sudoku/features/stats/domain/repositories/user_stats_repository.dart';
import 'package:offline_sudoku/features/sudoku_engine/data/datasources/sudoku_puzzle_local_data_source.dart';
import 'package:offline_sudoku/features/sudoku_engine/data/repositories/isar_sudoku_puzzle_repository.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/repositories/sudoku_puzzle_repository.dart';

final sudokuPuzzleLocalDataSourceProvider =
    Provider<SudokuPuzzleLocalDataSource>((ref) {
      return IsarSudokuPuzzleLocalDataSource(ref.watch(isarProvider));
    });

final sudokuPuzzleRepositoryProvider = Provider<SudokuPuzzleRepository>((ref) {
  return IsarSudokuPuzzleRepository(
    ref.watch(sudokuPuzzleLocalDataSourceProvider),
  );
});

final gameSessionLocalDataSourceProvider = Provider<GameSessionLocalDataSource>(
  (ref) {
    return IsarGameSessionLocalDataSource(ref.watch(isarProvider));
  },
);

final gameSessionRepositoryProvider = Provider<GameSessionRepository>((ref) {
  return IsarGameSessionRepository(
    ref.watch(gameSessionLocalDataSourceProvider),
  );
});

final userStatsLocalDataSourceProvider = Provider<UserStatsLocalDataSource>((
  ref,
) {
  return IsarUserStatsLocalDataSource(ref.watch(isarProvider));
});

final userStatsRepositoryProvider = Provider<UserStatsRepository>((ref) {
  return IsarUserStatsRepository(ref.watch(userStatsLocalDataSourceProvider));
});

final appSettingsLocalDataSourceProvider = Provider<AppSettingsLocalDataSource>(
  (ref) {
    return IsarAppSettingsLocalDataSource(ref.watch(isarProvider));
  },
);

final appSettingsRepositoryProvider = Provider<AppSettingsRepository>((ref) {
  return IsarAppSettingsRepository(
    ref.watch(appSettingsLocalDataSourceProvider),
  );
});

final achievementLocalDataSourceProvider = Provider<AchievementLocalDataSource>(
  (ref) {
    return IsarAchievementLocalDataSource(ref.watch(isarProvider));
  },
);

final achievementRepositoryProvider = Provider<AchievementRepository>((ref) {
  return IsarAchievementRepository(
    ref.watch(achievementLocalDataSourceProvider),
  );
});

final dailyChallengeLocalDataSourceProvider =
    Provider<DailyChallengeLocalDataSource>((ref) {
      return IsarDailyChallengeLocalDataSource(ref.watch(isarProvider));
    });

final dailyChallengeRepositoryProvider = Provider<DailyChallengeRepository>((
  ref,
) {
  return IsarDailyChallengeRepository(
    ref.watch(dailyChallengeLocalDataSourceProvider),
  );
});
