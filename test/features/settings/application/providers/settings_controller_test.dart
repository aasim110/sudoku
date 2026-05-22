import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/settings/application/providers/settings_controller.dart';

import '../../../../helpers/fakes.dart';

void main() {
  test('loads default settings and persists updates', () async {
    final repository = FakeAppSettingsRepository();
    final container = ProviderContainer(
      overrides: [appSettingsRepositoryProvider.overrideWithValue(repository)],
    );
    addTearDown(container.dispose);

    final settings = await container.read(settingsControllerProvider.future);
    expect(settings.soundEnabled, isTrue);

    container
        .read(settingsControllerProvider.notifier)
        .setSoundEnabled(value: false);

    expect(container.read(soundEnabledProvider), isFalse);
    expect(repository.saved?.soundEnabled, isFalse);
  });
}
