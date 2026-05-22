import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/utils/json_codec.dart';
import 'package:offline_sudoku/core/persistence/utils/persistence_id.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';

part 'sudoku_puzzle_record.g.dart';

@collection
class SudokuPuzzleRecord {
  SudokuPuzzleRecord();

  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String puzzleId;

  late List<int> initialGrid;
  late List<int> solutionGrid;
  late String difficultyName;
  late String sourceName;
  late DateTime createdAt;
  String? seed;
  late int rating;
  late int generatorVersion;
  late String metadataJson;

  factory SudokuPuzzleRecord.fromDomain(SudokuPuzzle puzzle) {
    return SudokuPuzzleRecord()
      ..id = PersistenceId.fromString(puzzle.id)
      ..puzzleId = puzzle.id
      ..initialGrid = puzzle.initialGrid.map((value) => value ?? 0).toList()
      ..solutionGrid = puzzle.solutionGrid
      ..difficultyName = puzzle.difficulty.name
      ..sourceName = puzzle.source.name
      ..createdAt = puzzle.createdAt
      ..seed = puzzle.seed
      ..rating = puzzle.rating
      ..generatorVersion = puzzle.generatorVersion
      ..metadataJson = JsonCodec.encodeObject(puzzle.metadata);
  }

  SudokuPuzzle toDomain() {
    return SudokuPuzzle(
      id: puzzleId,
      initialGrid: initialGrid
          .map<int?>((value) => value == 0 ? null : value)
          .toList(growable: false),
      solutionGrid: List<int>.unmodifiable(solutionGrid),
      difficulty: SudokuDifficulty.values.byName(difficultyName),
      source: SudokuPuzzleSource.values.byName(sourceName),
      createdAt: createdAt,
      seed: seed,
      rating: rating,
      generatorVersion: generatorVersion,
      metadata: JsonCodec.decodeObject(metadataJson),
    );
  }
}
