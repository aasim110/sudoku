import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/utils/json_codec.dart';
import 'package:offline_sudoku/core/persistence/utils/persistence_id.dart';
import 'package:offline_sudoku/features/achievements/domain/entities/achievement.dart';

part 'achievement_record.g.dart';

@collection
class AchievementRecord {
  AchievementRecord();

  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String achievementId;

  late String typeName;
  late String title;
  late String description;
  late String rarityName;
  late int target;
  late int progress;
  late bool isUnlocked;
  DateTime? unlockedAt;
  late String metadataJson;

  factory AchievementRecord.fromDomain(Achievement achievement) {
    return AchievementRecord()
      ..id = PersistenceId.fromString(achievement.id)
      ..achievementId = achievement.id
      ..typeName = achievement.type.name
      ..title = achievement.title
      ..description = achievement.description
      ..rarityName = achievement.rarity.name
      ..target = achievement.target
      ..progress = achievement.progress
      ..isUnlocked = achievement.isUnlocked
      ..unlockedAt = achievement.unlockedAt
      ..metadataJson = JsonCodec.encodeObject(achievement.metadata);
  }

  Achievement toDomain() {
    return Achievement(
      id: achievementId,
      type: AchievementType.values.byName(typeName),
      title: title,
      description: description,
      rarity: AchievementRarity.values.byName(rarityName),
      target: target,
      progress: progress,
      isUnlocked: isUnlocked,
      unlockedAt: unlockedAt,
      metadata: JsonCodec.decodeObject(metadataJson),
    );
  }
}
