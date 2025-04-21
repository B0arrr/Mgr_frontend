import 'package:mgr_frontend/src/datasource/http/user_address_api.dart';
import 'package:mgr_frontend/src/datasource/models/UserAddress/user_address.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

class UserAddressRepository extends BaseRepository {
  final UserAddressApi _userAddressApi;

  UserAddressRepository({UserAddressApi? userAddressApi})
      : _userAddressApi = userAddressApi ?? locator<UserAddressApi>();

  Future<ApiResponse<List<UserAddress>, ApiError>> getUserAddresses() async {
    return runApiCall(call: () async {
      final response = await _userAddressApi.getUserAddresses();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserAddress, ApiError>> getUserAddress(int id) async {
    return runApiCall(call: () async {
      final response = await _userAddressApi.getUserAddress(id);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserAddress, ApiError>> addUserAddress(
      UserAddress userAddress) async {
    return runApiCall(call: () async {
      final response = await _userAddressApi.addUserAddress(userAddress);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserAddress, ApiError>> updateUserAddress(
      int id, UserAddress userAddress) async {
    return runApiCall(call: () async {
      final response = await _userAddressApi.updateUserAddress(id, userAddress);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<UserAddress, ApiError>> deleteUserAddress(int id) async {
    return runApiCall(call: () async {
      final response = await _userAddressApi.deleteUserAddress(id);
      return ApiResponse.success(response);
    });
  }
}
