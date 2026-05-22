import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/utils/persistence_id.dart';
import 'package:offline_sudoku/features/settings/domain/entities/app_settings.dart';

part 'app_settings_record.g.dart';

@collection
class AppSettingsRecord {
  AppSettingsRecord();

  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String settingsId;

  late DateTime createdAt;
  late DateTime updatedAt;
  late String themePreferenceName;
  late String colorThemeName;
  late bool soundEnabled;
  late bool hapticsEnabled;
  late bool timerVisible;
  late bool highlightSelectedPeers;
  late bool highlightSameNumbers;
  late bool highlightConflicts;
  late bool autoClearNotes;
  late bool leftHandedMode;
  late bool reduceMotion;
  late String mistakeCheckingModeName;
  late bool mistakeLimitEnabled;
  late int mistakeLimit;
  late bool onboardingCompleted;
  late String localeCode;

  factory AppSettingsRecord.fromDomain(AppSettings settings) {
    return AppSettingsRecord()
      ..id = PersistenceId.fromString(settings.id)
      ..settingsId = settings.id
      ..createdAt = settings.createdAt
      ..updatedAt = settings.updatedAt
      ..themePreferenceName = settings.themePreference.name
      ..colorThemeName = settings.colorTheme.name
      ..soundEnabled = settings.soundEnabled
      ..hapticsEnabled = settings.hapticsEnabled
      ..timerVisible = settings.timerVisible
      ..highlightSelectedPeers = settings.highlightSelectedPeers
      ..highlightSameNumbers = settings.highlightSameNumbers
      ..highlightConflicts = settings.highlightConflicts
      ..autoClearNotes = settings.autoClearNotes
      ..leftHandedMode = settings.leftHandedMode
      ..reduceMotion = settings.reduceMotion
      ..mistakeCheckingModeName = settings.mistakeCheckingMode.name
      ..mistakeLimitEnabled = settings.mistakeLimitEnabled
      ..mistakeLimit = settings.mistakeLimit
      ..onboardingCompleted = settings.onboardingCompleted
      ..localeCode = settings.localeCode;
  }

  AppSettings toDomain() {
    return AppSettings(
      id: settingsId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      themePreference: AppThemePreference.values.byName(themePreferenceName),
      colorTheme: AppColorTheme.values.byName(colorThemeName),
      soundEnabled: soundEnabled,
      hapticsEnabled: hapticsEnabled,
      timerVisible: timerVisible,
      highlightSelectedPeers: highlightSelectedPeers,
      highlightSameNumbers: highlightSameNumbers,
      highlightConflicts: highlightConflicts,
      autoClearNotes: autoClearNotes,
      leftHandedMode: leftHandedMode,
      reduceMotion: reduceMotion,
      mistakeCheckingMode: MistakeCheckingMode.values.byName(
        mistakeCheckingModeName,
      ),
      mistakeLimitEnabled: mistakeLimitEnabled,
      mistakeLimit: mistakeLimit,
      onboardingCompleted: onboardingCompleted,
      localeCode: localeCode,
    );
  }
}
