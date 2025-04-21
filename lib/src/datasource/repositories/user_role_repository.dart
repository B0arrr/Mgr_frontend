import 'package:mgr_frontend/src/datasource/http/user_role_api.dart';
import 'package:mgr_frontend/src/datasource/models/UserRole/user_role.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

class UserRoleRepository extends BaseRepository {
  final UserRoleApi _userRoleApi;

  UserRoleRepository({UserRoleApi? userRoleApi})
      : _userRoleApi = userRoleApi ?? locator<UserRoleApi>();

  Future<ApiResponse<List<UserRole>, ApiError>> getUserRoles() async {
    return runApiCall(call: () async {
      final response = await _userRoleApi.getUserRoles();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserRole, ApiError>> getUserRole(int id) async {
    return runApiCall(call: () async {
      final response = await _userRoleApi.getUserRole(id);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserRole, ApiError>> addUserRole(UserRole userRole) async {
    return runApiCall(call: () async {
      final response = await _userRoleApi.addUserRole(userRole);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserRole, ApiError>> updateUserRole(
      int id, UserRole userRole) async {
    return runApiCall(call: () async {
      final response = await _userRoleApi.updateUserRole(id, userRole);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserRole, ApiError>> deleteUserRole(int id) async {
    return runApiCall(call: () async {
      final response = await _userRoleApi.deleteUserRole(id);
      return ApiResponse.success(response);
    });
  }
}
