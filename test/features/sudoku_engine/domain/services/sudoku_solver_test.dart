import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/services/sudoku_solver.dart';

void main() {
  const solver = BacktrackingSudokuSolver();

  const puzzle = <int?>[
    5,
    3,
    null,
    null,
    7,
    null,
    null,
    null,
    null,
    6,
    null,
    null,
    1,
    9,
    5,
    null,
    null,
    null,
    null,
    9,
    8,
    null,
    null,
    null,
    null,
    6,
    null,
    8,
    null,
    null,
    null,
    6,
    null,
    null,
    null,
    3,
    4,
    null,
    null,
    8,
    null,
    3,
    null,
    null,
    1,
    7,
    null,
    null,
    null,
    2,
    null,
    null,
    null,
    6,
    null,
    6,
    null,
    null,
    null,
    null,
    2,
    8,
    null,
    null,
    null,
    null,
    4,
    1,
    9,
    null,
    null,
    5,
    null,
    null,
    null,
    null,
    8,
    null,
    null,
    7,
    9,
  ];

  const solution = <int>[
    5,
    3,
    4,
    6,
    7,
    8,
    9,
    1,
    2,
    6,
    7,
    2,
    1,
    9,
    5,
    3,
    4,
    8,
    1,
    9,
    8,
    3,
    4,
    2,
    5,
    6,
    7,
    8,
    5,
    9,
    7,
    6,
    1,
    4,
    2,
    3,
    4,
    2,
    6,
    8,
    5,
    3,
    7,
    9,
    1,
    7,
    1,
    3,
    9,
    2,
    4,
    8,
    5,
    6,
    9,
    6,
    1,
    5,
    3,
    7,
    2,
    8,
    4,
    2,
    8,
    7,
    4,
    1,
    9,
    6,
    3,
    5,
    3,
    4,
    5,
    2,
    8,
    6,
    1,
    7,
    9,
  ];

  test('solves a valid puzzle', () {
    final result = solver.solve(puzzle, requireUnique: true);

    expect(result.status, SudokuSolveStatus.solved);
    expect(result.solutionCount, 1);
    expect(result.solution, solution);
  });

  test('validates candidates for an empty cell', () {
    expect(solver.candidatesFor(puzzle, 2), <int>[1, 2, 4]);
    expect(solver.canPlace(puzzle, 2, 4), isTrue);
    expect(solver.canPlace(puzzle, 2, 5), isFalse);
  });

  test('detects invalid row duplicates', () {
    final board = List<int?>.from(puzzle);
    board[2] = 5;

    final validation = solver.validateBoard(board);

    expect(validation.status, SudokuBoardStatus.duplicateInRow);
    expect(validation.cellIndex, 2);
    expect(validation.conflictingCellIndex, 0);
    expect(validation.value, 5);
  });

  test('detects invalid values', () {
    final board = List<int?>.from(puzzle);
    board[2] = 10;

    final validation = solver.validateBoard(board);

    expect(validation.status, SudokuBoardStatus.invalidValue);
    expect(validation.cellIndex, 2);
    expect(validation.value, 10);
  });

  test('detects unsolvable valid boards', () {
    final board = List<int?>.from(puzzle);
    board[2] = 1;

    final result = solver.solve(board);

    expect(result.status, SudokuSolveStatus.unsolvable);
    expect(result.solutionCount, 0);
  });

  test('detects multiple solutions when uniqueness is required', () {
    final board = List<int?>.filled(81, null);

    final result = solver.solve(board, requireUnique: true);

    expect(result.status, SudokuSolveStatus.multipleSolutions);
    expect(result.solutionCount, 2);
    expect(result.solution, isNotNull);
  });

  test('returns invalid solve result for malformed boards', () {
    final result = solver.solve(const <int?>[1, 2, 3]);

    expect(result.status, SudokuSolveStatus.invalid);
    expect(result.validation.status, SudokuBoardStatus.invalidLength);
  });
}
