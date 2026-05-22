import 'dart:math';

import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/services/sudoku_solver.dart';

abstract interface class SudokuPuzzleGenerator {
  SudokuPuzzle generate({
    required SudokuDifficulty difficulty,
    String? seed,
    DateTime? createdAt,
  });

  List<int> generateSolvedBoard({String? seed});
}

final class SudokuGenerationProfile {
  const SudokuGenerationProfile({
    required this.difficulty,
    required this.minGivens,
    required this.maxGivens,
    required this.maxBoardAttempts,
    required this.maxRemovalPasses,
    required this.rating,
    this.symmetricRemoval = true,
  });

  final SudokuDifficulty difficulty;
  final int minGivens;
  final int maxGivens;
  final int maxBoardAttempts;
  final int maxRemovalPasses;
  final int rating;
  final bool symmetricRemoval;

  int targetGivens(Random random) {
    return minGivens + random.nextInt((maxGivens - minGivens) + 1);
  }
}

final class BacktrackingSudokuGenerator implements SudokuPuzzleGenerator {
  BacktrackingSudokuGenerator({
    SudokuSolver solver = const BacktrackingSudokuSolver(),
  }) : _solver = solver;

  static const int generatorVersion = 1;

  static const Map<SudokuDifficulty, SudokuGenerationProfile> profiles = {
    SudokuDifficulty.easy: SudokuGenerationProfile(
      difficulty: SudokuDifficulty.easy,
      minGivens: 40,
      maxGivens: 45,
      maxBoardAttempts: 3,
      maxRemovalPasses: 2,
      rating: 100,
    ),
    SudokuDifficulty.medium: SudokuGenerationProfile(
      difficulty: SudokuDifficulty.medium,
      minGivens: 34,
      maxGivens: 39,
      maxBoardAttempts: 4,
      maxRemovalPasses: 3,
      rating: 300,
    ),
    SudokuDifficulty.hard: SudokuGenerationProfile(
      difficulty: SudokuDifficulty.hard,
      minGivens: 30,
      maxGivens: 33,
      maxBoardAttempts: 5,
      maxRemovalPasses: 4,
      rating: 600,
    ),
    SudokuDifficulty.expert: SudokuGenerationProfile(
      difficulty: SudokuDifficulty.expert,
      minGivens: 26,
      maxGivens: 29,
      maxBoardAttempts: 7,
      maxRemovalPasses: 5,
      rating: 900,
    ),
    SudokuDifficulty.master: SudokuGenerationProfile(
      difficulty: SudokuDifficulty.master,
      minGivens: 24,
      maxGivens: 26,
      maxBoardAttempts: 10,
      maxRemovalPasses: 6,
      rating: 1200,
    ),
  };

  final SudokuSolver _solver;

  @override
  SudokuPuzzle generate({
    required SudokuDifficulty difficulty,
    String? seed,
    DateTime? createdAt,
  }) {
    final normalizedSeed = _normalizeSeed(seed, difficulty);
    final profile = profiles[difficulty]!;
    final random = Random(_stableSeed(normalizedSeed));

    List<int>? bestSolution;
    List<int?>? bestPuzzle;
    var bestGivenCount = BacktrackingSudokuSolver.boardSize + 1;

    for (var attempt = 0; attempt < profile.maxBoardAttempts; attempt++) {
      final solution = _generateSolvedBoard(random);
      final targetGivens = profile.targetGivens(random);
      final puzzle = _removeCells(
        solution: solution,
        targetGivens: targetGivens,
        profile: profile,
        random: random,
      );
      final givenCount = _givenCount(puzzle);

      if (givenCount < bestGivenCount) {
        bestSolution = solution;
        bestPuzzle = puzzle;
        bestGivenCount = givenCount;
      }

      if (givenCount <= profile.maxGivens) {
        break;
      }
    }

    final solution = bestSolution;
    final puzzle = bestPuzzle;
    if (solution == null || puzzle == null) {
      throw StateError('Unable to generate a Sudoku puzzle.');
    }

    final validation = _solver.solve(puzzle, requireUnique: true);
    if (validation.status != SudokuSolveStatus.solved) {
      throw StateError(
        'Generated puzzle failed uniqueness validation: ${validation.status}.',
      );
    }

    return SudokuPuzzle(
      id: _puzzleId(normalizedSeed, difficulty),
      initialGrid: List<int?>.unmodifiable(puzzle),
      solutionGrid: List<int>.unmodifiable(solution),
      difficulty: difficulty,
      source: SudokuPuzzleSource.generated,
      createdAt: createdAt ?? DateTime.now().toUtc(),
      seed: normalizedSeed,
      rating: profile.rating,
      generatorVersion: generatorVersion,
      metadata: {
        'givenCount': _givenCount(puzzle),
        'emptyCount': BacktrackingSudokuSolver.boardSize - _givenCount(puzzle),
        'minGivens': profile.minGivens,
        'maxGivens': profile.maxGivens,
        'symmetricRemoval': profile.symmetricRemoval,
      },
    );
  }

