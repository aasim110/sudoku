import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/achievements/domain/entities/achievement.dart';

final achievementsControllerProvider =
    AsyncNotifierProvider<AchievementsController, List<Achievement>>(
      AchievementsController.new,
    );

final unlockedAchievementsProvider = Provider<List<Achievement>>((ref) {
  return ref.watch(
    achievementsControllerProvider.select(
      (state) => (state.asData?.value ?? const <Achievement>[])
          .where((achievement) => achievement.isUnlocked)
          .toList(growable: false),
    ),
  );
});

final achievementProgressProvider = Provider.family<double, String>((ref, id) {
  return ref.watch(
    achievementsControllerProvider.select((state) {
      final achievements = state.asData?.value ?? const <Achievement>[];
      for (final achievement in achievements) {
        if (achievement.id == id) {
          return achievement.progressRatio;
        }
      }
      return 0;
    }),
  );
});

final class AchievementsController extends AsyncNotifier<List<Achievement>> {
  @override
  Future<List<Achievement>> build() async {
    final existing = await ref
        .read(achievementRepositoryProvider)
        .getAchievements();
    if (existing.isNotEmpty) {
      return existing;
    }

    final defaults = _defaultAchievements();
    unawaited(
      ref.read(achievementRepositoryProvider).saveAchievements(defaults),
    );
    return defaults;
  }

  void upsert(Achievement achievement) {
    final achievements = [...(state.asData?.value ?? const <Achievement>[])];
    final index = achievements.indexWhere((item) => item.id == achievement.id);
    if (index == -1) {
      achievements.add(achievement);
    } else {
      achievements[index] = achievement;
    }

    state = AsyncData(List<Achievement>.unmodifiable(achievements));
    unawaited(
      ref.read(achievementRepositoryProvider).saveAchievement(achievement),
    );
  }

  void updateProgress(String id, int progress) {
    final achievements = state.asData?.value;
    if (achievements == null) {
      return;
    }

    for (final achievement in achievements) {
      if (achievement.id != id) {
        continue;
      }

      final unlocked = progress >= achievement.target;
      upsert(
        achievement.copyWith(
          progress: progress,
          isUnlocked: achievement.isUnlocked || unlocked,
          unlockedAt:
              achievement.unlockedAt ??
              (unlocked ? DateTime.now().toUtc() : null),
        ),
      );
      return;
    }
  }

  List<Achievement> _defaultAchievements() {
    return const [
      Achievement(
        id: 'first_win',
        type: AchievementType.firstWin,
        title: 'First Win',
        description: 'Complete your first Sudoku puzzle.',
        rarity: AchievementRarity.common,
        target: 1,
      ),
      Achievement(
        id: 'no_mistakes',
        type: AchievementType.noMistakes,
        title: 'Clean Board',
        description: 'Complete a puzzle without mistakes.',
        rarity: AchievementRarity.uncommon,
        target: 1,
      ),
      Achievement(
        id: 'daily_7',
        type: AchievementType.dailyStreak,
        title: 'Daily Rhythm',
        description: 'Complete 7 daily challenges in a row.',
        rarity: AchievementRarity.rare,
        target: 7,
      ),
    ];
  }
}
