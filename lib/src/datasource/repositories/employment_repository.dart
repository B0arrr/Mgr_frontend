import 'package:mgr_frontend/src/datasource/http/employment_api.dart';
import 'package:mgr_frontend/src/datasource/models/Employment/employment.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

class EmploymentRepository extends BaseRepository {
  final EmploymentApi _employmentApi;

  EmploymentRepository({EmploymentApi? employmentApi})
      : _employmentApi = employmentApi ?? locator<EmploymentApi>();

  Future<ApiResponse<List<Employment>, ApiError>> getEmployments() async {
    return runApiCall(call: () async {
      final response = await _employmentApi.getEmployments();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Employment, ApiError>> getEmployment(int id) async {
    return runApiCall(call: () async {
      final response = await _employmentApi.getEmployment(id);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Employment, ApiError>> addEmployment(
      Employment employment) async {
    return runApiCall(call: () async {
      final response = await _employmentApi.addEmployment(employment);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Employment, ApiError>> updateEmployment(
      int id, Employment employment) async {
    return runApiCall(call: () async {
      final response = await _employmentApi.updateEmployment(id, employment);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Employment, ApiError>> deleteEmployment(int id) async {
    return runApiCall(call: () async {
      final response = await _employmentApi.deleteEmployment(id);
      return ApiResponse.success(response);
    });
  }
}
