import 'package:mgr_frontend/src/datasource/http/dio_config.dart';
import 'package:mgr_frontend/src/datasource/http/login_api.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/models/login/login.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';
import 'package:mgr_frontend/src/shared/services/storage/local_storage.dart';
import 'package:mgr_frontend/src/shared/services/storage/storage.dart';

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
      await _localStorage.saveUser(user: response);
      return ApiResponse.success(response);
    });
  }

  Future<void> logout() async {
    await _localStorage.clear();
  }
}
