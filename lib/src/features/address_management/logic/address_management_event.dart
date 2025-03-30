part of 'address_management_bloc.dart';

@freezed
class AddressManagementEvent with _$AddressManagementEvent {
  const factory AddressManagementEvent.initAddresses() = _InitAddresses;

  const factory AddressManagementEvent.addAddress(Address address) =
      _AddAddress;

  const factory AddressManagementEvent.removeAddress(Address address) =
      _RemoveAddress;

  const factory AddressManagementEvent.updateAddress({
    required Address oldAddress,
    required Address newAddress,
  }) = _UpdateAddress;
}
