import 'package:offline_sudoku/features/achievements/data/datasources/achievement_local_data_source.dart';
import 'package:offline_sudoku/features/achievements/data/models/achievement_record.dart';
import 'package:offline_sudoku/features/achievements/domain/entities/achievement.dart';
import 'package:offline_sudoku/features/achievements/domain/repositories/achievement_repository.dart';

final class IsarAchievementRepository implements AchievementRepository {
  const IsarAchievementRepository(this._localDataSource);

  final AchievementLocalDataSource _localDataSource;

  @override
  Future<void> saveAchievement(Achievement achievement) {
    return _localDataSource.put(AchievementRecord.fromDomain(achievement));
  }

  @override
  Future<void> saveAchievements(List<Achievement> achievements) {
    return _localDataSource.putAll(
      achievements.map(AchievementRecord.fromDomain).toList(growable: false),
    );
  }

  @override
  Future<Achievement?> getAchievement(String id) async {
    return (await _localDataSource.get(id))?.toDomain();
  }

  @override
  Future<List<Achievement>> getAchievements() async {
    final records = await _localDataSource.getAll();
    records.sort(
      (left, right) => left.achievementId.compareTo(right.achievementId),
    );
    return records.map((record) => record.toDomain()).toList(growable: false);
  }

  @override
  Future<List<Achievement>> getUnlockedAchievements() async {
    final achievements = await getAchievements();
    return achievements
        .where((achievement) => achievement.isUnlocked)
        .toList(growable: false);
  }
}
