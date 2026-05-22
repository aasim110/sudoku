import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/app/providers/app_provider_observer.dart';
import 'package:offline_sudoku/core/persistence/database_initializer.dart';
import 'package:offline_sudoku/core/persistence/isar_provider.dart';
import 'package:offline_sudoku/core/utils/app_logger.dart';

Future<void> bootstrap(Widget app) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      FlutterError.onError = (details) {
        FlutterError.presentError(details);
        AppLogger.error(
          'Flutter framework error',
          error: details.exception,
          stackTrace: details.stack,
        );
      };

      PlatformDispatcher.instance.onError = (error, stackTrace) {
        AppLogger.error(
          'Uncaught platform error',
          error: error,
          stackTrace: stackTrace,
        );
        return true;
      };

      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      final isar = await DatabaseInitializer.open();

      runApp(
        ProviderScope(
          observers: const [AppProviderObserver()],
          overrides: [isarProvider.overrideWithValue(isar)],
          child: app,
        ),
      );
    },
    (error, stackTrace) {
      AppLogger.error(
        'Uncaught zone error',
        error: error,
        stackTrace: stackTrace,
      );
    },
  );
}
