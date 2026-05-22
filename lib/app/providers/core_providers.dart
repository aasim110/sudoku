import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/core/audio/audio_service.dart';

final audioServiceProvider = Provider<AudioService>((ref) {
  final service = AudioService();
  unawaited(service.preload());
  ref.onDispose(() {
    unawaited(service.dispose());
  });
  return service;
});
