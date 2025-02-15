import 'package:dio/dio.dart';

import '../models/User/user.dart';
import '../models/login/login.dart';

class LoginApi {
  final Dio dio;

  LoginApi({required this.dio});

  Future<Login> getToken(String email, String password) async {
    final response = await dio.post('/login/access-token',
        data: {'username': email, 'password': password},
        options: Options(headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/x-www-form-urlencoded'
        }));
    return Login.fromJson(response.data);
  }

  Future<User> getUser() async {
    final response = await dio.post('/login/test-token');
    return User.fromJson(response.data);
  }
}
