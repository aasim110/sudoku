import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/services/sudoku_generator.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/services/sudoku_solver.dart';

void main() {
  final solver = const BacktrackingSudokuSolver();
  final generator = BacktrackingSudokuGenerator(solver: solver);

  test('generates deterministic solved boards from a seed', () {
    final first = generator.generateSolvedBoard(seed: 'daily-2026-05-22');
    final second = generator.generateSolvedBoard(seed: 'daily-2026-05-22');
    final third = generator.generateSolvedBoard(seed: 'daily-2026-05-23');

    expect(first, second);
    expect(first, isNot(third));
    expect(solver.validateBoard(first).isValid, isTrue);
    expect(solver.solve(first).status, SudokuSolveStatus.solved);
  });

  test('generates a unique easy puzzle', () {
    final puzzle = generator.generate(
      difficulty: SudokuDifficulty.easy,
      seed: 'easy-smoke',
      createdAt: DateTime.utc(2026, 5, 22),
    );

    final result = solver.solve(puzzle.initialGrid, requireUnique: true);

    expect(puzzle.difficulty, SudokuDifficulty.easy);
    expect(puzzle.source, SudokuPuzzleSource.generated);
    expect(puzzle.initialGrid.length, 81);
    expect(puzzle.solutionGrid.length, 81);
    expect(puzzle.givenCellCount, inInclusiveRange(40, 45));
    expect(result.status, SudokuSolveStatus.solved);
    expect(result.solution, puzzle.solutionGrid);
  });

  test('generates deterministic puzzles from difficulty and seed', () {
    final first = generator.generate(
      difficulty: SudokuDifficulty.medium,
      seed: 'same-seed',
      createdAt: DateTime.utc(2026, 5, 22),
    );
    final second = generator.generate(
      difficulty: SudokuDifficulty.medium,
      seed: 'same-seed',
      createdAt: DateTime.utc(2026, 5, 23),
    );

    expect(first.id, second.id);
    expect(first.initialGrid, second.initialGrid);
    expect(first.solutionGrid, second.solutionGrid);
    expect(first.createdAt, isNot(second.createdAt));
  });

  test('supports every configured difficulty with a unique puzzle', () {
    for (final difficulty in SudokuDifficulty.values) {
      final puzzle = generator.generate(
        difficulty: difficulty,
        seed: 'difficulty-${difficulty.name}',
        createdAt: DateTime.utc(2026, 5, 22),
      );
      final profile = BacktrackingSudokuGenerator.profiles[difficulty]!;
      final result = solver.solve(puzzle.initialGrid, requireUnique: true);

      expect(
        puzzle.givenCellCount,
        inInclusiveRange(profile.minGivens, profile.maxGivens),
        reason: difficulty.name,
      );
      expect(result.status, SudokuSolveStatus.solved, reason: difficulty.name);
      expect(result.solution, puzzle.solutionGrid, reason: difficulty.name);
    }
  });
}
