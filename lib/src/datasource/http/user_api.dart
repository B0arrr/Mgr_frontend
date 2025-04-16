import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/shared/services/storage/storage.dart';

class UserApi {
  final Dio dio;
  final Storage localStorage;

  UserApi({required this.dio, required this.localStorage});

  Future<List<User>> getUsers() async {
    final response = await dio.get('/user');
    return (response.data as List).map((json) => User.fromJson(json)).toList();
  }

  Future<User> getUser(int id) async {
    final response = await dio.get('/user/$id');
    return User.fromJson(response.data);
  }

  Future<User> getLocalUser() async {
    final user = await localStorage.getUser();
    final response = await dio.get('/user/${user?.id}');
    return User.fromJson(response.data);
  }

  Future<User> addUser(User user) async {
    final response = await dio.post('/user', data: user);
    return User.fromJson(response.data);
  }

  Future<User> updateUser(int id, User updatedUser) async {
    final response = await dio.put('/user/$id', data: updatedUser);
    return User.fromJson(response.data);
  }

  Future<User> updateLocalUser(User? user) async {
    final response = await dio.put('/user/${user?.id}', data: user);
    return User.fromJson(response.data);
  }

  Future<User> updateUserPassword(User? user) async {
    final response = await dio.put('/user/password/${user?.id}', data: user);
    return User.fromJson(response.data);
  }

  Future<User> deleteUser(int id) async {
    final response = await dio.delete('/user/$id');
    return User.fromJson(response.data);
  }
}
