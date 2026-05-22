enum SudokuBoardStatus {
  valid,
  invalidLength,
  invalidValue,
  duplicateInRow,
  duplicateInColumn,
  duplicateInBox,
}

enum SudokuSolveStatus { solved, invalid, unsolvable, multipleSolutions }

final class SudokuValidationResult {
  const SudokuValidationResult._({
    required this.status,
    this.cellIndex,
    this.conflictingCellIndex,
    this.value,
  });

  const SudokuValidationResult.valid()
    : this._(status: SudokuBoardStatus.valid);

  const SudokuValidationResult.invalidLength()
    : this._(status: SudokuBoardStatus.invalidLength);

  const SudokuValidationResult.invalidValue({
    required int cellIndex,
    required int value,
  }) : this._(
         status: SudokuBoardStatus.invalidValue,
         cellIndex: cellIndex,
         value: value,
       );

  const SudokuValidationResult.duplicate({
    required SudokuBoardStatus status,
    required int cellIndex,
    required int conflictingCellIndex,
    required int value,
  }) : this._(
         status: status,
         cellIndex: cellIndex,
         conflictingCellIndex: conflictingCellIndex,
         value: value,
       );

  final SudokuBoardStatus status;
  final int? cellIndex;
  final int? conflictingCellIndex;
  final int? value;

  bool get isValid => status == SudokuBoardStatus.valid;
}

final class SudokuSolveResult {
  const SudokuSolveResult({
    required this.status,
    required this.validation,
    required this.solutionCount,
    this.solution,
  });

  final SudokuSolveStatus status;
  final SudokuValidationResult validation;
  final int solutionCount;
  final List<int>? solution;

  bool get isSolved => status == SudokuSolveStatus.solved;
  bool get isInvalid => status == SudokuSolveStatus.invalid;
  bool get isUnsolvable => status == SudokuSolveStatus.unsolvable;
  bool get hasMultipleSolutions =>
      status == SudokuSolveStatus.multipleSolutions;
}

abstract interface class SudokuSolver {
  SudokuValidationResult validateBoard(List<int?> board);

  SudokuSolveResult solve(List<int?> board, {bool requireUnique = false});

  int countSolutions(List<int?> board, {int limit = 2});

  List<int> candidatesFor(List<int?> board, int cellIndex);

  bool canPlace(List<int?> board, int cellIndex, int value);
}

final class BacktrackingSudokuSolver implements SudokuSolver {
  const BacktrackingSudokuSolver();

  static const int boardSize = 81;
  static const int sideLength = 9;
  static const int boxLength = 3;
  static const int allCandidatesMask = 0x3FE;

  @override
  SudokuValidationResult validateBoard(List<int?> board) {
    if (board.length != boardSize) {
      return const SudokuValidationResult.invalidLength();
    }

    final rowMasks = List<int>.filled(sideLength, 0);
    final columnMasks = List<int>.filled(sideLength, 0);
    final boxMasks = List<int>.filled(sideLength, 0);
    final rowOwners = List<int>.filled(sideLength * 10, -1);
    final columnOwners = List<int>.filled(sideLength * 10, -1);
    final boxOwners = List<int>.filled(sideLength * 10, -1);

    for (var index = 0; index < boardSize; index++) {
      final value = board[index];
      if (value == null || value == 0) {
        continue;
      }

      if (value < 1 || value > 9) {
        return SudokuValidationResult.invalidValue(
          cellIndex: index,
          value: value,
        );
      }

      final row = _rowOf(index);
      final column = _columnOf(index);
      final box = _boxOf(row, column);
      final bit = _bitFor(value);

      if ((rowMasks[row] & bit) != 0) {
        return SudokuValidationResult.duplicate(
          status: SudokuBoardStatus.duplicateInRow,
          cellIndex: index,
          conflictingCellIndex: rowOwners[(row * 10) + value],
          value: value,
        );
      }

      if ((columnMasks[column] & bit) != 0) {
        return SudokuValidationResult.duplicate(
          status: SudokuBoardStatus.duplicateInColumn,
          cellIndex: index,
          conflictingCellIndex: columnOwners[(column * 10) + value],
          value: value,
        );
      }

      if ((boxMasks[box] & bit) != 0) {
        return SudokuValidationResult.duplicate(
          status: SudokuBoardStatus.duplicateInBox,
          cellIndex: index,
          conflictingCellIndex: boxOwners[(box * 10) + value],
          value: value,
        );
      }

      rowMasks[row] |= bit;
      columnMasks[column] |= bit;
      boxMasks[box] |= bit;
      rowOwners[(row * 10) + value] = index;
      columnOwners[(column * 10) + value] = index;
      boxOwners[(box * 10) + value] = index;
    }

    return const SudokuValidationResult.valid();
  }

