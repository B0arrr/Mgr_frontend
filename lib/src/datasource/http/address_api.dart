import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/Address/address.dart';

class AddressApi {
  final Dio dio;

  AddressApi({required this.dio});

  Future<List<Address>> getAddresses() async {
    final response = await dio.get('/address');
    return (response.data as List)
        .map((json) => Address.fromJson(json))
        .toList();
  }
  
  Future<Address> getAddress(int id) async {
    final response = await dio.get('/address/$id');
    return Address.fromJson(response.data);
  } 

  Future<Address> addAddress(Address address) async {
    final response = await dio.post('/address', data: address);
    return Address.fromJson(response.data);
  }

  Future<Address> updateAddress(int id, Address address) async {
    final response = await dio.put('/address/$id', data: address);
    return Address.fromJson(response.data);
  }

  Future<Address> deleteAddress(int id) async {
    final response = await dio.delete('/address/$id');
    return Address.fromJson(response.data);
  }
}
