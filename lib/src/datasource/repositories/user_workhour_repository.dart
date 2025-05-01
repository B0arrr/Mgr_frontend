import 'package:mgr_frontend/src/datasource/http/user_workhour_api.dart';
import 'package:mgr_frontend/src/datasource/models/UserWorkhour/user_workhour.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

class UserWorkHourRepository extends BaseRepository {
  final UserWorkHourApi _userWorkHourApi;

  UserWorkHourRepository({UserWorkHourApi? userWorkHourApi})
      : _userWorkHourApi = userWorkHourApi ?? locator<UserWorkHourApi>();

  Future<ApiResponse<List<UserWorkHour>, ApiError>> getUserWorkHours() async {
    return runApiCall(call: () async {
      final response = await _userWorkHourApi.getUserWorkHours();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserWorkHour, ApiError>> getUserWorkHour(int id) async {
    return runApiCall(call: () async {
      final response = await _userWorkHourApi.getUserWorkHour(id);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserWorkHour, ApiError>> addUserWorkHour(
      UserWorkHour userWorkHour) async {
    return runApiCall(call: () async {
      final response = await _userWorkHourApi.addUserWorkHour(userWorkHour);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserWorkHour, ApiError>> updateUserWorkHour(
      int id, UserWorkHour userWorkHour) async {
    return runApiCall(call: () async {
      final response = await _userWorkHourApi.updateUserWorkHour(id, userWorkHour);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserWorkHour, ApiError>> deleteUserWorkHour(int id) async {
    return runApiCall(call: () async {
      final response = await _userWorkHourApi.deleteUserWorkHour(id);
      return ApiResponse.success(response);
    });
  }
}
