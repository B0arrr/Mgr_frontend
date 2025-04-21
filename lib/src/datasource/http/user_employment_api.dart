import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/UserEmployment/user_employment.dart';

class UserEmploymentApi {
  final Dio dio;

  UserEmploymentApi({required this.dio});

  Future<List<UserEmployment>> getUserEmployments() async {
    final response = await dio.get('/user_employment');
    return (response.data as List)
        .map((json) => UserEmployment.fromJson(json))
        .toList();
  }

  Future<UserEmployment> getUserEmployment(int id) async {
    final response = await dio.get('/user_employment/$id');
    return UserEmployment.fromJson(response.data);
  }

  Future<UserEmployment> addUserEmployment(UserEmployment employment) async {
    final response = await dio.post('/user_employment', data: employment);
    return UserEmployment.fromJson(response.data);
  }

  Future<UserEmployment> updateUserEmployment(
      int id, UserEmployment employment) async {
    final response = await dio.put('/user_employment/$id', data: employment);
    return UserEmployment.fromJson(response.data);
  }

  Future<UserEmployment> deleteUserEmployment(int id) async {
    final response = await dio.delete('/user_employment/$id');
    return UserEmployment.fromJson(response.data);
  }
}
