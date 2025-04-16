import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/UserAddress/user_address.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_address_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'user_address_management_bloc.freezed.dart';
part 'user_address_management_event.dart';
part 'user_address_management_state.dart';

class UserAddressManagementBloc
    extends Bloc<UserAddressManagementEvent, UserAddressManagementState> {
  final UserAddressRepository _userAddressRepository;

  UserAddressManagementBloc({UserAddressRepository? userAddressRepository})
      : _userAddressRepository =
            userAddressRepository ?? locator<UserAddressRepository>(),
        super(UserAddressManagementState.initial()) {
    on<_InitUserAddress>((event, emit) async {});
    on<_AddUserAddress>((event, emit) async {});
    on<_RemoveUserAddress>((event, emit) async {});
    on<_UpdateUserAddress>((event, emit) async {});
  }
}
