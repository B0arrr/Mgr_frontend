part of 'user_address_management_bloc.dart';

@freezed
class UserAddressManagementState with _$UserAddressManagementState {
  const factory UserAddressManagementState({
    required List<Address> addresses,
    required int userId,
  }) = _UserAddressManagementState;

  factory UserAddressManagementState.initial() {
    return UserAddressManagementState(addresses: [], userId: 0);
  }
}
