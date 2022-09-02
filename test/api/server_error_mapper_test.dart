import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sample_project/src/services/exceptions/server/server_error_exception.dart';
import 'package:sample_project/src/services/exceptions/server/server_error_mapper.dart';

void main() {
  group(
    'Error tests',
    () {
      final requestOptions = RequestOptions(path: '');

      DioError _makeDioError(
        int statusCode, {
        Object? data,
      }) {
        return DioError(
          requestOptions: requestOptions,
          response: Response<Object?>(
            statusCode: statusCode,
            requestOptions: requestOptions,
            data: data,
          ),
        );
      }

      test(
        '401, UnauthorizedException',
        () {
          final error = _makeDioError(401);

          final exc = ServerErrorMapper.fromDioError(error);

          expect(exc.runtimeType, UnauthorizedException);
        },
      );

      test(
        '404, NotFoundException',
        () {
          final error = _makeDioError(404);

          final exc = ServerErrorMapper.fromDioError(error);

          expect(exc.runtimeType, NotFoundException);
        },
      );

      test(
        'Other errors ServerErrorException',
        () {
          final error = _makeDioError(403);

          final exc = ServerErrorMapper.fromDioError(error);

          expect(exc.runtimeType, ServerErrorException);
        },
      );
    },
  );
}
