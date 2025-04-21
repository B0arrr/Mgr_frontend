import 'package:mgr_frontend/src/datasource/http/user_manager_api.dart';
import 'package:mgr_frontend/src/datasource/models/UserManager/user_manager.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

class UserManagerRepository extends BaseRepository {
  final UserManagerApi _userManagerApi;

  UserManagerRepository({UserManagerApi? userManagerApi})
      : _userManagerApi = userManagerApi ?? locator<UserManagerApi>();

  Future<ApiResponse<List<UserManager>, ApiError>> getUserManagers() async {
    return runApiCall(call: () async {
      final response = await _userManagerApi.getUserManagers();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserManager, ApiError>> getUserManager(int id) async {
    return runApiCall(call: () async {
      final response = await _userManagerApi.getUserManager(id);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserManager, ApiError>> addUserManager(
      UserManager userManager) async {
    return runApiCall(call: () async {
      final response = await _userManagerApi.addUserManager(userManager);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserManager, ApiError>> updateUserManager(
      int id, UserManager userManager) async {
    return runApiCall(call: () async {
      final response = await _userManagerApi.updateUserManager(id, userManager);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserManager, ApiError>> deleteUserManager(int id) async {
    return runApiCall(call: () async {
      final response = await _userManagerApi.deleteUserManager(id);
      return ApiResponse.success(response);
    });
  }
}
