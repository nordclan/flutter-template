import 'package:dio/dio.dart';
import 'package:sample_project/src/services/services/dio/dio_interceptor_request.dart';
import 'package:sample_project/src/services/urls.dart';

/// Http module
class DioModule {
  final dio = Dio()
    ..options = BaseOptions(
      baseUrl: baseUrl,
    )
    ..interceptors.addAll(
      [
        LogInterceptor(),
        ErrorInterceptor(),
      ],
    );
}
