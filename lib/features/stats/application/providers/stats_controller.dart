import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/gameplay/domain/entities/game_session.dart';
import 'package:offline_sudoku/features/stats/domain/entities/user_stats.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';

final statsControllerProvider =
    AsyncNotifierProvider<StatsController, UserStats>(StatsController.new);

final gamesCompletedProvider = Provider<int>((ref) {
  return ref.watch(
    statsControllerProvider.select(
      (state) => state.asData?.value.gamesCompleted ?? 0,
    ),
  );
});

final currentWinStreakProvider = Provider<int>((ref) {
  return ref.watch(
    statsControllerProvider.select(
      (state) => state.asData?.value.currentWinStreak ?? 0,
    ),
  );
});

final completionRateProvider = Provider<double>((ref) {
  return ref.watch(
    statsControllerProvider.select(
      (state) => state.asData?.value.completionRate ?? 0,
    ),
  );
});

final class StatsController extends AsyncNotifier<UserStats> {
  static const userId = 'local_user';

  @override
  Future<UserStats> build() async {
    final existing = await ref
        .read(userStatsRepositoryProvider)
        .getStats(userId);
    if (existing != null) {
      return existing;
    }

    final now = DateTime.now().toUtc();
    final stats = UserStats(userId: userId, createdAt: now, updatedAt: now);
    await ref.read(userStatsRepositoryProvider).saveStats(stats);
    return stats;
  }

  void updateStats(UserStats Function(UserStats stats) update) {
    final current = state.asData?.value;
    if (current == null) {
      return;
    }

    final updated = update(current).copyWith(updatedAt: DateTime.now().toUtc());
    state = AsyncData(updated);
    unawaited(ref.read(userStatsRepositoryProvider).saveStats(updated));
  }

  Future<void> recordGameStarted(SudokuDifficulty difficulty) async {
    final current = state.asData?.value;
    if (current == null) {
      return;
    }

    final updated = current.copyWith(
      gamesStarted: current.gamesStarted + 1,
      difficultyStats: _upsertDifficultyStats(
        current.difficultyStats,
        difficulty,
        (stats) => stats.copyWith(gamesStarted: stats.gamesStarted + 1),
      ),
      updatedAt: DateTime.now().toUtc(),
    );

    state = AsyncData(updated);
    await ref.read(userStatsRepositoryProvider).saveStats(updated);
  }

  Future<void> recordGameCompleted(GameSession session) async {
    final current = state.asData?.value;
    if (current == null) {
      return;
    }

    final now = DateTime.now().toUtc();
    final difficulty = session.puzzle.difficulty;
    final elapsed = session.elapsedTime;
    final nextWinStreak = current.currentWinStreak + 1;

    final updated = current.copyWith(
      gamesCompleted: current.gamesCompleted + 1,
      currentWinStreak: nextWinStreak,
      longestWinStreak: nextWinStreak > current.longestWinStreak
          ? nextWinStreak
          : current.longestWinStreak,
      totalMistakes: current.totalMistakes + session.mistakeCount,
      totalHintsUsed: current.totalHintsUsed + session.hintCount,
      totalPlayTime: current.totalPlayTime + elapsed,
      lastCompletedAt: now,
      difficultyStats: _upsertDifficultyStats(
        current.difficultyStats,
        difficulty,
        (stats) => stats.copyWith(
          gamesCompleted: stats.gamesCompleted + 1,
          bestTime: stats.bestTime == null || elapsed < stats.bestTime!
              ? elapsed
              : stats.bestTime,
          totalTime: stats.totalTime + elapsed,
          totalMistakes: stats.totalMistakes + session.mistakeCount,
          totalHintsUsed: stats.totalHintsUsed + session.hintCount,
          noMistakeWins:
              stats.noMistakeWins + (session.mistakeCount == 0 ? 1 : 0),
          noHintWins: stats.noHintWins + (session.hintCount == 0 ? 1 : 0),
        ),
      ),
      updatedAt: now,
    );

    state = AsyncData(updated);
    await ref.read(userStatsRepositoryProvider).saveStats(updated);
  }

  List<DifficultyStats> _upsertDifficultyStats(
    List<DifficultyStats> items,
    SudokuDifficulty difficulty,
    DifficultyStats Function(DifficultyStats stats) update,
  ) {
    final next = [...items];
    final index = next.indexWhere((stats) => stats.difficulty == difficulty);
    final current = index == -1
        ? DifficultyStats(difficulty: difficulty)
        : next[index];
    final updated = update(current);

    if (index == -1) {
      next.add(updated);
    } else {
      next[index] = updated;
    }

    return List<DifficultyStats>.unmodifiable(next);
  }
}
