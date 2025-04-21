import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/UserAddress/user_address.dart';

class UserAddressApi {
  final Dio dio;

  UserAddressApi({required this.dio});

  Future<List<UserAddress>> getUserAddresses() async {
    final response = await dio.get('/user_address');
    return (response.data as List)
        .map((json) => UserAddress.fromJson(json))
        .toList();
  }

  Future<UserAddress> getUserAddress(int id) async {
    final response = await dio.get('/user_address/$id');
    return UserAddress.fromJson(response.data);
  }

  Future<UserAddress> addUserAddress(UserAddress address) async {
    final response = await dio.post('/user_address', data: address);
    return UserAddress.fromJson(response.data);
  }

  Future<UserAddress> updateUserAddress(int id, UserAddress address) async {
    final response = await dio.put('/user_address/$id', data: address);
    return UserAddress.fromJson(response.data);
  }

  Future<UserAddress> deleteUserAddress(int id) async {
    final response = await dio.delete('/user_address/$id');
    return UserAddress.fromJson(response.data);
  }
}
