import 'package:freezed_annotation/freezed_annotation.dart';

part 'achievement.freezed.dart';
part 'achievement.g.dart';

enum AchievementType {
  firstWin,
  noMistakes,
  noHints,
  fastSolve,
  winStreak,
  dailyStreak,
  difficultyComplete,
  expertWin,
  masterWin,
  notesMaster,
}

enum AchievementRarity { common, uncommon, rare, epic, legendary }

@freezed
abstract class Achievement with _$Achievement {
  const factory Achievement({
    required String id,
    required AchievementType type,
    required String title,
    required String description,
    required AchievementRarity rarity,
    required int target,
    @Default(0) int progress,
    @Default(false) bool isUnlocked,
    DateTime? unlockedAt,
    @Default(<String, Object?>{}) Map<String, Object?> metadata,
  }) = _Achievement;

  const Achievement._();

  factory Achievement.fromJson(Map<String, dynamic> json) =>
      _$AchievementFromJson(json);

  double get progressRatio {
    if (target <= 0) {
      return isUnlocked ? 1 : 0;
    }

    return (progress / target).clamp(0, 1).toDouble();
  }
}