  @override
  List<int> generateSolvedBoard({String? seed}) {
    final random = Random(_stableSeed(seed ?? 'solved-board'));
    return List<int>.unmodifiable(_generateSolvedBoard(random));
  }

  List<int> _generateSolvedBoard(Random random) {
    final state = _GenerationState.empty();
    final solved = _fillCell(state, random);

    if (!solved) {
      throw StateError('Unable to generate a solved Sudoku board.');
    }

    return state.grid.toList(growable: false);
  }

  bool _fillCell(_GenerationState state, Random random) {
    final nextCell = state.findBestEmptyCell();
    if (nextCell == _GenerationState.solvedMarker) {
      return true;
    }
    if (nextCell == _GenerationState.deadEndMarker) {
      return false;
    }

    final candidates = state.candidatesFor(nextCell)..shuffle(random);
    for (final value in candidates) {
      state.place(nextCell, value);
      if (_fillCell(state, random)) {
        return true;
      }
      state.clear(nextCell, value);
    }

    return false;
  }

  List<int?> _removeCells({
    required List<int> solution,
    required int targetGivens,
    required SudokuGenerationProfile profile,
    required Random random,
  }) {
    final puzzle = solution.cast<int?>().toList(growable: false);
    final groups = _removalGroups(profile.symmetricRemoval)..shuffle(random);
    var givenCount = BacktrackingSudokuSolver.boardSize;

    for (var pass = 0; pass < profile.maxRemovalPasses; pass++) {
      var removedInPass = false;
      groups.shuffle(random);

      for (final group in groups) {
        final filledIndexes = group
            .where((index) => puzzle[index] != null)
            .toList(growable: false);

        if (filledIndexes.isEmpty ||
            givenCount - filledIndexes.length < targetGivens) {
          continue;
        }

        final removedValues = <int, int>{};
        for (final index in filledIndexes) {
          removedValues[index] = puzzle[index]!;
          puzzle[index] = null;
        }

        if (_solver.countSolutions(puzzle, limit: 2) == 1) {
          givenCount -= filledIndexes.length;
          removedInPass = true;

          if (givenCount <= targetGivens) {
            return puzzle;
          }
        } else {
          for (final entry in removedValues.entries) {
            puzzle[entry.key] = entry.value;
          }
        }
      }

      if (!removedInPass) {
        break;
      }
    }

    return puzzle;
  }

  List<List<int>> _removalGroups(bool symmetric) {
    final visited = List<bool>.filled(
      BacktrackingSudokuSolver.boardSize,
      false,
    );
    final groups = <List<int>>[];

    for (var index = 0; index < BacktrackingSudokuSolver.boardSize; index++) {
      if (visited[index]) {
        continue;
      }

      if (!symmetric) {
        visited[index] = true;
        groups.add([index]);
        continue;
      }

      final mirrorIndex = BacktrackingSudokuSolver.boardSize - 1 - index;
      visited[index] = true;
      visited[mirrorIndex] = true;

      if (mirrorIndex == index) {
        groups.add([index]);
      } else {
        groups.add([index, mirrorIndex]);
      }
    }

    return groups;
  }

