import 'package:get_it/get_it.dart';
import 'package:mgr_frontend/src/core/routing/app_router.dart';
import 'package:mgr_frontend/src/datasource/http/dio_config.dart';
import 'package:mgr_frontend/src/datasource/http/example_api.dart';
import 'package:mgr_frontend/src/datasource/repositories/example_repository.dart';

final GetIt locator = GetIt.instance
  ..registerLazySingleton(() => DioConfig())
  ..registerLazySingleton(() => AppRouter())
  ..registerLazySingleton(() => ExampleApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => ExampleRepository());
