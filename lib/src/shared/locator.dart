import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:mgr_frontend/src/core/routing/app_router.dart';
import 'package:mgr_frontend/src/datasource/http/address_api.dart';
import 'package:mgr_frontend/src/datasource/http/dio_config.dart';
import 'package:mgr_frontend/src/datasource/http/example_api.dart';
import 'package:mgr_frontend/src/datasource/http/login_api.dart';
import 'package:mgr_frontend/src/datasource/http/user_api.dart';
import 'package:mgr_frontend/src/datasource/repositories/address_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/example_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/login_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_repository.dart';
import 'package:mgr_frontend/src/shared/services/app_logger.dart';
import 'package:mgr_frontend/src/shared/services/storage/in_memory_storage.dart';
import 'package:mgr_frontend/src/shared/services/storage/storage.dart';

final GetIt locator = GetIt.instance
  ..registerLazySingleton(() => DioConfig())
  ..registerLazySingleton(() => AppRouter())
  ..registerLazySingleton<AppLogger>(() => AppLogger())
  ..registerLazySingleton<FlutterSecureStorage>(
      () => const FlutterSecureStorage())
  ..registerLazySingleton<Storage>(() => InMemoryStorage())
  ..registerLazySingleton(() => ExampleApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => ExampleRepository())
  ..registerLazySingleton(() => LoginApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => LoginRepository())
  ..registerLazySingleton(() =>
      UserApi(dio: locator<DioConfig>().dio, localStorage: locator<Storage>()))
  ..registerLazySingleton(() => UserRepository())
  ..registerLazySingleton(() => AddressApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => AddressRepository());
