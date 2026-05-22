import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/hint_result.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/services/sudoku_hint_engine.dart';

void main() {
  const hintEngine = ExplainableSudokuHintEngine();

  test('returns a naked single hint', () {
    final board = List<int?>.filled(81, null);
    board[0] = null;
    board[1] = 2;
    board[2] = 3;
    board[3] = 4;
    board[4] = 5;
    board[5] = 6;
    board[6] = 7;
    board[7] = 8;
    board[8] = 9;

    final hint = hintEngine.nextHint(board);

    expect(hint, isNotNull);
    expect(hint!.type, HintType.nakedSingle);
    expect(hint.cellIndex, 0);
    expect(hint.value, 1);
    expect(hint.candidates, <int>[1]);
    expect(hint.changesBoard, isFalse);
    expect(hint.explanation, contains('only one possible candidate'));
  });

  test('returns a hidden single hint', () {
    final board = List<int?>.filled(81, null);
    board[28] = 9;
    board[56] = 9;
    board[12] = 9;
    board[40] = 9;
    board[68] = 9;
    board[24] = 9;
    board[52] = 9;
    board[80] = 9;

    final hint = hintEngine.nextHint(board);

    expect(hint, isNotNull);
    expect(hint!.type, HintType.hiddenSingle);
    expect(hint.cellIndex, 0);
    expect(hint.value, 9);
    expect(hint.explanation, contains('only cell R1 C1 can contain 9'));
  });

  test('returns candidate hints for a requested cell', () {
    final board = List<int?>.filled(81, null);
    board[1] = 2;
    board[9] = 3;
    board[10] = 4;

    final hint = hintEngine.candidateHint(board, cellIndex: 0);

    expect(hint, isNotNull);
    expect(hint!.type, HintType.showCandidates);
    expect(hint.cellIndex, 0);
    expect(hint.candidates, <int>[1, 5, 6, 7, 8, 9]);
    expect(hint.affectedCellIndexes, isNotEmpty);
    expect(hint.explanation, contains('row, column, and box'));
  });

  test('returns reveal hints that change the board', () {
    final board = <int?>[
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

    final hint = hintEngine.revealCell(board, cellIndex: 2);

    expect(hint, isNotNull);
    expect(hint!.type, HintType.revealCell);
    expect(hint.cellIndex, 2);
    expect(hint.value, 4);
    expect(hint.changesBoard, isTrue);
    expect(hint.cost, 3);
  });

  test('returns null for invalid or solved boards', () {
    final invalid = List<int?>.filled(81, null);
    invalid[0] = 1;
    invalid[1] = 1;

    final solved = <int?>[
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      4,
      5,
      6,
      7,
      8,
      9,
      1,
      2,
      3,
      7,
      8,
      9,
      1,
      2,
      3,
      4,
      5,
      6,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      1,
      5,
      6,
      7,
      8,
      9,
      1,
      2,
      3,
      4,
      8,
      9,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      1,
      2,
      6,
      7,
      8,
      9,
      1,
      2,
      3,
      4,
      5,
      9,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
    ];

    expect(hintEngine.nextHint(invalid), isNull);
    expect(hintEngine.nextHint(solved), isNull);
  });
}
