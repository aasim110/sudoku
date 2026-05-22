import 'package:audioplayers/audioplayers.dart';
import 'package:offline_sudoku/core/audio/audio_events.dart';
import 'package:offline_sudoku/core/utils/app_logger.dart';

class AudioService {
  AudioService({Map<SoundEvent, AudioPlayer>? players})
    : _players = players ?? <SoundEvent, AudioPlayer>{};

  final Map<SoundEvent, AudioPlayer> _players;
  bool _enabled = true;
  bool _preloaded = false;

  bool get isEnabled => _enabled;

  void setEnabled({required bool value}) {
    _enabled = value;
  }

  Future<void> preload() async {
    if (!_enabled || _preloaded) {
      return;
    }

    try {
      await Future.wait(
        SoundEvent.values.map((event) async {
          final player = _playerFor(event);
          await player.setReleaseMode(ReleaseMode.stop);
          await player.setSource(AssetSource(_assetFor(event)));
        }),
      );
      _preloaded = true;
    } catch (error, stackTrace) {
      AppLogger.warning(
        'Unable to preload sound effects',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> play(SoundEvent event) async {
    if (!_enabled) {
      return;
    }

    try {
      final player = _playerFor(event);
      await player.stop();
      await player.play(AssetSource(_assetFor(event)));
    } catch (error, stackTrace) {
      AppLogger.warning(
        'Unable to play sound effect: $event',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> tap() => play(SoundEvent.tap);

  Future<void> validInput() => play(SoundEvent.validInput);

  Future<void> invalidMove() => play(SoundEvent.invalidMove);

  Future<void> victory() => play(SoundEvent.victory);

  Future<void> dispose() async {
    await Future.wait(_players.values.map((player) => player.dispose()));
    _players.clear();
  }

  AudioPlayer _playerFor(SoundEvent event) {
    return _players.putIfAbsent(event, AudioPlayer.new);
  }

  String _assetFor(SoundEvent event) {
    return switch (event) {
      SoundEvent.tap => 'audio/tap.wav',
      SoundEvent.validInput => 'audio/valid_input.wav',
      SoundEvent.invalidMove => 'audio/invalid_move.wav',
      SoundEvent.victory => 'audio/victory.wav',
    };
  }
}
