import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/Address/address.dart';
import 'package:mgr_frontend/src/datasource/models/UserAddress/user_address.dart';
import 'package:mgr_frontend/src/datasource/repositories/address_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_address_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'user_address_management_bloc.freezed.dart';
part 'user_address_management_event.dart';
part 'user_address_management_state.dart';

class UserAddressManagementBloc
    extends Bloc<UserAddressManagementEvent, UserAddressManagementState> {
  final UserAddressRepository _userAddressRepository;
  final AddressRepository _addressRepository;

  UserAddressManagementBloc({
    UserAddressRepository? userAddressRepository,
    AddressRepository? addressRepository,
    required int userId,
  })  : _userAddressRepository =
            userAddressRepository ?? locator<UserAddressRepository>(),
        _addressRepository = addressRepository ?? locator<AddressRepository>(),
        super(UserAddressManagementState.initial(userId)) {
    on<_InitUserAddress>((event, emit) async {
      final response = await _userAddressRepository.getUserAddresses();
      response.when(
          success: (data) {
            data.removeWhere(
                (userAddress) => userAddress.user_id != state.userId);
            emit(state.copyWith(userAddresses: data, userId: event.userId));
          },
          error: (err) {});
    });
    on<_AddUserAddress>((event, emit) async {
      final response =
          await _userAddressRepository.addUserAddress(event.userAddress);
      response.when(
          success: (data) {
            final updatedUserAddresses =
                List<UserAddress>.from(state.userAddresses)..add(data);
            emit(state.copyWith(userAddresses: updatedUserAddresses));
          },
          error: (err) {});
    });
    on<_RemoveUserAddress>((event, emit) async {
      final response =
          await _userAddressRepository.deleteUserAddress(event.userAddress.id);
      response.when(
          success: (data) {
            final updatedUserAddresses =
                List<UserAddress>.from(state.userAddresses)
                  ..remove(event.userAddress);
            emit(state.copyWith(userAddresses: updatedUserAddresses));
          },
          error: (err) {});
    });
    on<_UpdateUserAddress>((event, emit) async {
      final response = await _userAddressRepository.updateUserAddress(
          event.oldUserAddress.id, event.newUserAddress);
      response.when(
          success: (data) {
            final updatedUserAddresses = state.userAddresses.map((userAddress) {
              return userAddress == event.oldUserAddress
                  ? event.newUserAddress
                  : userAddress;
            }).toList();
            emit(state.copyWith(userAddresses: updatedUserAddresses));
          },
          error: (err) {});
    });

    add(_InitUserAddress(state.userId));
  }

  Future<List<Address>> getAddressList() async {
    List<Address> addressList = [];
    final response = await _addressRepository.getAddresses();
    response.when(success: (data) => addressList = data, error: (err) {});
    final addressesToRemove = state.userAddresses
        .map((ua) => ua.addresses)
        .whereType<Address>() // filters out nulls
        .toSet();
    addressList.removeWhere(addressesToRemove.contains);
    return addressList;
  }

  Future<Address?> getAddress(int id) async {
    Address? address;
    final response = await _addressRepository.getAddress(id);
    response.when(
        success: (data) {
          address = data;
        },
        error: (err) {});
    return address;
  }
}
