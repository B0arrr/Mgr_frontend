import 'package:mgr_frontend/src/datasource/http/department_api.dart';
import 'package:mgr_frontend/src/datasource/models/Department/department.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

class DepartmentRepository extends BaseRepository {
  final DepartmentApi _departmentApi;

  DepartmentRepository({DepartmentApi? departmentApi})
      : _departmentApi = departmentApi ?? locator<DepartmentApi>();

  Future<ApiResponse<List<Department>, ApiError>> getDepartments() async {
    return runApiCall(call: () async {
      final response = await _departmentApi.getDepartments();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Department, ApiError>> getDepartment(int id) async {
    return runApiCall(call: () async {
      final response = await _departmentApi.getDepartment(id);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Department, ApiError>> addDepartment(
      Department department) async {
    return runApiCall(call: () async {
      final response = await _departmentApi.addDepartment(department);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Department, ApiError>> updateDepartment(
      int id, Department department) async {
    return runApiCall(call: () async {
      final response = await _departmentApi.updateDepartment(id, department);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Department, ApiError>> deleteDepartment(int id) async {
    return runApiCall(call: () async {
      final response = await _departmentApi.deleteDepartment(id);
      return ApiResponse.success(response);
    });
  }
}
