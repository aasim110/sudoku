import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/utils/json_codec.dart';
import 'package:offline_sudoku/core/persistence/utils/persistence_id.dart';
import 'package:offline_sudoku/features/stats/domain/entities/user_stats.dart';

part 'user_stats_record.g.dart';

@collection
class UserStatsRecord {
  UserStatsRecord();

  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String userId;

  late DateTime createdAt;
  late DateTime updatedAt;
  late int gamesStarted;
  late int gamesCompleted;
  late int currentWinStreak;
  late int longestWinStreak;
  late int currentDailyStreak;
  late int longestDailyStreak;
  late int totalMistakes;
  late int totalHintsUsed;
  late int totalPlayTimeSeconds;
  late String difficultyStatsJson;
  DateTime? lastCompletedAt;
  DateTime? lastDailyCompletedAt;

  factory UserStatsRecord.fromDomain(UserStats stats) {
    return UserStatsRecord()
      ..id = PersistenceId.fromString(stats.userId)
      ..userId = stats.userId
      ..createdAt = stats.createdAt
      ..updatedAt = stats.updatedAt
      ..gamesStarted = stats.gamesStarted
      ..gamesCompleted = stats.gamesCompleted
      ..currentWinStreak = stats.currentWinStreak
      ..longestWinStreak = stats.longestWinStreak
      ..currentDailyStreak = stats.currentDailyStreak
      ..longestDailyStreak = stats.longestDailyStreak
      ..totalMistakes = stats.totalMistakes
      ..totalHintsUsed = stats.totalHintsUsed
      ..totalPlayTimeSeconds = stats.totalPlayTime.inSeconds
      ..difficultyStatsJson = JsonCodec.encodeList(
        stats.difficultyStats
            .map((difficultyStats) => difficultyStats.toJson())
            .toList(),
      )
      ..lastCompletedAt = stats.lastCompletedAt
      ..lastDailyCompletedAt = stats.lastDailyCompletedAt;
  }

  UserStats toDomain() {
    return UserStats(
      userId: userId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      gamesStarted: gamesStarted,
      gamesCompleted: gamesCompleted,
      currentWinStreak: currentWinStreak,
      longestWinStreak: longestWinStreak,
      currentDailyStreak: currentDailyStreak,
      longestDailyStreak: longestDailyStreak,
      totalMistakes: totalMistakes,
      totalHintsUsed: totalHintsUsed,
      totalPlayTime: Duration(seconds: totalPlayTimeSeconds),
      difficultyStats: JsonCodec.decodeList(
        difficultyStatsJson,
      ).map(DifficultyStats.fromJson).toList(growable: false),
      lastCompletedAt: lastCompletedAt,
      lastDailyCompletedAt: lastDailyCompletedAt,
    );
  }
}
