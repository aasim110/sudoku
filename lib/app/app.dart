import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/app/router/app_router.dart';
import 'package:offline_sudoku/app/theme/app_theme.dart';
import 'package:offline_sudoku/app/theme/theme_controller.dart';
import 'package:offline_sudoku/core/constants/app_constants.dart';
import 'package:offline_sudoku/core/persistence/local_persistence_coordinator.dart';

class SudokuApp extends ConsumerWidget {
  const SudokuApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final themeState = ref.watch(themeControllerProvider);
    ref.watch(localPersistenceCoordinatorProvider);

    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(themeState.seedColor),
      darkTheme: AppTheme.dark(themeState.seedColor),
      highContrastTheme: AppTheme.highContrastLight(themeState.seedColor),
      highContrastDarkTheme: AppTheme.highContrastDark(themeState.seedColor),
      themeMode: themeState.themeMode,
      routerConfig: router,
      restorationScopeId: AppConstants.restorationScopeId,
    );
  }
}
