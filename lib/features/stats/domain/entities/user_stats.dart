import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_sudoku/core/serialization/duration_seconds_converter.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';

part 'user_stats.freezed.dart';
part 'user_stats.g.dart';

@freezed
abstract class DifficultyStats with _$DifficultyStats {
  const factory DifficultyStats({
    required SudokuDifficulty difficulty,
    @Default(0) int gamesStarted,
    @Default(0) int gamesCompleted,
    @NullableDurationSecondsConverter() Duration? bestTime,
    @DurationSecondsConverter() @Default(Duration.zero) Duration totalTime,
    @Default(0) int totalMistakes,
    @Default(0) int totalHintsUsed,
    @Default(0) int noMistakeWins,
    @Default(0) int noHintWins,
  }) = _DifficultyStats;

  const DifficultyStats._();

  factory DifficultyStats.fromJson(Map<String, dynamic> json) =>
      _$DifficultyStatsFromJson(json);

  double get completionRate {
    if (gamesStarted == 0) {
      return 0;
    }

    return gamesCompleted / gamesStarted;
  }

  Duration get averageCompletionTime {
    if (gamesCompleted == 0) {
      return Duration.zero;
    }

    return Duration(seconds: totalTime.inSeconds ~/ gamesCompleted);
  }
}

@freezed
abstract class UserStats with _$UserStats {
  const factory UserStats({
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(0) int gamesStarted,
    @Default(0) int gamesCompleted,
    @Default(0) int currentWinStreak,
    @Default(0) int longestWinStreak,
    @Default(0) int currentDailyStreak,
    @Default(0) int longestDailyStreak,
    @Default(0) int totalMistakes,
    @Default(0) int totalHintsUsed,
    @DurationSecondsConverter() @Default(Duration.zero) Duration totalPlayTime,
    @Default(<DifficultyStats>[]) List<DifficultyStats> difficultyStats,
    DateTime? lastCompletedAt,
    DateTime? lastDailyCompletedAt,
  }) = _UserStats;

  const UserStats._();

  factory UserStats.fromJson(Map<String, dynamic> json) =>
      _$UserStatsFromJson(json);

  double get completionRate {
    if (gamesStarted == 0) {
      return 0;
    }

    return gamesCompleted / gamesStarted;
  }
}
