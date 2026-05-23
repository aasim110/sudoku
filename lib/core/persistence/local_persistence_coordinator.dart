import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/achievements/application/providers/achievements_controller.dart';
import 'package:offline_sudoku/features/gameplay/application/providers/game_controller.dart';
import 'package:offline_sudoku/features/settings/application/providers/settings_controller.dart';
import 'package:offline_sudoku/features/stats/application/providers/stats_controller.dart';

final localPersistenceCoordinatorProvider =
    Provider<LocalPersistenceCoordinator>((ref) {
      final coordinator = LocalPersistenceCoordinator(ref);
      coordinator.attach();
      ref.onDispose(coordinator.dispose);
      return coordinator;
    });

final class LocalPersistenceCoordinator with WidgetsBindingObserver {
  LocalPersistenceCoordinator(this._ref);

  final Ref _ref;
  Future<void> _lastFlush = Future<void>.value();
  bool _attached = false;
  bool _backgroundCheckpointed = false;

  void attach() {
    if (_attached) {
      return;
    }

    WidgetsBinding.instance.addObserver(this);
    _attached = true;
  }

  Future<void> flush() {
    _lastFlush = _lastFlush.then((_) => _flushNow(checkpointGame: false));
    return _lastFlush;
  }

  void dispose() {
    if (!_attached) {
      return;
    }

    WidgetsBinding.instance.removeObserver(this);
    _attached = false;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        unawaited(_restoreFromResume());
      case AppLifecycleState.inactive:
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        unawaited(_checkpointForBackground());
    }
  }

  @override
  void didHaveMemoryPressure() {
    unawaited(_checkpointForBackground());
  }

  Future<void> _checkpointForBackground() {
    if (_backgroundCheckpointed) {
      return _lastFlush;
    }

    _backgroundCheckpointed = true;
    _lastFlush = _lastFlush.then((_) => _flushNow(checkpointGame: true));
    return _lastFlush;
  }

  Future<void> _restoreFromResume() {
    _backgroundCheckpointed = false;
    _lastFlush = _lastFlush.then((_) async {
      await _ref
          .read(gameControllerProvider.notifier)
          .restoreAfterLifecycleResume();
    });
    return _lastFlush;
  }

  Future<void> _flushNow({required bool checkpointGame}) async {
    final gameController = _ref.read(gameControllerProvider.notifier);
    if (checkpointGame) {
      await gameController.checkpointForLifecyclePause();
    } else {
      await gameController.persistCurrentSession();
    }

    final settings = _ref.read(settingsControllerProvider).asData?.value;
    if (settings != null) {
      await _ref.read(appSettingsRepositoryProvider).saveSettings(settings);
    }

    final stats = _ref.read(statsControllerProvider).asData?.value;
    if (stats != null) {
      await _ref.read(userStatsRepositoryProvider).saveStats(stats);
    }

    final achievements = _ref
        .read(achievementsControllerProvider)
        .asData
        ?.value;
    if (achievements != null) {
      await _ref
          .read(achievementRepositoryProvider)
          .saveAchievements(achievements);
    }
  }
}
