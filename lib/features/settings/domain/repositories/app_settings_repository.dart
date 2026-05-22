import 'package:offline_sudoku/features/settings/domain/entities/app_settings.dart';

abstract interface class AppSettingsRepository {
  Future<void> saveSettings(AppSettings settings);

  Future<AppSettings?> getSettings(String id);
}
