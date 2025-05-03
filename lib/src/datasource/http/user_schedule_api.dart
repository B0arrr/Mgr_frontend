import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/UserSchedule/user_schedule.dart';

class UserScheduleApi {
  final Dio dio;

  UserScheduleApi({required this.dio});

  Future<List<UserSchedule>> getUserSchedules() async {
    final response = await dio.get('/user_schedule');
    return (response.data as List)
        .map((json) => UserSchedule.fromJson(json))
        .toList();
  }

  Future<UserSchedule> getUserSchedule(int id) async {
    final response = await dio.get('/user_schedule/$id');
    return UserSchedule.fromJson(response.data);
  }

  Future<UserSchedule> addUserSchedule(UserSchedule userSchedule) async {
    final response = await dio.post('/user_schedule', data: userSchedule);
    return UserSchedule.fromJson(response.data);
  }

  Future<UserSchedule> updateUserSchedule(
      int id, UserSchedule userSchedule) async {
    final response = await dio.put('/user_schedule/$id', data: userSchedule);
    return UserSchedule.fromJson(response.data);
  }

  Future<UserSchedule> deleteUserSchedule(int id) async {
    final response = await dio.delete('/user_schedule/$id');
    return UserSchedule.fromJson(response.data);
  }
}
