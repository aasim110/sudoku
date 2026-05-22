import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_sudoku/core/serialization/duration_seconds_converter.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/hint_result.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_cell.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';

part 'game_session.freezed.dart';
part 'game_session.g.dart';

enum GameSessionStatus {
  notStarted,
  playing,
  paused,
  completed,
  failed,
  abandoned,
}

enum GameMoveType {
  placeNumber,
  eraseNumber,
  addNote,
  removeNote,
  clearNotes,
  applyHint,
}

@freezed
abstract class GameMove with _$GameMove {
  const factory GameMove({
    required String id,
    required GameMoveType type,
    required int cellIndex,
    required DateTime createdAt,
    int? previousValue,
    int? nextValue,
    @Default(<int>[]) List<int> previousNotes,
    @Default(<int>[]) List<int> nextNotes,
    HintResult? hint,
  }) = _GameMove;

  factory GameMove.fromJson(Map<String, dynamic> json) =>
      _$GameMoveFromJson(json);
}

@freezed
abstract class GameSession with _$GameSession {
  const factory GameSession({
    required String id,
    required SudokuPuzzle puzzle,
    required List<SudokuCell> cells,
    required GameSessionStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? startedAt,
    DateTime? completedAt,
    int? selectedCellIndex,
    @DurationSecondsConverter() @Default(Duration.zero) Duration elapsedTime,
    @Default(false) bool notesModeEnabled,
    @Default(0) int mistakeCount,
    @Default(3) int mistakeLimit,
    @Default(0) int hintCount,
    @Default(false) bool isDailyChallenge,
    @Default(<GameMove>[]) List<GameMove> undoStack,
    @Default(<GameMove>[]) List<GameMove> redoStack,
  }) = _GameSession;

  const GameSession._();

  factory GameSession.fromJson(Map<String, dynamic> json) =>
      _$GameSessionFromJson(json);

  bool get isActive =>
      status == GameSessionStatus.playing || status == GameSessionStatus.paused;

  bool get isCompleted => status == GameSessionStatus.completed;
  bool get hasFailed => status == GameSessionStatus.failed;
  bool get canUndo => undoStack.isNotEmpty;
  bool get canRedo => redoStack.isNotEmpty;

  int get filledCellCount => cells.where((cell) => cell.isFilled).length;
  double get completionRatio => filledCellCount / 81;
}
