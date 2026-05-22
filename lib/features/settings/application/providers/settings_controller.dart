import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/settings/domain/entities/app_settings.dart';

final settingsControllerProvider =
    AsyncNotifierProvider<SettingsController, AppSettings>(
      SettingsController.new,
    );

final soundEnabledProvider = Provider<bool>((ref) {
  return ref.watch(
    settingsControllerProvider.select(
      (state) => state.asData?.value.soundEnabled ?? true,
    ),
  );
});

final hapticsEnabledProvider = Provider<bool>((ref) {
  return ref.watch(
    settingsControllerProvider.select(
      (state) => state.asData?.value.hapticsEnabled ?? true,
    ),
  );
});

final reducedMotionProvider = Provider<bool>((ref) {
  return ref.watch(
    settingsControllerProvider.select(
      (state) => state.asData?.value.reduceMotion ?? false,
    ),
  );
});

final mistakeCheckingModeProvider = Provider<MistakeCheckingMode>((ref) {
  return ref.watch(
    settingsControllerProvider.select(
      (state) =>
          state.asData?.value.mistakeCheckingMode ??
          MistakeCheckingMode.afterEntry,
    ),
  );
});

final class SettingsController extends AsyncNotifier<AppSettings> {
  static const settingsId = 'app_settings';

  @override
  Future<AppSettings> build() async {
    final existing = await ref
        .read(appSettingsRepositoryProvider)
        .getSettings(settingsId);
    if (existing != null) {
      return existing;
    }

    final now = DateTime.now().toUtc();
    final settings = AppSettings(
      id: settingsId,
      createdAt: now,
      updatedAt: now,
    );
    unawaited(ref.read(appSettingsRepositoryProvider).saveSettings(settings));
    return settings;
  }

  void updateSettings(AppSettings Function(AppSettings settings) update) {
    final current = state.asData?.value;
    if (current == null) {
      return;
    }

    final updated = update(current).copyWith(updatedAt: DateTime.now().toUtc());
    state = AsyncData(updated);
    unawaited(ref.read(appSettingsRepositoryProvider).saveSettings(updated));
  }

  void setSoundEnabled({required bool value}) {
    updateSettings((settings) => settings.copyWith(soundEnabled: value));
  }

  void setHapticsEnabled({required bool value}) {
    updateSettings((settings) => settings.copyWith(hapticsEnabled: value));
  }

  void setReduceMotion({required bool value}) {
    updateSettings((settings) => settings.copyWith(reduceMotion: value));
  }

  void setThemePreference(AppThemePreference value) {
    updateSettings((settings) => settings.copyWith(themePreference: value));
  }

  void setColorTheme(AppColorTheme value) {
    updateSettings((settings) => settings.copyWith(colorTheme: value));
  }

  void completeOnboarding() {
    updateSettings((settings) => settings.copyWith(onboardingCompleted: true));
  }
}
