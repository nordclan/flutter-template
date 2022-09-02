import 'package:dio/dio.dart';
import 'package:sample_project/src/services/exceptions/server/server_error_mapper.dart';

/// Custom error interceptor
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    throw ServerErrorMapper.fromDioError(
      err,
    );
  }
}
