// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Achievement _$AchievementFromJson(Map<String, dynamic> json) => _Achievement(
  id: json['id'] as String,
  type: $enumDecode(_$AchievementTypeEnumMap, json['type']),
  title: json['title'] as String,
  description: json['description'] as String,
  rarity: $enumDecode(_$AchievementRarityEnumMap, json['rarity']),
  target: (json['target'] as num).toInt(),
  progress: (json['progress'] as num?)?.toInt() ?? 0,
  isUnlocked: json['isUnlocked'] as bool? ?? false,
  unlockedAt: json['unlockedAt'] == null
      ? null
      : DateTime.parse(json['unlockedAt'] as String),
  metadata:
      json['metadata'] as Map<String, dynamic>? ?? const <String, Object?>{},
);

Map<String, dynamic> _$AchievementToJson(_Achievement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$AchievementTypeEnumMap[instance.type]!,
      'title': instance.title,
      'description': instance.description,
      'rarity': _$AchievementRarityEnumMap[instance.rarity]!,
      'target': instance.target,
      'progress': instance.progress,
      'isUnlocked': instance.isUnlocked,
      'unlockedAt': instance.unlockedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

const _$AchievementTypeEnumMap = {
  AchievementType.firstWin: 'firstWin',
  AchievementType.noMistakes: 'noMistakes',
  AchievementType.noHints: 'noHints',
  AchievementType.fastSolve: 'fastSolve',
  AchievementType.winStreak: 'winStreak',
  AchievementType.dailyStreak: 'dailyStreak',
  AchievementType.difficultyComplete: 'difficultyComplete',
  AchievementType.expertWin: 'expertWin',
  AchievementType.masterWin: 'masterWin',
  AchievementType.notesMaster: 'notesMaster',
};

const _$AchievementRarityEnumMap = {
  AchievementRarity.common: 'common',
  AchievementRarity.uncommon: 'uncommon',
  AchievementRarity.rare: 'rare',
  AchievementRarity.epic: 'epic',
  AchievementRarity.legendary: 'legendary',
};
