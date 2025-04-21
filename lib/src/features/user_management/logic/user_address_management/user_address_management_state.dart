part of 'user_address_management_bloc.dart';

@freezed
class UserAddressManagementState with _$UserAddressManagementState {
  const factory UserAddressManagementState({
    required List<UserAddress> userAddresses,
    required int userId,
  }) = _UserAddressManagementState;

  factory UserAddressManagementState.initial(int userId) {
    return UserAddressManagementState(userAddresses: [], userId: userId);
  }
}
