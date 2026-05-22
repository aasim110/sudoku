import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/utils/json_codec.dart';
import 'package:offline_sudoku/core/persistence/utils/persistence_id.dart';
import 'package:offline_sudoku/features/daily_challenge/domain/entities/daily_challenge.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';

part 'daily_challenge_record.g.dart';

@collection
class DailyChallengeRecord {
  DailyChallengeRecord();

  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String challengeId;

  @Index()
  late DateTime challengeDate;

  late String puzzleJson;
  late String statusName;
  late DateTime createdAt;
  late DateTime updatedAt;
  String? activeSessionId;
  DateTime? startedAt;
  DateTime? completedAt;
  int? completionTimeSeconds;
  late int mistakes;
  late int hintsUsed;
  late int score;
  late bool rewardClaimed;
  late int generatorVersion;

  factory DailyChallengeRecord.fromDomain(DailyChallenge challenge) {
    return DailyChallengeRecord()
      ..id = PersistenceId.fromString(challenge.id)
      ..challengeId = challenge.id
      ..challengeDate = challenge.challengeDate
      ..puzzleJson = JsonCodec.encodeObject(challenge.puzzle.toJson())
      ..statusName = challenge.status.name
      ..createdAt = challenge.createdAt
      ..updatedAt = challenge.updatedAt
      ..activeSessionId = challenge.activeSessionId
      ..startedAt = challenge.startedAt
      ..completedAt = challenge.completedAt
      ..completionTimeSeconds = challenge.completionTime?.inSeconds
      ..mistakes = challenge.mistakes
      ..hintsUsed = challenge.hintsUsed
      ..score = challenge.score
      ..rewardClaimed = challenge.rewardClaimed
      ..generatorVersion = challenge.generatorVersion;
  }

  DailyChallenge toDomain() {
    return DailyChallenge(
      id: challengeId,
      challengeDate: challengeDate,
      puzzle: SudokuPuzzle.fromJson(JsonCodec.decodeObject(puzzleJson)),
      status: DailyChallengeStatus.values.byName(statusName),
      createdAt: createdAt,
      updatedAt: updatedAt,
      activeSessionId: activeSessionId,
      startedAt: startedAt,
      completedAt: completedAt,
      completionTime: completionTimeSeconds == null
          ? null
          : Duration(seconds: completionTimeSeconds!),
      mistakes: mistakes,
      hintsUsed: hintsUsed,
      score: score,
      rewardClaimed: rewardClaimed,
      generatorVersion: generatorVersion,
    );
  }
}
