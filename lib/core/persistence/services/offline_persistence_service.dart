import 'package:isar_community/isar.dart';

final class OfflinePersistenceService {
  const OfflinePersistenceService(this._isar);

  final Isar _isar;

  Future<void> clearAll() {
    return _isar.writeTxn(_isar.clear);
  }

  Future<void> close() {
    return _isar.close();
  }
}
