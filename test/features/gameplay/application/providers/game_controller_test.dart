import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/gameplay/application/providers/game_controller.dart';
import 'package:offline_sudoku/features/gameplay/application/providers/timer_controller.dart';
import 'package:offline_sudoku/features/gameplay/domain/entities/game_session.dart';
import 'package:offline_sudoku/features/sudoku_engine/application/providers/sudoku_engine_providers.dart';
import 'package:offline_sudoku/features/sudoku_engine/application/services/async_sudoku_generator.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';

import '../../../../helpers/fakes.dart';

void main() {
  late ProviderContainer container;
  late FakeGameSessionRepository gameRepository;
  late FakeSudokuPuzzleRepository puzzleRepository;
  late FakeUserStatsRepository statsRepository;
  late FakeAchievementRepository achievementRepository;
  late CountingAsyncSudokuPuzzleGenerator asyncGenerator;

  setUp(() {
    gameRepository = FakeGameSessionRepository();
    puzzleRepository = FakeSudokuPuzzleRepository();
    statsRepository = FakeUserStatsRepository();
    achievementRepository = FakeAchievementRepository();
    asyncGenerator = CountingAsyncSudokuPuzzleGenerator();
    container = ProviderContainer(
      overrides: [
        gameSessionRepositoryProvider.overrideWithValue(gameRepository),
        sudokuPuzzleRepositoryProvider.overrideWithValue(puzzleRepository),
        userStatsRepositoryProvider.overrideWithValue(statsRepository),
        achievementRepositoryProvider.overrideWithValue(achievementRepository),
        asyncSudokuPuzzleGeneratorProvider.overrideWithValue(asyncGenerator),
        sudokuPuzzleGeneratorProvider.overrideWithValue(
          FakeSudokuPuzzleGenerator(),
        ),
      ],
    );
  });

  tearDown(() => container.dispose());

  test('starts a new game and persists puzzle/session', () async {
    await container.read(gameControllerProvider.future);

    await container
        .read(gameControllerProvider.notifier)
        .startNewGame(difficulty: SudokuDifficulty.medium);

    final session = container.read(gameControllerProvider).asData!.value;

    expect(session, isNotNull);
    expect(session!.status, GameSessionStatus.playing);
    expect(session.puzzle.difficulty, SudokuDifficulty.medium);
    expect(session.cells.length, 81);
    expect(gameRepository.sessions, contains(session.id));
    expect(puzzleRepository.puzzles, contains(session.puzzle.id));
  });

  test('uses a cached puzzle before generating a new one', () async {
    await container.read(gameControllerProvider.future);
    final cached = fakePuzzle(
      difficulty: SudokuDifficulty.expert,
    ).copyWith(id: 'cached-expert', seed: 'cached-seed');
    await puzzleRepository.savePuzzle(cached);

    await container
        .read(gameControllerProvider.notifier)
        .startNewGame(difficulty: SudokuDifficulty.expert);

    final session = container.read(gameControllerProvider).asData!.value!;
    expect(session.puzzle.id, 'cached-expert');
    expect(session.puzzle.difficulty, SudokuDifficulty.expert);
  });

  test('places numbers, tracks mistakes, undo, and redo', () async {
    await container.read(gameControllerProvider.future);
    await container
        .read(gameControllerProvider.notifier)
        .startNewGame(difficulty: SudokuDifficulty.easy);

    final controller = container.read(gameControllerProvider.notifier);
    controller.selectCell(2);
    controller.placeNumber(1);

    var session = container.read(gameControllerProvider).asData!.value!;
    expect(session.cells[2].value, 1);
    expect(session.mistakeCount, 1);
    expect(container.read(canUndoProvider), isTrue);

    controller.undo();
    session = container.read(gameControllerProvider).asData!.value!;
    expect(session.cells[2].value, isNull);
    expect(container.read(canRedoProvider), isTrue);

    controller.redo();
    session = container.read(gameControllerProvider).asData!.value!;
    expect(session.cells[2].value, 1);
  });

  test('timer controller exposes elapsed label and running state', () {
    final timer = container.read(gameTimerControllerProvider.notifier);

    timer.start(initialElapsed: const Duration(seconds: 65));

    expect(container.read(gameTimerRunningProvider), isTrue);
    expect(container.read(gameTimerLabelProvider), '01:05');

    timer.pause();
    expect(container.read(gameTimerRunningProvider), isFalse);
  });

  test(
    'lifecycle checkpoint saves elapsed time and restore resumes timer',
    () async {
      await container.read(gameControllerProvider.future);
      await container
          .read(gameControllerProvider.notifier)
          .startNewGame(difficulty: SudokuDifficulty.easy);

      final timer = container.read(gameTimerControllerProvider.notifier);
      timer.setElapsed(const Duration(seconds: 42));

      await container
          .read(gameControllerProvider.notifier)
          .checkpointForLifecyclePause();

      final saved = gameRepository.sessions.values.single;
      expect(saved.elapsedTime, const Duration(seconds: 42));
      expect(container.read(gameTimerRunningProvider), isFalse);

      await container
          .read(gameControllerProvider.notifier)
          .restoreAfterLifecycleResume();

      expect(
        container.read(gameTimerElapsedProvider),
        const Duration(seconds: 42),
      );
      expect(container.read(gameTimerRunningProvider), isTrue);
    },
  );
}

final class CountingAsyncSudokuPuzzleGenerator
    implements AsyncSudokuPuzzleGenerator {
  final calls = <SudokuDifficulty>[];

  @override
  Future<SudokuPuzzle> generate({
    required SudokuDifficulty difficulty,
    String? seed,
    DateTime? createdAt,
  }) async {
    calls.add(difficulty);
    return fakePuzzle(
      difficulty: difficulty,
    ).copyWith(createdAt: createdAt ?? DateTime.utc(2026, 5, 22), seed: seed);
  }
}