  @override
  SudokuSolveResult solve(List<int?> board, {bool requireUnique = false}) {
    final validation = validateBoard(board);
    if (!validation.isValid) {
      return SudokuSolveResult(
        status: SudokuSolveStatus.invalid,
        validation: validation,
        solutionCount: 0,
      );
    }

    final state = _SolverState.fromBoard(board);
    final maxSolutions = requireUnique ? 2 : 1;
    final result = _search(state, maxSolutions: maxSolutions);

    if (result.solutionCount == 0) {
      return SudokuSolveResult(
        status: SudokuSolveStatus.unsolvable,
        validation: validation,
        solutionCount: 0,
      );
    }

    if (requireUnique && result.solutionCount > 1) {
      return SudokuSolveResult(
        status: SudokuSolveStatus.multipleSolutions,
        validation: validation,
        solutionCount: result.solutionCount,
        solution: result.firstSolution,
      );
    }

    return SudokuSolveResult(
      status: SudokuSolveStatus.solved,
      validation: validation,
      solutionCount: result.solutionCount,
      solution: result.firstSolution,
    );
  }

  @override
  int countSolutions(List<int?> board, {int limit = 2}) {
    if (limit < 1) {
      throw ArgumentError.value(limit, 'limit', 'Must be at least 1.');
    }

    final validation = validateBoard(board);
    if (!validation.isValid) {
      return 0;
    }

    return _search(
      _SolverState.fromBoard(board),
      maxSolutions: limit,
    ).solutionCount;
  }

  @override
  List<int> candidatesFor(List<int?> board, int cellIndex) {
    _assertCellIndex(cellIndex);

    final validation = validateBoard(board);
    if (!validation.isValid) {
      return const <int>[];
    }

    final value = board[cellIndex];
    if (value != null && value != 0) {
      return const <int>[];
    }

    final state = _SolverState.fromBoard(board);
    return _valuesFromMask(state.candidateMaskAt(cellIndex));
  }

  @override
  bool canPlace(List<int?> board, int cellIndex, int value) {
    _assertCellIndex(cellIndex);
    _assertValue(value);

    if (board.length != boardSize) {
      return false;
    }

    final currentValue = board[cellIndex];
    if (currentValue != null && currentValue != 0 && currentValue != value) {
      return false;
    }

    for (var index = 0; index < boardSize; index++) {
      if (index == cellIndex || board[index] != value) {
        continue;
      }

      if (_rowOf(index) == _rowOf(cellIndex) ||
          _columnOf(index) == _columnOf(cellIndex) ||
          _boxOfIndex(index) == _boxOfIndex(cellIndex)) {
        return false;
      }
    }

    return true;
  }

  _SearchResult _search(_SolverState state, {required int maxSolutions}) {
    var solutionCount = 0;
    List<int>? firstSolution;

    void backtrack() {
      if (solutionCount >= maxSolutions) {
        return;
      }

      final nextCell = state.findBestEmptyCell();
      if (nextCell == _SolverState.solvedMarker) {
        solutionCount++;
        firstSolution ??= state.grid.toList(growable: false);
        return;
      }

      if (nextCell == _SolverState.deadEndMarker) {
        return;
      }

      final mask = state.candidateMaskAt(nextCell);
      var remaining = mask;
      while (remaining != 0 && solutionCount < maxSolutions) {
        final bit = remaining & -remaining;
        final value = _valueFromBit(bit);

        state.place(nextCell, value);
        backtrack();
        state.clear(nextCell, value);

        remaining &= ~bit;
      }
    }

    backtrack();

    return _SearchResult(
      solutionCount: solutionCount,
      firstSolution: firstSolution,
    );
  }

  static int _rowOf(int index) => index ~/ sideLength;

  static int _columnOf(int index) => index % sideLength;

  static int _boxOfIndex(int index) => _boxOf(_rowOf(index), _columnOf(index));

  static int _boxOf(int row, int column) {
    return ((row ~/ boxLength) * boxLength) + (column ~/ boxLength);
  }

  static int _bitFor(int value) => 1 << value;

  static int _valueFromBit(int bit) {
    return bit.bitLength - 1;
  }

