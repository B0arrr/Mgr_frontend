import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/datasource/models/UserManager/user_manager.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_manager_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'user_manager_management_bloc.freezed.dart';
part 'user_manager_management_event.dart';
part 'user_manager_management_state.dart';

class UserManagerManagementBloc
    extends Bloc<UserManagerManagementEvent, UserManagerManagementState> {
  final UserManagerRepository _userManagerRepository;
  final UserRepository _userRepository;

  UserManagerManagementBloc({
    UserManagerRepository? userManagerRepository,
    UserRepository? userRepository,
    required int managerId,
  })  : _userManagerRepository =
            userManagerRepository ?? locator<UserManagerRepository>(),
        _userRepository = userRepository ?? locator<UserRepository>(),
        super(UserManagerManagementState.initial(managerId)) {
    on<_InitUserManager>((event, emit) async {
      final response = await _userManagerRepository.getUserManagers();
      response.when(
          success: (data) {
            data.removeWhere(
                (userManager) => userManager.manager_id != state.managerId);
            emit(state.copyWith(userManagers: data));
          },
          error: (err) {});
    });
    on<_AddUserManager>((event, emit) async {
      final response =
          await _userManagerRepository.addUserManager(event.userManager);
      response.when(
          success: (data) {
            final updatedUserManagers =
                List<UserManager>.from(state.userManagers)..add(data);
            emit(state.copyWith(userManagers: updatedUserManagers));
          },
          error: (err) {});
    });
    on<_RemoveUserManager>((event, emit) async {
      final response =
          await _userManagerRepository.deleteUserManager(event.userManager.id);
      response.when(
          success: (data) {
            final updatedUserManagers =
                List<UserManager>.from(state.userManagers)
                  ..remove(event.userManager);
            emit(state.copyWith(userManagers: updatedUserManagers));
          },
          error: (err) {});
    });
    on<_UpdateUserManager>((event, emit) async {
      final response = await _userManagerRepository.updateUserManager(
          event.oldUserManager.id, event.newUserManager);
      response.when(
          success: (data) {
            final updatedUserManagers = state.userManagers.map((userManager) {
              return userManager == event.oldUserManager
                  ? event.newUserManager
                  : userManager;
            }).toList();
            emit(state.copyWith(userManagers: updatedUserManagers));
          },
          error: (err) {});
    });

    add(_InitUserManager());
  }

  Future<List<User>> getUserList() async {
    List<User> users = [];
    final response = await _userRepository.getUsers();
    response.when(
        success: (data) {
          users = data;
        },
        error: (err) {});
    List<User?> usersFromUserManager =
        state.userManagers.map((userManager) => userManager.users).toList();
    users.removeWhere((user) =>
        user.id == state.managerId || usersFromUserManager.contains(user));
    return users;
  }

  Future<User?> getUser(int userId) async {
    User? user;
    final response = await _userRepository.getUser(userId);
    response.when(
        success: (data) {
          user = data;
        },
        error: (err) {});
    return user;
  }
}
