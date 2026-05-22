import 'package:offline_sudoku/features/sudoku_engine/domain/entities/hint_result.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/services/sudoku_solver.dart';

abstract interface class SudokuHintEngine {
  HintResult? nextHint(List<int?> board);

  HintResult? candidateHint(List<int?> board, {int? cellIndex});

  HintResult? revealCell(List<int?> board, {int? cellIndex});
}

final class ExplainableSudokuHintEngine implements SudokuHintEngine {
  const ExplainableSudokuHintEngine({
    SudokuSolver solver = const BacktrackingSudokuSolver(),
  }) : _solver = solver;

  final SudokuSolver _solver;

  @override
  HintResult? nextHint(List<int?> board) {
    final context = _HintContext.tryCreate(board, _solver);
    if (context == null || context.isSolved) {
      return null;
    }

    return _findNakedSingle(context) ??
        _findHiddenSingle(context) ??
        candidateHint(board) ??
        revealCell(board);
  }

  @override
  HintResult? candidateHint(List<int?> board, {int? cellIndex}) {
    final context = _HintContext.tryCreate(board, _solver);
    if (context == null || context.isSolved) {
      return null;
    }

    final targetIndex = cellIndex ?? context.bestCandidateCellIndex;
    if (targetIndex == null || !context.isEmpty(targetIndex)) {
      return null;
    }

    final candidates = context.candidatesByCell[targetIndex]!;
    if (candidates.isEmpty) {
      return null;
    }

    return HintResult(
      type: HintType.showCandidates,
      title: 'Candidate hint',
      explanation:
          'Cell ${_cellLabel(targetIndex)} can only contain ${_formatValues(candidates)} based on its row, column, and box.',
      cellIndex: targetIndex,
      candidates: candidates,
      affectedCellIndexes: _peersFor(targetIndex),
      cost: 1,
    );
  }

  @override
  HintResult? revealCell(List<int?> board, {int? cellIndex}) {
    final context = _HintContext.tryCreate(board, _solver);
    if (context == null || context.isSolved) {
      return null;
    }

    final targetIndex = cellIndex ?? context.bestCandidateCellIndex;
    if (targetIndex == null || !context.isEmpty(targetIndex)) {
      return null;
    }

    final value = context.solution[targetIndex];

    return HintResult(
      type: HintType.revealCell,
      title: 'Reveal cell',
      explanation:
          'Cell ${_cellLabel(targetIndex)} is $value in the solved puzzle.',
      cellIndex: targetIndex,
      value: value,
      candidates: context.candidatesByCell[targetIndex] ?? const <int>[],
      affectedCellIndexes: _peersFor(targetIndex),
      cost: 3,
      changesBoard: true,
    );
  }

  HintResult? _findNakedSingle(_HintContext context) {
    for (final entry in context.candidatesByCell.entries) {
      final candidates = entry.value;
      if (candidates.length != 1) {
        continue;
      }

      final cellIndex = entry.key;
      final value = candidates.single;

      return HintResult(
        type: HintType.nakedSingle,
        title: 'Naked single',
        explanation:
            'Cell ${_cellLabel(cellIndex)} has only one possible candidate: $value.',
        cellIndex: cellIndex,
        value: value,
        candidates: candidates,
        affectedCellIndexes: _peersFor(cellIndex),
        cost: 1,
      );
    }

    return null;
  }

  HintResult? _findHiddenSingle(_HintContext context) {
    for (final unit in _allUnits) {
      for (var value = 1; value <= 9; value++) {
        final possibleCells = <int>[];

        for (final cellIndex in unit.indexes) {
          final candidates = context.candidatesByCell[cellIndex];
          if (candidates == null || !candidates.contains(value)) {
            continue;
          }

          possibleCells.add(cellIndex);
        }

        if (possibleCells.length != 1) {
          continue;
        }

        final cellIndex = possibleCells.single;

        return HintResult(
          type: HintType.hiddenSingle,
          title: 'Hidden single',
          explanation:
              'In ${unit.label}, only cell ${_cellLabel(cellIndex)} can contain $value.',
          cellIndex: cellIndex,
          value: value,
          candidates: context.candidatesByCell[cellIndex]!,
          affectedCellIndexes: unit.indexes,
          cost: 1,
        );
      }
    }

    return null;
  }

