///
/// Custom Return type
///
class Result<F, S> {
  F? _failure;
  S? _success;

  Result.failure(F failure) {
    _failure = failure;
  }

  Result.success([S? success]) {
    _success = success;
  }

  ///
  /// gives call back for success and failure.
  ///
  void when({
    required void Function(F?) failure,
    required void Function(S?) success,
  }) {
    if (_success != null) {
      success(_success);
    } else {
      failure(_failure);
    }
  }
}
