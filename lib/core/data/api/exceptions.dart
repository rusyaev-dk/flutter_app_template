abstract class ApiException implements Exception {
  ApiException({
    required this.message,
    this.statusCode,
    this.error,
    this.stackTrace,
  });
  final String message;
  final int? statusCode;
  final Object? error;
  final StackTrace? stackTrace;

  @override
  String toString() => 'ApiException($statusCode): $message';
}

class ApiUnauthorizedException extends ApiException {
  ApiUnauthorizedException({
    required super.message,
    super.statusCode,
    super.error,
    super.stackTrace,
  });
}

class ApiServerException extends ApiException {
  ApiServerException({
    required super.message,
    super.statusCode,
    super.error,
    super.stackTrace,
  });
}

class ApiValidationException extends ApiException {
  ApiValidationException({
    required super.message,
    super.statusCode,
    super.error,
    super.stackTrace,
    this.errors,
  });

  final Map<String, dynamic>? errors;
}

class ApiConnectionException extends ApiException {
  ApiConnectionException({
    required super.message,
    super.error,
    super.stackTrace,
  });
}

class ApiUnknownException extends ApiException {
  ApiUnknownException({
    required super.message,
    super.statusCode,
    super.error,
    super.stackTrace,
  });
}

class ApiNotFoundException extends ApiException {
  ApiNotFoundException({
    required super.message,
    super.statusCode,
    super.error,
    super.stackTrace,
  });
}

class ApiForbiddenException extends ApiException {
  ApiForbiddenException({
    required super.message,
    super.statusCode,
    super.error,
    super.stackTrace,
  });
}

class ApiTimeoutException extends ApiException {
  ApiTimeoutException({
    required super.message,
    super.statusCode,
    super.error,
    super.stackTrace,
  });
}
