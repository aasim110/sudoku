import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/stats/application/providers/stats_controller.dart';

import '../../../../helpers/fakes.dart';

void main() {
  test('loads default stats and exposes derived providers', () async {
    final repository = FakeUserStatsRepository();
    final container = ProviderContainer(
      overrides: [userStatsRepositoryProvider.overrideWithValue(repository)],
    );
    addTearDown(container.dispose);

    await container.read(statsControllerProvider.future);

    expect(container.read(gamesCompletedProvider), 0);
    expect(container.read(currentWinStreakProvider), 0);
    expect(container.read(completionRateProvider), 0);
    expect(repository.saved?.userId, StatsController.userId);
  });
}
