import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/shared/services/storage/storage.dart';

class UserApi {
  final Dio dio;
  final Storage localStorage;

  UserApi({required this.dio, required this.localStorage});

  Future<User> getUser() async {
    final user = await localStorage.getUser();
    final response = await dio.get('/user/${user?.id}');
    return User.fromJson(response.data);
  }

  Future<User> updateUser(User? updatedUser) async {
    final response = await dio.put('/user/${updatedUser?.id}', data: updatedUser);
    return User.fromJson(response.data);
  }

  Future<User> updateUserPassword(User? user) async {
    final response = await dio.put('/user/password/${user?.id}', data: user);
    return User.fromJson(response.data);
  }
}