  int _givenCount(List<int?> puzzle) {
    return puzzle.where((value) => value != null && value != 0).length;
  }

  String _normalizeSeed(String? seed, SudokuDifficulty difficulty) {
    final value = seed?.trim();
    if (value == null || value.isEmpty) {
      return '${difficulty.name}-$generatorVersion';
    }

    return '${difficulty.name}-$generatorVersion-$value';
  }

  String _puzzleId(String seed, SudokuDifficulty difficulty) {
    final hash = _stableSeed('$difficulty-$seed');
    return 'sudoku-${difficulty.name}-$hash';
  }

  int _stableSeed(String value) {
    var hash = 0x811C9DC5;

    for (final codeUnit in value.codeUnits) {
      hash ^= codeUnit;
      hash = (hash * 0x01000193) & 0x7FFFFFFF;
    }

    return hash;
  }
}

final class _GenerationState {
  _GenerationState({
    required this.grid,
    required this.rowMasks,
    required this.columnMasks,
    required this.boxMasks,
  });

  factory _GenerationState.empty() {
    return _GenerationState(
      grid: List<int>.filled(BacktrackingSudokuSolver.boardSize, 0),
      rowMasks: List<int>.filled(BacktrackingSudokuSolver.sideLength, 0),
      columnMasks: List<int>.filled(BacktrackingSudokuSolver.sideLength, 0),
      boxMasks: List<int>.filled(BacktrackingSudokuSolver.sideLength, 0),
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

      final candidateCount = candidatesFor(index).length;
      if (candidateCount == 0) {
        return deadEndMarker;
      }

      if (candidateCount < bestCandidateCount) {
        bestCandidateCount = candidateCount;
        bestIndex = index;
      }
    }

    return bestIndex;
  }

  List<int> candidatesFor(int index) {
    final row = index ~/ BacktrackingSudokuSolver.sideLength;
    final column = index % BacktrackingSudokuSolver.sideLength;
    final box =
        ((row ~/ BacktrackingSudokuSolver.boxLength) *
            BacktrackingSudokuSolver.boxLength) +
        (column ~/ BacktrackingSudokuSolver.boxLength);
    final usedMask = rowMasks[row] | columnMasks[column] | boxMasks[box];
    var mask = BacktrackingSudokuSolver.allCandidatesMask & ~usedMask;
    final values = <int>[];

    while (mask != 0) {
      final bit = mask & -mask;
      values.add(bit.bitLength - 1);
      mask &= ~bit;
    }

    return values;
  }

  void place(int index, int value) {
    final row = index ~/ BacktrackingSudokuSolver.sideLength;
    final column = index % BacktrackingSudokuSolver.sideLength;
    final box =
        ((row ~/ BacktrackingSudokuSolver.boxLength) *
            BacktrackingSudokuSolver.boxLength) +
        (column ~/ BacktrackingSudokuSolver.boxLength);
    final bit = 1 << value;

    grid[index] = value;
    rowMasks[row] |= bit;
    columnMasks[column] |= bit;
    boxMasks[box] |= bit;
  }

  void clear(int index, int value) {
    final row = index ~/ BacktrackingSudokuSolver.sideLength;
    final column = index % BacktrackingSudokuSolver.sideLength;
    final box =
        ((row ~/ BacktrackingSudokuSolver.boxLength) *
            BacktrackingSudokuSolver.boxLength) +
        (column ~/ BacktrackingSudokuSolver.boxLength);
    final bit = 1 << value;

    grid[index] = 0;
    rowMasks[row] &= ~bit;
    columnMasks[column] &= ~bit;
    boxMasks[box] &= ~bit;
  }
}
