extension SudokuIndexExtensions on int {
  int get rowIndex => this ~/ 9;
  int get columnIndex => this % 9;
  int get boxIndex => (rowIndex ~/ 3) * 3 + (columnIndex ~/ 3);

  bool get isValidSudokuValue => this >= 1 && this <= 9;
  bool get isValidSudokuCellIndex => this >= 0 && this < 81;
}
