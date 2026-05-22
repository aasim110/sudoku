// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DifficultyStats _$DifficultyStatsFromJson(Map<String, dynamic> json) =>
    _DifficultyStats(
      difficulty: $enumDecode(_$SudokuDifficultyEnumMap, json['difficulty']),
      gamesStarted: (json['gamesStarted'] as num?)?.toInt() ?? 0,
      gamesCompleted: (json['gamesCompleted'] as num?)?.toInt() ?? 0,
      bestTime: const NullableDurationSecondsConverter().fromJson(
        (json['bestTime'] as num?)?.toInt(),
      ),
      totalTime: json['totalTime'] == null
          ? Duration.zero
          : const DurationSecondsConverter().fromJson(
              (json['totalTime'] as num).toInt(),
            ),
      totalMistakes: (json['totalMistakes'] as num?)?.toInt() ?? 0,
      totalHintsUsed: (json['totalHintsUsed'] as num?)?.toInt() ?? 0,
      noMistakeWins: (json['noMistakeWins'] as num?)?.toInt() ?? 0,
      noHintWins: (json['noHintWins'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DifficultyStatsToJson(_DifficultyStats instance) =>
    <String, dynamic>{
      'difficulty': _$SudokuDifficultyEnumMap[instance.difficulty]!,
      'gamesStarted': instance.gamesStarted,
      'gamesCompleted': instance.gamesCompleted,
      'bestTime': const NullableDurationSecondsConverter().toJson(
        instance.bestTime,
      ),
      'totalTime': const DurationSecondsConverter().toJson(instance.totalTime),
      'totalMistakes': instance.totalMistakes,
      'totalHintsUsed': instance.totalHintsUsed,
      'noMistakeWins': instance.noMistakeWins,
      'noHintWins': instance.noHintWins,
    };

const _$SudokuDifficultyEnumMap = {
  SudokuDifficulty.easy: 'easy',
  SudokuDifficulty.medium: 'medium',
  SudokuDifficulty.hard: 'hard',
  SudokuDifficulty.expert: 'expert',
  SudokuDifficulty.master: 'master',
};

_UserStats _$UserStatsFromJson(Map<String, dynamic> json) => _UserStats(
  userId: json['userId'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  gamesStarted: (json['gamesStarted'] as num?)?.toInt() ?? 0,
  gamesCompleted: (json['gamesCompleted'] as num?)?.toInt() ?? 0,
  currentWinStreak: (json['currentWinStreak'] as num?)?.toInt() ?? 0,
  longestWinStreak: (json['longestWinStreak'] as num?)?.toInt() ?? 0,
  currentDailyStreak: (json['currentDailyStreak'] as num?)?.toInt() ?? 0,
  longestDailyStreak: (json['longestDailyStreak'] as num?)?.toInt() ?? 0,
  totalMistakes: (json['totalMistakes'] as num?)?.toInt() ?? 0,
  totalHintsUsed: (json['totalHintsUsed'] as num?)?.toInt() ?? 0,
  totalPlayTime: json['totalPlayTime'] == null
      ? Duration.zero
      : const DurationSecondsConverter().fromJson(
          (json['totalPlayTime'] as num).toInt(),
        ),
  difficultyStats:
      (json['difficultyStats'] as List<dynamic>?)
          ?.map((e) => DifficultyStats.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <DifficultyStats>[],
  lastCompletedAt: json['lastCompletedAt'] == null
      ? null
      : DateTime.parse(json['lastCompletedAt'] as String),
  lastDailyCompletedAt: json['lastDailyCompletedAt'] == null
      ? null
      : DateTime.parse(json['lastDailyCompletedAt'] as String),
);

Map<String, dynamic> _$UserStatsToJson(_UserStats instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'gamesStarted': instance.gamesStarted,
      'gamesCompleted': instance.gamesCompleted,
      'currentWinStreak': instance.currentWinStreak,
      'longestWinStreak': instance.longestWinStreak,
      'currentDailyStreak': instance.currentDailyStreak,
      'longestDailyStreak': instance.longestDailyStreak,
      'totalMistakes': instance.totalMistakes,
      'totalHintsUsed': instance.totalHintsUsed,
      'totalPlayTime': const DurationSecondsConverter().toJson(
        instance.totalPlayTime,
      ),
      'difficultyStats': instance.difficultyStats,
      'lastCompletedAt': instance.lastCompletedAt?.toIso8601String(),
      'lastDailyCompletedAt': instance.lastDailyCompletedAt?.toIso8601String(),
    };
