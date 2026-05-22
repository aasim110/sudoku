import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/daily_challenge/application/providers/daily_challenge_controller.dart';
import 'package:offline_sudoku/features/daily_challenge/domain/entities/daily_challenge.dart';
import 'package:offline_sudoku/features/sudoku_engine/application/providers/sudoku_engine_providers.dart';

import '../../../../helpers/fakes.dart';

void main() {
  test('creates and persists daily challenge for date', () async {
    final repository = FakeDailyChallengeRepository();
    final container = ProviderContainer(
      overrides: [
        dailyChallengeRepositoryProvider.overrideWithValue(repository),
        sudokuPuzzleGeneratorProvider.overrideWithValue(
          FakeSudokuPuzzleGenerator(),
        ),
      ],
    );
    addTearDown(container.dispose);

    await container.read(dailyChallengeControllerProvider.future);
    final challenge = await container
        .read(dailyChallengeControllerProvider.notifier)
        .loadOrCreateForDate(DateTime.utc(2026, 5, 22));

    expect(challenge.status, DailyChallengeStatus.available);
    expect(container.read(dailyChallengeStatusProvider), isNotNull);
    expect(repository.challenges, contains(challenge.id));
  });
}
