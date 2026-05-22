import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/core/persistence/database_initializer.dart';
import 'package:offline_sudoku/core/persistence/services/offline_persistence_service.dart';

final isarProvider = Provider<Isar>((ref) {
  throw UnimplementedError(
    'Isar must be initialized in the persistence bootstrap before use.',
  );
});

final isarInstanceProvider = FutureProvider<Isar>((ref) async {
  final isar = await DatabaseInitializer.open();
  ref.onDispose(() {
    if (isar.isOpen) {
      isar.close();
    }
  });
  return isar;
});

final offlinePersistenceServiceProvider = Provider<OfflinePersistenceService>((
  ref,
) {
  return OfflinePersistenceService(ref.watch(isarProvider));
});
