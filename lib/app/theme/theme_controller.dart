import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/core/constants/app_colors.dart';

@immutable
class AppThemeState {
  const AppThemeState({
    required this.themeMode,
    required this.seedColor,
    required this.reduceMotion,
  });

  const AppThemeState.initial()
    : themeMode = ThemeMode.system,
      seedColor = AppColors.defaultSeed,
      reduceMotion = false;

  final ThemeMode themeMode;
  final Color seedColor;
  final bool reduceMotion;

  AppThemeState copyWith({
    ThemeMode? themeMode,
    Color? seedColor,
    bool? reduceMotion,
  }) {
    return AppThemeState(
      themeMode: themeMode ?? this.themeMode,
      seedColor: seedColor ?? this.seedColor,
      reduceMotion: reduceMotion ?? this.reduceMotion,
    );
  }
}

class ThemeController extends Notifier<AppThemeState> {
  @override
  AppThemeState build() => const AppThemeState.initial();

  void setThemeMode(ThemeMode themeMode) {
    state = state.copyWith(themeMode: themeMode);
  }

  void setSeedColor(Color color) {
    state = state.copyWith(seedColor: color);
  }

  void setReduceMotion({required bool value}) {
    state = state.copyWith(reduceMotion: value);
  }
}

final themeControllerProvider =
    NotifierProvider<ThemeController, AppThemeState>(ThemeController.new);
