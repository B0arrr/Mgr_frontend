import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:mgr_frontend/src/core/routing/app_router.dart';
import 'package:mgr_frontend/src/datasource/http/address_api.dart';
import 'package:mgr_frontend/src/datasource/http/company_api.dart';
import 'package:mgr_frontend/src/datasource/http/department_api.dart';
import 'package:mgr_frontend/src/datasource/http/dio_config.dart';
import 'package:mgr_frontend/src/datasource/http/employment_api.dart';
import 'package:mgr_frontend/src/datasource/http/example_api.dart';
import 'package:mgr_frontend/src/datasource/http/login_api.dart';
import 'package:mgr_frontend/src/datasource/http/position_api.dart';
import 'package:mgr_frontend/src/datasource/http/role_api.dart';
import 'package:mgr_frontend/src/datasource/http/user_address_api.dart';
import 'package:mgr_frontend/src/datasource/http/user_api.dart';
import 'package:mgr_frontend/src/datasource/http/user_employment_api.dart';
import 'package:mgr_frontend/src/datasource/http/user_manager_api.dart';
import 'package:mgr_frontend/src/datasource/http/user_role_api.dart';
import 'package:mgr_frontend/src/datasource/http/user_schedule_api.dart';
import 'package:mgr_frontend/src/datasource/http/user_workhour_api.dart';
import 'package:mgr_frontend/src/datasource/repositories/address_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/company_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/department_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/employment_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/example_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/login_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/position_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/role_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_address_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_employment_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_manager_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_role_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_schedule_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_workhour_repository.dart';
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
  ..registerLazySingleton(() => AddressRepository())
  ..registerLazySingleton(() => CompanyApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => CompanyRepository())
  ..registerLazySingleton(() => DepartmentApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => DepartmentRepository())
  ..registerLazySingleton(() => EmploymentApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => EmploymentRepository())
  ..registerLazySingleton(() => PositionApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => PositionRepository())
  ..registerLazySingleton(() => RoleApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => RoleRepository())
  ..registerLazySingleton(() => UserAddressApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => UserAddressRepository())
  ..registerLazySingleton(
      () => UserEmploymentApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => UserEmploymentRepository())
  ..registerLazySingleton(() => UserManagerApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => UserManagerRepository())
  ..registerLazySingleton(() => UserRoleApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => UserRoleRepository())
  ..registerLazySingleton(() => UserWorkHourApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => UserWorkHourRepository())
  ..registerLazySingleton(() => UserScheduleApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => UserScheduleRepository());
