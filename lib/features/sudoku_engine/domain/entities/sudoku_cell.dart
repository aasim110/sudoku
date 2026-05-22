import 'package:freezed_annotation/freezed_annotation.dart';

part 'sudoku_cell.freezed.dart';
part 'sudoku_cell.g.dart';

@freezed
abstract class SudokuCell with _$SudokuCell {
  const factory SudokuCell({
    required int index,
    required int row,
    required int column,
    required int box,
    required int solution,
    int? value,
    @Default(false) bool isGiven,
    @Default(<int>[]) List<int> notes,
  }) = _SudokuCell;

  const SudokuCell._();

  factory SudokuCell.empty({required int index, required int solution}) {
    return SudokuCell(
      index: index,
      row: index ~/ 9,
      column: index % 9,
      box: ((index ~/ 9) ~/ 3) * 3 + ((index % 9) ~/ 3),
      solution: solution,
    );
  }

  factory SudokuCell.given({
    required int index,
    required int value,
    required int solution,
  }) {
    return SudokuCell(
      index: index,
      row: index ~/ 9,
      column: index % 9,
      box: ((index ~/ 9) ~/ 3) * 3 + ((index % 9) ~/ 3),
      value: value,
      solution: solution,
      isGiven: true,
    );
  }

  factory SudokuCell.fromJson(Map<String, dynamic> json) =>
      _$SudokuCellFromJson(json);

  bool get isEmpty => value == null;
  bool get isFilled => value != null;
  bool get isCorrect => value == null || value == solution;
  bool get canEdit => !isGiven;
}
