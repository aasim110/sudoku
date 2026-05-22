// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyChallenge _$DailyChallengeFromJson(Map<String, dynamic> json) =>
    _DailyChallenge(
      id: json['id'] as String,
      challengeDate: DateTime.parse(json['challengeDate'] as String),
      puzzle: SudokuPuzzle.fromJson(json['puzzle'] as Map<String, dynamic>),
      status: $enumDecode(_$DailyChallengeStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      activeSessionId: json['activeSessionId'] as String?,
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      completionTime: const NullableDurationSecondsConverter().fromJson(
        (json['completionTime'] as num?)?.toInt(),
      ),
      mistakes: (json['mistakes'] as num?)?.toInt() ?? 0,
      hintsUsed: (json['hintsUsed'] as num?)?.toInt() ?? 0,
      score: (json['score'] as num?)?.toInt() ?? 0,
      rewardClaimed: json['rewardClaimed'] as bool? ?? false,
      generatorVersion: (json['generatorVersion'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$DailyChallengeToJson(_DailyChallenge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'challengeDate': instance.challengeDate.toIso8601String(),
      'puzzle': instance.puzzle,
      'status': _$DailyChallengeStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'activeSessionId': instance.activeSessionId,
      'startedAt': instance.startedAt?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'completionTime': const NullableDurationSecondsConverter().toJson(
        instance.completionTime,
      ),
      'mistakes': instance.mistakes,
      'hintsUsed': instance.hintsUsed,
      'score': instance.score,
      'rewardClaimed': instance.rewardClaimed,
      'generatorVersion': instance.generatorVersion,
    };

const _$DailyChallengeStatusEnumMap = {
  DailyChallengeStatus.locked: 'locked',
  DailyChallengeStatus.available: 'available',
  DailyChallengeStatus.inProgress: 'inProgress',
  DailyChallengeStatus.completed: 'completed',
  DailyChallengeStatus.missed: 'missed',
};
