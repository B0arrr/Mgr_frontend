import 'package:mgr_frontend/src/datasource/http/role_api.dart';
import 'package:mgr_frontend/src/datasource/models/Role/role.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

class RoleRepository extends BaseRepository {
  final RoleApi _roleApi;

  RoleRepository({RoleApi? roleApi}) : _roleApi = roleApi ?? locator<RoleApi>();

  Future<ApiResponse<List<Role>, ApiError>> getRoles() async {
    return runApiCall(call: () async {
      final response = await _roleApi.getRoles();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Role, ApiError>> getRole(int id) async {
    return runApiCall(call: () async {
      final response = await _roleApi.getRole(id);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Role, ApiError>> addRole(Role role) async {
    return runApiCall(call: () async {
      final response = await _roleApi.addRole(role);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Role, ApiError>> updateRole(int id, Role role) async {
    return runApiCall(call: () async {
      final response = await _roleApi.updateRole(id, role);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Role, ApiError>> deleteRole(int id) async {
    return runApiCall(call: () async {
      final response = await _roleApi.deleteRole(id);
      return ApiResponse.success(response);
    });
  }
}
