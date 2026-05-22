import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/utils/persistence_id.dart';
import 'package:offline_sudoku/features/settings/data/models/app_settings_record.dart';

abstract interface class AppSettingsLocalDataSource {
  Future<void> put(AppSettingsRecord record);

  Future<AppSettingsRecord?> get(String id);
}

final class IsarAppSettingsLocalDataSource
    implements AppSettingsLocalDataSource {
  const IsarAppSettingsLocalDataSource(this._isar);

  final Isar _isar;

  IsarCollection<AppSettingsRecord> get _collection =>
      _isar.collection<AppSettingsRecord>();

  @override
  Future<void> put(AppSettingsRecord record) {
    return _isar.writeTxn(() => _collection.put(record));
  }

  @override
  Future<AppSettingsRecord?> get(String id) {
    return _collection.get(PersistenceId.fromString(id));
  }
}
