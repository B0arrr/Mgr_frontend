import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/Department/department.dart';

class DepartmentApi {
  final Dio dio;

  DepartmentApi({required this.dio});

  Future<List<Department>> getDepartments() async {
    final response = await dio.get('/department');
    return (response.data as List)
        .map((json) => Department.fromJson(json))
        .toList();
  }

  Future<Department> getDepartment(int id) async {
    final response = await dio.get('/department/$id');
    return Department.fromJson(response.data);
  }

  Future<Department> addDepartment(Department department) async {
    final response = await dio.post('/department', data: department);
    return Department.fromJson(response.data);
  }

  Future<Department> updateDepartment(int id, Department department) async {
    final response = await dio.put('/department/$id', data: department);
    return Department.fromJson(response.data);
  }

  Future<Department> deleteDepartment(int id) async {
    final response = await dio.delete('/department/$id');
    return Department.fromJson(response.data);
  }
}
