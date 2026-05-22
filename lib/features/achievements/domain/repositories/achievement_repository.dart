import 'package:offline_sudoku/features/achievements/domain/entities/achievement.dart';

abstract interface class AchievementRepository {
  Future<void> saveAchievement(Achievement achievement);

  Future<void> saveAchievements(List<Achievement> achievements);

  Future<Achievement?> getAchievement(String id);

  Future<List<Achievement>> getAchievements();

  Future<List<Achievement>> getUnlockedAchievements();
}
