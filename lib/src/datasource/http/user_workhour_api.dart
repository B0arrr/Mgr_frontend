import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/UserWorkhour/user_workhour.dart';

class UserWorkHourApi {
  final Dio dio;

  UserWorkHourApi({required this.dio});

  Future<List<UserWorkHour>> getUserWorkHours() async {
    final response = await dio.get('/user_workhour');
    return (response.data as List)
        .map((json) => UserWorkHour.fromJson(json))
        .toList();
  }

  Future<UserWorkHour> getUserWorkHour(int id) async {
    final response = await dio.get('/user_workhour/$id');
    return UserWorkHour.fromJson(response.data);
  }

  Future<UserWorkHour> addUserWorkHour(UserWorkHour userWorkHour) async {
    final response = await dio.post('/user_workhour', data: userWorkHour);
    return UserWorkHour.fromJson(response.data);
  }

  Future<UserWorkHour> updateUserWorkHour(int id, UserWorkHour userWorkHour) async {
    final response = await dio.put('/user_workhour/$id', data: userWorkHour);
    return UserWorkHour.fromJson(response.data);
  }

  Future<UserWorkHour> deleteUserWorkHour(int id) async {
    final response = await dio.delete('/user_workhour/$id');
    return UserWorkHour.fromJson(response.data);
  }
}
