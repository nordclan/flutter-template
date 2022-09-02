import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_project/src/services/services/dio/dio_module.dart';

/// Scope of dependencies for whole app life
/// Here is all global singletones
class AppScope extends ProviderObserver {
  // Http client
  static Dio dio = DioModule().dio;
}
