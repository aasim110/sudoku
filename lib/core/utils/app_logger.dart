import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

abstract final class AppLogger {
  static void debug(String message) {
    if (!kDebugMode) {
      return;
    }

    developer.log(message, name: 'OfflineSudoku');
  }

  static void info(String message) {
    developer.log(message, name: 'OfflineSudoku');
  }

  static void warning(String message, {Object? error, StackTrace? stackTrace}) {
    developer.log(
      message,
      name: 'OfflineSudoku',
      level: 900,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static void error(String message, {Object? error, StackTrace? stackTrace}) {
    developer.log(
      message,
      name: 'OfflineSudoku',
      level: 1000,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
