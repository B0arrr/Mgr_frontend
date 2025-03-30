import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/Address/address.dart';
import 'package:mgr_frontend/src/datasource/repositories/address_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'address_management_bloc.freezed.dart';

part 'address_management_event.dart';

part 'address_management_state.dart';

class AddressManagementBloc
    extends Bloc<AddressManagementEvent, AddressManagementState> {
  final AddressRepository _addressRepository;

  AddressManagementBloc({AddressRepository? addressRepository})
      : _addressRepository = addressRepository ?? locator<AddressRepository>(),
        super(AddressManagementState.initial()) {
    on<_InitAddresses>((event, emit) async {
      final response = await _addressRepository.getAddresses();
      response.when(
          success: (data) {
            emit(state.copyWith(addresses: data));
          },
          error: (err) {});
    });
    on<_AddAddress>((event, emit) async {
      final response = await _addressRepository.addAddress(event.address);
      response.when(success: (data) {
        final updatedAddresses = List<Address>.from(state.addresses)
          ..add(data);
        emit(state.copyWith(addresses: updatedAddresses));
      }, error: (err) {});
    });
    on<_RemoveAddress>((event, emit) async {
      final response = await _addressRepository.deleteAddress(event.address.id);
      response.when(success: (data) {
        final updatedAddresses = List<Address>.from(state.addresses)
          ..remove(event.address);
        emit(state.copyWith(addresses: updatedAddresses));
      }, error: (err) {});
    });
    on<_UpdateAddress>((event, emit) async {
      final response = await _addressRepository.updateAddress(
          event.oldAddress.id, event.newAddress);
      response.when(success: (data) {
        final updatedAddresses = state.addresses.map((address) {
          return address == event.oldAddress ? event.newAddress : address;
        }).toList();
        emit(state.copyWith(addresses: updatedAddresses));
      }, error: (err) {});
    });

    add(_InitAddresses());
  }
}
