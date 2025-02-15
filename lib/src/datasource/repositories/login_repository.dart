import 'package:mgr_frontend/src/datasource/http/dio_config.dart';
import 'package:mgr_frontend/src/datasource/http/login_api.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/shared/services/storage/local_storage.dart';

import '../../shared/locator.dart';
import '../../shared/services/storage/storage.dart';
import '../models/User/user.dart';
import '../models/login/login.dart';
import 'base_repository.dart';

class LoginRepository extends BaseRepository {
  final LoginApi _loginApi;
  final Storage _localStorage;

  LoginRepository({
    LoginApi? loginApi,
    LocalStorage? localStorage,
  })  : _loginApi = loginApi ?? LoginApi(dio: locator<DioConfig>().dio),
        _localStorage = localStorage ?? locator<Storage>();

  Future<ApiResponse<Login, ApiError>> getToken(
      String email, String password) async {
    return runApiCall(call: () async {
      final response = await _loginApi.getToken(email, password);
      await _localStorage.saveToken(value: response.access_token);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<User, ApiError>> getUser() async {
    return runApiCall(call: () async {
      final response = await _loginApi.getUser();
      await _localStorage.write(key: 'user', value: response);
      return ApiResponse.success(response);
    });
  }
}
