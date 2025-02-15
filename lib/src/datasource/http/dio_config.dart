import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/core/environment.dart';
import 'package:mgr_frontend/src/shared/services/storage/local_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../shared/locator.dart';
import '../../shared/services/storage/storage.dart';

class DioConfig {
  final Dio dio;
  final Storage _localStorage;

  DioConfig({
    Dio? dio,
    LocalStorage? localStorage,
  })  : dio = dio ??
            Dio(
              BaseOptions(
                baseUrl: Environment.baseUrl,
                headers: {'Accept': 'application/json'},
                contentType: 'application/json',
              ),
            ),
        _localStorage = localStorage ?? locator<Storage>() {
    this.dio.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
        ));

    this.dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        String? token = await _localStorage.getToken();
        if (token.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      }));
  }
}
