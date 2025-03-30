import 'package:mgr_frontend/src/datasource/http/address_api.dart';
import 'package:mgr_frontend/src/datasource/models/Address/address.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

class AddressRepository extends BaseRepository {
  final AddressApi _addressApi;

  AddressRepository({AddressApi? addressApi})
      : _addressApi = addressApi ?? locator<AddressApi>();

  Future<ApiResponse<List<Address>, ApiError>> getAddresses() async {
    return runApiCall(call: () async {
      final response = await _addressApi.getAddresses();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Address, ApiError>> getAddress(int id) async {
    return runApiCall(call: () async {
      final response = await _addressApi.getAddress(id);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Address, ApiError>> addAddress(Address address) async {
    return runApiCall(call: () async {
      final response = await _addressApi.addAddress(address);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Address, ApiError>> updateAddress(
      int id, Address address) async {
    return runApiCall(call: () async {
      final response = await _addressApi.updateAddress(id, address);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Address, ApiError>> deleteAddress(int id) async {
    return runApiCall(call: () async {
      final response = await _addressApi.deleteAddress(id);
      return ApiResponse.success(response);
    });
  }
}
