part of 'user_address_management_bloc.dart';

@freezed
class UserAddressManagementEvent with _$UserAddressManagementEvent {
  const factory UserAddressManagementEvent.initUserAddress(int userId) =
      _InitUserAddress;

  const factory UserAddressManagementEvent.addUserAddress(
      UserAddress userAddress) = _AddUserAddress;

  const factory UserAddressManagementEvent.removeUserAddress(
      UserAddress userAddress) = _RemoveUserAddress;

  const factory UserAddressManagementEvent.updateUserAddress({
    required UserAddress oldUserAddress,
    required UserAddress newUserAddress,
  }) = _UpdateUserAddress;
}
