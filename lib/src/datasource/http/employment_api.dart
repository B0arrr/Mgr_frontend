import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/Employment/employment.dart';

class EmploymentApi {
  final Dio dio;

  EmploymentApi({required this.dio});

  Future<List<Employment>> getEmployments() async {
    final response = await dio.get('/employment');
    return (response.data as List)
        .map((json) => Employment.fromJson(json))
        .toList();
  }

  Future<Employment> getEmployment(int id) async {
    final response = await dio.get('/employment/$id');
    return Employment.fromJson(response.data);
  }

  Future<Employment> addEmployment(Employment employment) async {
    final response = await dio.post('/employment', data: employment);
    return Employment.fromJson(response.data);
  }

  Future<Employment> updateEmployment(int id, Employment employment) async {
    final response = await dio.put('/employment/$id', data: employment);
    return Employment.fromJson(response.data);
  }

  Future<Employment> deleteEmployment(int id) async {
    final response = await dio.delete('/employment/$id');
    return Employment.fromJson(response.data);
  }
}