  static List<int> _valuesFromMask(int mask) {
    final values = <int>[];
    var remaining = mask;

    while (remaining != 0) {
      final bit = remaining & -remaining;
      values.add(_valueFromBit(bit));
      remaining &= ~bit;
    }

    return values;
  }

  static void _assertCellIndex(int cellIndex) {
    if (cellIndex < 0 || cellIndex >= boardSize) {
      throw RangeError.range(cellIndex, 0, boardSize - 1, 'cellIndex');
    }
  }

  static void _assertValue(int value) {
    if (value < 1 || value > 9) {
      throw RangeError.range(value, 1, 9, 'value');
    }
  }
}

final class _SolverState {
  _SolverState({
    required this.grid,
    required this.rowMasks,
    required this.columnMasks,
    required this.boxMasks,
  });

  factory _SolverState.fromBoard(List<int?> board) {
    final grid = List<int>.filled(BacktrackingSudokuSolver.boardSize, 0);
    final rowMasks = List<int>.filled(BacktrackingSudokuSolver.sideLength, 0);
    final columnMasks = List<int>.filled(
      BacktrackingSudokuSolver.sideLength,
      0,
    );
    final boxMasks = List<int>.filled(BacktrackingSudokuSolver.sideLength, 0);

    for (var index = 0; index < BacktrackingSudokuSolver.boardSize; index++) {
      final value = board[index] ?? 0;
      grid[index] = value;

      if (value == 0) {
        continue;
      }

      final row = BacktrackingSudokuSolver._rowOf(index);
      final column = BacktrackingSudokuSolver._columnOf(index);
      final box = BacktrackingSudokuSolver._boxOf(row, column);
      final bit = BacktrackingSudokuSolver._bitFor(value);

      rowMasks[row] |= bit;
      columnMasks[column] |= bit;
      boxMasks[box] |= bit;
    }

    return _SolverState(
      grid: grid,
      rowMasks: rowMasks,
      columnMasks: columnMasks,
      boxMasks: boxMasks,
    );
  }

  static const solvedMarker = -1;
  static const deadEndMarker = -2;

  final List<int> grid;
  final List<int> rowMasks;
  final List<int> columnMasks;
  final List<int> boxMasks;

  int findBestEmptyCell() {
    var bestIndex = solvedMarker;
    var bestCandidateCount = 10;

    for (var index = 0; index < BacktrackingSudokuSolver.boardSize; index++) {
      if (grid[index] != 0) {
        continue;
      }

      final mask = candidateMaskAt(index);
      final count = _bitCount(mask);

      if (count == 0) {
        return deadEndMarker;
      }

      if (count < bestCandidateCount) {
        bestCandidateCount = count;
        bestIndex = index;

        if (count == 1) {
          return bestIndex;
        }
      }
    }

    return bestIndex;
  }

  int candidateMaskAt(int index) {
    final row = BacktrackingSudokuSolver._rowOf(index);
    final column = BacktrackingSudokuSolver._columnOf(index);
    final box = BacktrackingSudokuSolver._boxOf(row, column);
    final usedMask = rowMasks[row] | columnMasks[column] | boxMasks[box];

    return BacktrackingSudokuSolver.allCandidatesMask & ~usedMask;
  }

  void place(int index, int value) {
    final row = BacktrackingSudokuSolver._rowOf(index);
    final column = BacktrackingSudokuSolver._columnOf(index);
    final box = BacktrackingSudokuSolver._boxOf(row, column);
    final bit = BacktrackingSudokuSolver._bitFor(value);

    grid[index] = value;
    rowMasks[row] |= bit;
    columnMasks[column] |= bit;
    boxMasks[box] |= bit;
  }

  void clear(int index, int value) {
    final row = BacktrackingSudokuSolver._rowOf(index);
    final column = BacktrackingSudokuSolver._columnOf(index);
    final box = BacktrackingSudokuSolver._boxOf(row, column);
    final bit = BacktrackingSudokuSolver._bitFor(value);

    grid[index] = 0;
    rowMasks[row] &= ~bit;
    columnMasks[column] &= ~bit;
    boxMasks[box] &= ~bit;
  }

  int _bitCount(int value) {
    var count = 0;
    var remaining = value;

    while (remaining != 0) {
      remaining &= remaining - 1;
      count++;
    }

    return count;
  }
}

final class _SearchResult {
  const _SearchResult({
    required this.solutionCount,
    required this.firstSolution,
  });

  final int solutionCount;
  final List<int>? firstSolution;
}
