// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) => _AppSettings(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  themePreference:
      $enumDecodeNullable(
        _$AppThemePreferenceEnumMap,
        json['themePreference'],
      ) ??
      AppThemePreference.system,
  colorTheme:
      $enumDecodeNullable(_$AppColorThemeEnumMap, json['colorTheme']) ??
      AppColorTheme.classic,
  soundEnabled: json['soundEnabled'] as bool? ?? true,
  hapticsEnabled: json['hapticsEnabled'] as bool? ?? true,
  timerVisible: json['timerVisible'] as bool? ?? true,
  highlightSelectedPeers: json['highlightSelectedPeers'] as bool? ?? true,
  highlightSameNumbers: json['highlightSameNumbers'] as bool? ?? true,
  highlightConflicts: json['highlightConflicts'] as bool? ?? true,
  autoClearNotes: json['autoClearNotes'] as bool? ?? true,
  leftHandedMode: json['leftHandedMode'] as bool? ?? false,
  reduceMotion: json['reduceMotion'] as bool? ?? false,
  mistakeCheckingMode:
      $enumDecodeNullable(
        _$MistakeCheckingModeEnumMap,
        json['mistakeCheckingMode'],
      ) ??
      MistakeCheckingMode.afterEntry,
  mistakeLimitEnabled: json['mistakeLimitEnabled'] as bool? ?? true,
  mistakeLimit: (json['mistakeLimit'] as num?)?.toInt() ?? 3,
  onboardingCompleted: json['onboardingCompleted'] as bool? ?? false,
  localeCode: json['localeCode'] as String? ?? 'en',
);

Map<String, dynamic> _$AppSettingsToJson(_AppSettings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'themePreference': _$AppThemePreferenceEnumMap[instance.themePreference]!,
      'colorTheme': _$AppColorThemeEnumMap[instance.colorTheme]!,
      'soundEnabled': instance.soundEnabled,
      'hapticsEnabled': instance.hapticsEnabled,
      'timerVisible': instance.timerVisible,
      'highlightSelectedPeers': instance.highlightSelectedPeers,
      'highlightSameNumbers': instance.highlightSameNumbers,
      'highlightConflicts': instance.highlightConflicts,
      'autoClearNotes': instance.autoClearNotes,
      'leftHandedMode': instance.leftHandedMode,
      'reduceMotion': instance.reduceMotion,
      'mistakeCheckingMode':
          _$MistakeCheckingModeEnumMap[instance.mistakeCheckingMode]!,
      'mistakeLimitEnabled': instance.mistakeLimitEnabled,
      'mistakeLimit': instance.mistakeLimit,
      'onboardingCompleted': instance.onboardingCompleted,
      'localeCode': instance.localeCode,
    };

const _$AppThemePreferenceEnumMap = {
  AppThemePreference.system: 'system',
  AppThemePreference.light: 'light',
  AppThemePreference.dark: 'dark',
  AppThemePreference.highContrastLight: 'highContrastLight',
  AppThemePreference.highContrastDark: 'highContrastDark',
};

const _$AppColorThemeEnumMap = {
  AppColorTheme.classic: 'classic',
  AppColorTheme.ocean: 'ocean',
  AppColorTheme.forest: 'forest',
  AppColorTheme.graphite: 'graphite',
};

const _$MistakeCheckingModeEnumMap = {
  MistakeCheckingMode.disabled: 'disabled',
  MistakeCheckingMode.afterEntry: 'afterEntry',
  MistakeCheckingMode.onCompletion: 'onCompletion',
};
