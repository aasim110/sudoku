extension IterableExtensions<T> on Iterable<T> {
  T? get firstOrNullSafe {
    final iterator = this.iterator;
    if (!iterator.moveNext()) {
      return null;
    }
    return iterator.current;
  }

  Iterable<List<T>> chunked(int size) sync* {
    if (size <= 0) {
      throw ArgumentError.value(size, 'size', 'Must be greater than zero.');
    }

    final chunk = <T>[];
    for (final item in this) {
      chunk.add(item);
      if (chunk.length == size) {
        yield List<T>.unmodifiable(chunk);
        chunk.clear();
      }
    }

    if (chunk.isNotEmpty) {
      yield List<T>.unmodifiable(chunk);
    }
  }
}
