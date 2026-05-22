import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_sudoku/core/serialization/duration_seconds_converter.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';

part 'daily_challenge.freezed.dart';
part 'daily_challenge.g.dart';

enum DailyChallengeStatus { locked, available, inProgress, completed, missed }

@freezed
abstract class DailyChallenge with _$DailyChallenge {
  const factory DailyChallenge({
    required String id,
    required DateTime challengeDate,
    required SudokuPuzzle puzzle,
    required DailyChallengeStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? activeSessionId,
    DateTime? startedAt,
    DateTime? completedAt,
    @NullableDurationSecondsConverter() Duration? completionTime,
    @Default(0) int mistakes,
    @Default(0) int hintsUsed,
    @Default(0) int score,
    @Default(false) bool rewardClaimed,
    @Default(1) int generatorVersion,
  }) = _DailyChallenge;

  const DailyChallenge._();

  factory DailyChallenge.fromJson(Map<String, dynamic> json) =>
      _$DailyChallengeFromJson(json);

  bool get isPlayable =>
      status == DailyChallengeStatus.available ||
      status == DailyChallengeStatus.inProgress;

  bool get isCompleted => status == DailyChallengeStatus.completed;
}
