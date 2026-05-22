import 'package:freezed_annotation/freezed_annotation.dart';

part 'sudoku_puzzle.freezed.dart';
part 'sudoku_puzzle.g.dart';

enum SudokuDifficulty { easy, medium, hard, expert, master }

enum SudokuPuzzleSource { generated, dailyChallenge, imported, cached }

@freezed
abstract class SudokuPuzzle with _$SudokuPuzzle {
  const factory SudokuPuzzle({
    required String id,
    required List<int?> initialGrid,
    required List<int> solutionGrid,
    required SudokuDifficulty difficulty,
    required SudokuPuzzleSource source,
    required DateTime createdAt,
    String? seed,
    @Default(0) int rating,
    @Default(1) int generatorVersion,
    @Default(<String, Object?>{}) Map<String, Object?> metadata,
  }) = _SudokuPuzzle;

  const SudokuPuzzle._();

  factory SudokuPuzzle.fromJson(Map<String, dynamic> json) =>
      _$SudokuPuzzleFromJson(json);

  int get emptyCellCount =>
      initialGrid.where((value) => value == null || value == 0).length;

  int get givenCellCount => 81 - emptyCellCount;
}
