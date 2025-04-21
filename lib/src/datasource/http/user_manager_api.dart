import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/UserManager/user_manager.dart';

class UserManagerApi {
  final Dio dio;

  UserManagerApi({required this.dio});

  Future<List<UserManager>> getUserManagers() async {
    final response = await dio.get('/user_manager');
    return (response.data as List)
        .map((json) => UserManager.fromJson(json))
        .toList();
  }

  Future<UserManager> getUserManager(int id) async {
    final response = await dio.get('/user_manager/$id');
    return UserManager.fromJson(response.data);
  }

  Future<UserManager> addUserManager(UserManager manager) async {
    final response = await dio.post('/user_manager', data: manager);
    return UserManager.fromJson(response.data);
  }

  Future<UserManager> updateUserManager(int id, UserManager manager) async {
    final response = await dio.put('/user_manager/$id', data: manager);
    return UserManager.fromJson(response.data);
  }

  Future<UserManager> deleteUserManager(int id) async {
    final response = await dio.delete('/user_manager/$id');
    return UserManager.fromJson(response.data);
  }
}
