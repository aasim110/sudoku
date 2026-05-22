import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/achievements/application/providers/achievements_controller.dart';

import '../../../../helpers/fakes.dart';

void main() {
  test('seeds achievements and updates progress', () async {
    final repository = FakeAchievementRepository();
    final container = ProviderContainer(
      overrides: [achievementRepositoryProvider.overrideWithValue(repository)],
    );
    addTearDown(container.dispose);

    final achievements = await container.read(
      achievementsControllerProvider.future,
    );

    expect(achievements, isNotEmpty);
    expect(repository.achievements, isNotEmpty);

    container
        .read(achievementsControllerProvider.notifier)
        .updateProgress('first_win', 1);

    final unlocked = container.read(unlockedAchievementsProvider);
    expect(
      unlocked.map((achievement) => achievement.id),
      contains('first_win'),
    );
    expect(container.read(achievementProgressProvider('first_win')), 1);
  });
}
