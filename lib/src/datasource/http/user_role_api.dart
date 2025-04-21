import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/UserRole/user_role.dart';

class UserRoleApi {
  final Dio dio;

  UserRoleApi({required this.dio});

  Future<List<UserRole>> getUserRoles() async {
    final response = await dio.get('/user_role');
    return (response.data as List)
        .map((json) => UserRole.fromJson(json))
        .toList();
  }

  Future<UserRole> getUserRole(int id) async {
    final response = await dio.get('/user_role/$id');
    return UserRole.fromJson(response.data);
  }

  Future<UserRole> addUserRole(UserRole userRole) async {
    final response = await dio.post('/user_role', data: userRole);
    return UserRole.fromJson(response.data);
  }

  Future<UserRole> updateUserRole(int id, UserRole userRole) async {
    final response = await dio.put('/user_role/$id', data: userRole);
    return UserRole.fromJson(response.data);
  }

  Future<UserRole> deleteUserRole(int id) async {
    final response = await dio.delete('/user_role/$id');
    return UserRole.fromJson(response.data);
  }
}
