import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/utils/json_codec.dart';
import 'package:offline_sudoku/core/persistence/utils/persistence_id.dart';
import 'package:offline_sudoku/features/gameplay/domain/entities/game_session.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_cell.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';

part 'game_session_record.g.dart';

@collection
class GameSessionRecord {
  GameSessionRecord();

  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String sessionId;

  @Index()
  late String puzzleId;

  late String puzzleJson;
  late String cellsJson;
  late String statusName;
  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? startedAt;
  DateTime? completedAt;
  int? selectedCellIndex;
  late int elapsedSeconds;
  late bool notesModeEnabled;
  late int mistakeCount;
  late int mistakeLimit;
  late int hintCount;
  late bool isDailyChallenge;
  late String undoStackJson;
  late String redoStackJson;

  factory GameSessionRecord.fromDomain(GameSession session) {
    return GameSessionRecord()
      ..id = PersistenceId.fromString(session.id)
      ..sessionId = session.id
      ..puzzleId = session.puzzle.id
      ..puzzleJson = JsonCodec.encodeObject(session.puzzle.toJson())
      ..cellsJson = JsonCodec.encodeList(
        session.cells.map((cell) => cell.toJson()).toList(),
      )
      ..statusName = session.status.name
      ..createdAt = session.createdAt
      ..updatedAt = session.updatedAt
      ..startedAt = session.startedAt
      ..completedAt = session.completedAt
      ..selectedCellIndex = session.selectedCellIndex
      ..elapsedSeconds = session.elapsedTime.inSeconds
      ..notesModeEnabled = session.notesModeEnabled
      ..mistakeCount = session.mistakeCount
      ..mistakeLimit = session.mistakeLimit
      ..hintCount = session.hintCount
      ..isDailyChallenge = session.isDailyChallenge
      ..undoStackJson = JsonCodec.encodeList(
        session.undoStack.map((move) => move.toJson()).toList(),
      )
      ..redoStackJson = JsonCodec.encodeList(
        session.redoStack.map((move) => move.toJson()).toList(),
      );
  }

  GameSession toDomain() {
    return GameSession(
      id: sessionId,
      puzzle: SudokuPuzzle.fromJson(JsonCodec.decodeObject(puzzleJson)),
      cells: JsonCodec.decodeList(
        cellsJson,
      ).map(SudokuCell.fromJson).toList(growable: false),
      status: GameSessionStatus.values.byName(statusName),
      createdAt: createdAt,
      updatedAt: updatedAt,
      startedAt: startedAt,
      completedAt: completedAt,
      selectedCellIndex: selectedCellIndex,
      elapsedTime: Duration(seconds: elapsedSeconds),
      notesModeEnabled: notesModeEnabled,
      mistakeCount: mistakeCount,
      mistakeLimit: mistakeLimit,
      hintCount: hintCount,
      isDailyChallenge: isDailyChallenge,
      undoStack: JsonCodec.decodeList(
        undoStackJson,
      ).map(GameMove.fromJson).toList(growable: false),
      redoStack: JsonCodec.decodeList(
        redoStackJson,
      ).map(GameMove.fromJson).toList(growable: false),
    );
  }
}
