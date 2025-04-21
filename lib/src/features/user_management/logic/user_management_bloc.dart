import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'user_management_bloc.freezed.dart';
part 'user_management_event.dart';
part 'user_management_state.dart';

class UserManagementBloc
    extends Bloc<UserManagementEvent, UserManagementState> {
  final UserRepository _userRepository;

  UserManagementBloc({UserRepository? userRepository})
      : _userRepository = userRepository ?? locator<UserRepository>(),
        super(UserManagementState.initial()) {
    on<_InitUsers>((event, emit) async {
      final response = await _userRepository.getUsers();
      response.when(
          success: (data) {
            emit(state.copyWith(users: data));
          },
          error: (err) {});
    });
    on<_AddUser>((event, emit) async {
      final response = await _userRepository.addUser(event.user);
      response.when(
          success: (data) {
            final updatedUsers = List<User>.from(state.users)..add(data);
            emit(state.copyWith(users: updatedUsers));
          },
          error: (err) {});
    });
    on<_RemoveUser>((event, emit) async {
      final response = await _userRepository.deleteUser(event.user.id);
      response.when(
          success: (data) {
            final updatedUsers = List<User>.from(state.users)
              ..remove(event.user);
            emit(state.copyWith(users: updatedUsers));
          },
          error: (err) {});
    });
    on<_UpdateUser>((event, emit) async {
      final response =
          await _userRepository.updateUser(event.oldUser.id, event.newUser);
      response.when(
          success: (data) {
            final updatedUsers = state.users.map((user) {
              return user == event.oldUser ? event.newUser : user;
            }).toList();
            emit(state.copyWith(users: updatedUsers));
          },
          error: (err) {});
    });
    on<_ChangeUserStatus>((event, emit) async {
      final response =
          await _userRepository.changeUserStatus(event.user.id, event.user);
      response.when(
          success: (data) {
            final updatedUsers = state.users.map((user) {
              return user == event.user ? data : event.user;
            }).toList();
            emit(state.copyWith(users: updatedUsers));
          },
          error: (err) {});
    });

    add(_InitUsers());
  }
}
