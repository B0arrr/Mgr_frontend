import 'package:mgr_frontend/src/datasource/http/user_schedule_api.dart';
import 'package:mgr_frontend/src/datasource/models/UserSchedule/user_schedule.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

class UserScheduleRepository extends BaseRepository {
  final UserScheduleApi _userScheduleApi;

  UserScheduleRepository({UserScheduleApi? userScheduleApi})
      : _userScheduleApi = userScheduleApi ?? locator<UserScheduleApi>();

  Future<ApiResponse<List<UserSchedule>, ApiError>> getUserSchedules() async {
    return runApiCall(call: () async {
      final response = await _userScheduleApi.getUserSchedules();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserSchedule, ApiError>> getUserSchedule(
      int userId) async {
    return runApiCall(call: () async {
      final response = await _userScheduleApi.getUserSchedule(userId);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserSchedule, ApiError>> addUserSchedule(
      UserSchedule userSchedule) async {
    return runApiCall(call: () async {
      final response = await _userScheduleApi.addUserSchedule(userSchedule);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserSchedule, ApiError>> updateUserSchedule(
      int userId, UserSchedule userSchedule) async {
    return runApiCall(call: () async {
      final response =
          await _userScheduleApi.updateUserSchedule(userId, userSchedule);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserSchedule, ApiError>> deleteUserSchedule(
      int userId) async {
    return runApiCall(call: () async {
      final response = await _userScheduleApi.deleteUserSchedule(userId);
      return ApiResponse.success(response);
    });
  }
}
