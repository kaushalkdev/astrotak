/// ### Custom Error class
///
class AppError {
  final String message;
  final int? code;

  AppError({
    required this.message,
    this.code,
  });
}