  static String _cellLabel(int index) {
    final row = (index ~/ 9) + 1;
    final column = (index % 9) + 1;
    return 'R$row C$column';
  }

  static String _formatValues(List<int> values) {
    if (values.length == 1) {
      return values.single.toString();
    }

    final prefix = values.take(values.length - 1).join(', ');
    return '$prefix, or ${values.last}';
  }

  static List<int> _peersFor(int index) {
    final row = index ~/ 9;
    final column = index % 9;
    final boxRow = (row ~/ 3) * 3;
    final boxColumn = (column ~/ 3) * 3;
    final peers = <int>{};

    for (var offset = 0; offset < 9; offset++) {
      peers.add((row * 9) + offset);
      peers.add((offset * 9) + column);
    }

    for (var rowOffset = 0; rowOffset < 3; rowOffset++) {
      for (var columnOffset = 0; columnOffset < 3; columnOffset++) {
        peers.add(((boxRow + rowOffset) * 9) + boxColumn + columnOffset);
      }
    }

    peers.remove(index);
    final sorted = peers.toList(growable: false)..sort();
    return sorted;
  }

  static final List<_Unit> _allUnits = List<_Unit>.unmodifiable([
    for (var row = 0; row < 9; row++)
      _Unit(
        label: 'row ${row + 1}',
        indexes: List<int>.unmodifiable([
          for (var column = 0; column < 9; column++) (row * 9) + column,
        ]),
      ),
    for (var column = 0; column < 9; column++)
      _Unit(
        label: 'column ${column + 1}',
        indexes: List<int>.unmodifiable([
          for (var row = 0; row < 9; row++) (row * 9) + column,
        ]),
      ),
    for (var box = 0; box < 9; box++)
      _Unit(
        label: 'box ${box + 1}',
        indexes: List<int>.unmodifiable([
          for (var rowOffset = 0; rowOffset < 3; rowOffset++)
            for (var columnOffset = 0; columnOffset < 3; columnOffset++)
              (((box ~/ 3) * 3 + rowOffset) * 9) +
                  ((box % 3) * 3) +
                  columnOffset,
        ]),
      ),
  ]);
}

final class _HintContext {
  const _HintContext({
    required this.board,
    required this.solution,
    required this.candidatesByCell,
  });

  final List<int?> board;
  final List<int> solution;
  final Map<int, List<int>> candidatesByCell;

  static _HintContext? tryCreate(List<int?> board, SudokuSolver solver) {
    final validation = solver.validateBoard(board);
    if (!validation.isValid) {
      return null;
    }

    final solveResult = solver.solve(board);
    final solution = solveResult.solution;
    if (solveResult.status != SudokuSolveStatus.solved || solution == null) {
      return null;
    }

    final candidatesByCell = <int, List<int>>{};
    for (var index = 0; index < board.length; index++) {
      final value = board[index];
      if (value != null && value != 0) {
        continue;
      }

      candidatesByCell[index] = solver.candidatesFor(board, index);
    }

    return _HintContext(
      board: List<int?>.unmodifiable(board),
      solution: List<int>.unmodifiable(solution),
      candidatesByCell: Map<int, List<int>>.unmodifiable(candidatesByCell),
    );
  }

  bool get isSolved => candidatesByCell.isEmpty;

  int? get bestCandidateCellIndex {
    if (candidatesByCell.isEmpty) {
      return null;
    }

    return candidatesByCell.entries.reduce((best, entry) {
      final bestLength = best.value.length;
      final entryLength = entry.value.length;

      if (entryLength < bestLength) {
        return entry;
      }
      if (entryLength == bestLength && entry.key < best.key) {
        return entry;
      }

      return best;
    }).key;
  }

  bool isEmpty(int index) {
    final value = board[index];
    return value == null || value == 0;
  }
}

final class _Unit {
  const _Unit({required this.label, required this.indexes});

  final String label;
  final List<int> indexes;
}
