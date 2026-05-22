import 'package:isar_community/isar.dart';

abstract final class PersistenceId {
  static Id fromString(String value) {
    var hash = 0x811C9DC5;

    for (final codeUnit in value.codeUnits) {
      hash ^= codeUnit;
      hash = (hash * 0x01000193) & 0x7FFFFFFF;
    }

    return hash == 0 ? 1 : hash;
  }
}
