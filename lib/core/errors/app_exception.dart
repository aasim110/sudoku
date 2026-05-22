sealed class AppException implements Exception {
  const AppException(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() => 'AppException(message: $message, cause: $cause)';
}

final class PersistenceException extends AppException {
  const PersistenceException(super.message, {super.cause});
}

final class ValidationException extends AppException {
  const ValidationException(super.message, {super.cause});
}

final class SudokuEngineException extends AppException {
  const SudokuEngineException(super.message, {super.cause});
}
