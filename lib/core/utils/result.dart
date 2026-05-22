sealed class Result<T> {
  const Result();

  bool get isSuccess => this is Success<T>;
  bool get isFailure => this is FailureResult<T>;

  R when<R>({
    required R Function(T value) success,
    required R Function(Object error, StackTrace? stackTrace) failure,
  }) {
    return switch (this) {
      Success<T>(:final value) => success(value),
      FailureResult<T>(:final error, :final stackTrace) => failure(
        error,
        stackTrace,
      ),
    };
  }
}

final class Success<T> extends Result<T> {
  const Success(this.value);

  final T value;
}

final class FailureResult<T> extends Result<T> {
  const FailureResult(this.error, [this.stackTrace]);

  final Object error;
  final StackTrace? stackTrace;
}
