import 'package:dio/dio.dart';
import 'server_error_exception.dart';

/// Server errors to app errors
class ServerErrorMapper {
  /// For other errors create new constants
  static const int _unauthorized = 401;
  static const int _notFound = 404;

  static Exception fromDioError(DioError error) {
    final statusCode = error.response?.statusCode;

    /// Custom server exceptions, add more constants if needed
    switch (statusCode) {
      case _notFound:
        return NotFoundException();
      case _unauthorized:
        return UnauthorizedException();
    }

    /// Other errors
    return ServerErrorException();
  }
}
