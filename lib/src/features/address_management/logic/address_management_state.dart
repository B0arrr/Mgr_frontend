part of 'address_management_bloc.dart';

@freezed
class AddressManagementState with _$AddressManagementState {
  const factory AddressManagementState(
      {required List<Address> addresses,}) = _AddressManagementState;

  factory AddressManagementState.initial() {
    return AddressManagementState(addresses: []);
  }

}