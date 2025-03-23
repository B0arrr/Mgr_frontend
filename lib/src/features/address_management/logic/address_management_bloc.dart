import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/Address/address.dart';

part 'address_management_bloc.freezed.dart';
part 'address_management_event.dart';
part 'address_management_state.dart';

class AddressManagementBloc extends Bloc<AddressManagementEvent, AddressManagementState> {
  AddressManagementBloc() : super(AddressManagementState.initial()) {
    on<_AddAddress>((event, emit) {
      final updatedAddresses = List<Address>.from(state.addresses)..add(event.address);
      emit(state.copyWith(addresses: updatedAddresses));
    });
    on<_RemoveAddress>((event, emit) {
      final updatedAddresses = List<Address>.from(state.addresses)..remove(event.address);
      emit(state.copyWith(addresses: updatedAddresses));
    });
    on<_UpdateAddress>((event, emit) {
      final updatedAddresses = state.addresses.map((address) {
        return address == event.oldAddress ? event.newAddress : address;
      }).toList();
      emit(state.copyWith(addresses: updatedAddresses));
    });
  }
}
