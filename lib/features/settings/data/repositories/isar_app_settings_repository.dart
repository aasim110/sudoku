import 'package:offline_sudoku/features/settings/data/datasources/app_settings_local_data_source.dart';
import 'package:offline_sudoku/features/settings/data/models/app_settings_record.dart';
import 'package:offline_sudoku/features/settings/domain/entities/app_settings.dart';
import 'package:offline_sudoku/features/settings/domain/repositories/app_settings_repository.dart';

final class IsarAppSettingsRepository implements AppSettingsRepository {
  const IsarAppSettingsRepository(this._localDataSource);

  final AppSettingsLocalDataSource _localDataSource;

  @override
  Future<void> saveSettings(AppSettings settings) {
    return _localDataSource.put(AppSettingsRecord.fromDomain(settings));
  }

  @override
  Future<AppSettings?> getSettings(String id) async {
    return (await _localDataSource.get(id))?.toDomain();
  }
}
