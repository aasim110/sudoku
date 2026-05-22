import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

enum AppThemePreference {
  system,
  light,
  dark,
  highContrastLight,
  highContrastDark,
}

enum AppColorTheme { classic, ocean, forest, graphite }

enum MistakeCheckingMode { disabled, afterEntry, onCompletion }

@freezed
abstract class AppSettings with _$AppSettings {
  const factory AppSettings({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(AppThemePreference.system) AppThemePreference themePreference,
    @Default(AppColorTheme.classic) AppColorTheme colorTheme,
    @Default(true) bool soundEnabled,
    @Default(true) bool hapticsEnabled,
    @Default(true) bool timerVisible,
    @Default(true) bool highlightSelectedPeers,
    @Default(true) bool highlightSameNumbers,
    @Default(true) bool highlightConflicts,
    @Default(true) bool autoClearNotes,
    @Default(false) bool leftHandedMode,
    @Default(false) bool reduceMotion,
    @Default(MistakeCheckingMode.afterEntry)
    MistakeCheckingMode mistakeCheckingMode,
    @Default(true) bool mistakeLimitEnabled,
    @Default(3) int mistakeLimit,
    @Default(false) bool onboardingCompleted,
    @Default('en') String localeCode,
  }) = _AppSettings;

  const AppSettings._();

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);

  bool get shouldCheckMistakes =>
      mistakeCheckingMode != MistakeCheckingMode.disabled;
}
