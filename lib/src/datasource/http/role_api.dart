import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/Role/role.dart';

class RoleApi {
  final Dio dio;

  RoleApi({required this.dio});

  Future<List<Role>> getRoles() async {
    final response = await dio.get('/role');
    return (response.data as List).map((json) => Role.fromJson(json)).toList();
  }

  Future<Role> getRole(int id) async {
    final response = await dio.get('/role/$id');
    return Role.fromJson(response.data);
  }

  Future<Role> addRole(Role role) async {
    final response = await dio.post('/role', data: role);
    return Role.fromJson(response.data);
  }

  Future<Role> updateRole(int id, Role role) async {
    final response = await dio.put('/role/$id', data: role);
    return Role.fromJson(response.data);
  }

  Future<Role> deleteRole(int id) async {
    final response = await dio.delete('/role/$id');
    return Role.fromJson(response.data);
  }
}
