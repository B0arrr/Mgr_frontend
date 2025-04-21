import 'package:mgr_frontend/src/datasource/http/user_employment_api.dart';
import 'package:mgr_frontend/src/datasource/models/UserEmployment/user_employment.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

class UserEmploymentRepository extends BaseRepository {
  final UserEmploymentApi _userEmploymentApi;

  UserEmploymentRepository({UserEmploymentApi? userEmploymentApi})
      : _userEmploymentApi = userEmploymentApi ?? locator<UserEmploymentApi>();

  Future<ApiResponse<List<UserEmployment>, ApiError>>
      getUserEmployments() async {
    return runApiCall(call: () async {
      final response = await _userEmploymentApi.getUserEmployments();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserEmployment, ApiError>> getUserEmployment(
      int id) async {
    return runApiCall(call: () async {
      final response = await _userEmploymentApi.getUserEmployment(id);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserEmployment, ApiError>> addUserEmployment(
      UserEmployment userEmployment) async {
    return runApiCall(call: () async {
      final response =
          await _userEmploymentApi.addUserEmployment(userEmployment);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserEmployment, ApiError>> updateUserEmployment(
      int id, UserEmployment userEmployment) async {
    return runApiCall(call: () async {
      final response =
          await _userEmploymentApi.updateUserEmployment(id, userEmployment);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserEmployment, ApiError>> deleteUserEmployment(
      int id) async {
    return runApiCall(call: () async {
      final response = await _userEmploymentApi.deleteUserEmployment(id);
      return ApiResponse.success(response);
    });
  }
}
