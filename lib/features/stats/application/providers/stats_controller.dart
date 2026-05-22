import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/stats/domain/entities/user_stats.dart';

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
    unawaited(ref.read(userStatsRepositoryProvider).saveStats(stats));
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
}
