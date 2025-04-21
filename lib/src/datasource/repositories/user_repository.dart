import 'package:mgr_frontend/src/datasource/http/user_api.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';
import 'package:mgr_frontend/src/shared/services/storage/storage.dart';

class UserRepository extends BaseRepository {
  final UserApi _userApi;
  final Storage _localStorage;

  UserRepository({UserApi? userApi, Storage? storage})
      : _userApi = userApi ?? locator<UserApi>(),
        _localStorage = storage ?? locator<Storage>();

  Future<ApiResponse<List<User>, ApiError>> getUsers() async {
    return runApiCall(call: () async {
      final response = await _userApi.getUsers();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<User, ApiError>> getUser(int id) async {
    return runApiCall(call: () async {
      final response = await _userApi.getUser(id);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<User, ApiError>> getLocalUser() async {
    return runApiCall(call: () async {
      final response = await _userApi.getLocalUser();
      await _localStorage.saveUser(user: response);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<User, ApiError>> addUser(User user) async {
    return runApiCall(call: () async {
      final response = await _userApi.addUser(user);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<User, ApiError>> updateUser(int id, User user) async {
    return runApiCall(call: () async {
      final response = await _userApi.updateUser(id, user);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<User, ApiError>> updateLocalUser(User? user) async {
    return runApiCall(call: () async {
      final response = await _userApi.updateLocalUser(user);
      await _localStorage.saveUser(user: response);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<User, ApiError>> updatePassword(String password) async {
    return runApiCall(call: () async {
      final user = await _localStorage.getUser();
      user?.password = password;
      final response = await _userApi.updateUserPassword(user);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<User, ApiError>> changeUserStatus(
      int id, User user) async {
    return runApiCall(call: () async {
      user.is_active = !user.is_active;
      final response = await _userApi.updateUser(id, user);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<User, ApiError>> deleteUser(int id) async {
    return runApiCall(call: () async {
      final response = await _userApi.deleteUser(id);
      return ApiResponse.success(response);
    });
  }
}
