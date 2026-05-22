import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/core/constants/app_durations.dart';
import 'package:offline_sudoku/core/extensions/duration_extensions.dart';

final class GameTimerState {
  const GameTimerState({required this.elapsed, required this.isRunning});

  const GameTimerState.initial() : elapsed = Duration.zero, isRunning = false;

  final Duration elapsed;
  final bool isRunning;

  GameTimerState copyWith({Duration? elapsed, bool? isRunning}) {
    return GameTimerState(
      elapsed: elapsed ?? this.elapsed,
      isRunning: isRunning ?? this.isRunning,
    );
  }
}

final gameTimerControllerProvider =
    NotifierProvider<GameTimerController, GameTimerState>(
      GameTimerController.new,
    );

final gameTimerElapsedProvider = Provider<Duration>((ref) {
  return ref.watch(
    gameTimerControllerProvider.select((state) => state.elapsed),
  );
});

final gameTimerLabelProvider = Provider<String>((ref) {
  return ref.watch(gameTimerElapsedProvider).toTimerLabel();
});

final gameTimerRunningProvider = Provider<bool>((ref) {
  return ref.watch(
    gameTimerControllerProvider.select((state) => state.isRunning),
  );
});

final class GameTimerController extends Notifier<GameTimerState> {
  Timer? _timer;

  @override
  GameTimerState build() {
    ref.onDispose(() {
      _timer?.cancel();
    });
    return const GameTimerState.initial();
  }

  void start({Duration initialElapsed = Duration.zero}) {
    _timer?.cancel();
    state = GameTimerState(elapsed: initialElapsed, isRunning: true);
    _timer = Timer.periodic(AppDurations.timerTick, (_) => _tick());
  }

  void pause() {
    _timer?.cancel();
    _timer = null;
    state = state.copyWith(isRunning: false);
  }

  void resume() {
    if (state.isRunning) {
      return;
    }

    state = state.copyWith(isRunning: true);
    _timer = Timer.periodic(AppDurations.timerTick, (_) => _tick());
  }

  void reset() {
    _timer?.cancel();
    _timer = null;
    state = const GameTimerState.initial();
  }

  void setElapsed(Duration elapsed) {
    state = state.copyWith(elapsed: elapsed);
  }

  void _tick() {
    state = state.copyWith(elapsed: state.elapsed + AppDurations.timerTick);
  }
}
