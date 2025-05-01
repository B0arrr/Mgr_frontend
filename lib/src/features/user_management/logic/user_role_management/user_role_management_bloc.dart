import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/Role/role.dart';
import 'package:mgr_frontend/src/datasource/models/UserRole/user_role.dart';
import 'package:mgr_frontend/src/datasource/repositories/role_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_role_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'user_role_management_bloc.freezed.dart';
part 'user_role_management_event.dart';
part 'user_role_management_state.dart';

class UserRoleManagementBloc
    extends Bloc<UserRoleManagementEvent, UserRoleManagementState> {
  final UserRoleRepository _userRoleRepository;
  final RoleRepository _roleRepository;

  UserRoleManagementBloc({
    UserRoleRepository? userRoleRepository,
    RoleRepository? roleRepository,
    required int userId,
  })  : _userRoleRepository =
            userRoleRepository ?? locator<UserRoleRepository>(),
        _roleRepository = roleRepository ?? locator<RoleRepository>(),
        super(UserRoleManagementState.initial(userId)) {
    on<_InitUserRole>((event, emit) async {
      final response = await _userRoleRepository.getUserRoles();
      response.when(
          success: (data) {
            data.removeWhere((role) => role.user_id != state.userId);
            emit(state.copyWith(userRoles: data));
          },
          error: (err) {});
    });
    on<_AddUserRole>((event, emit) async {
      final response = await _userRoleRepository.addUserRole(event.userRole);
      response.when(
          success: (data) {
            final updatedUserRoles = List<UserRole>.from(state.userRoles)
              ..add(data);
            emit(state.copyWith(userRoles: updatedUserRoles));
          },
          error: (err) {});
    });
    on<_RemoveUserRole>((event, emit) async {
      final response =
          await _userRoleRepository.deleteUserRole(event.userRole.id);
      response.when(
          success: (data) {
            final updatedUserRoles = List<UserRole>.from(state.userRoles)
              ..remove(event.userRole);
            emit(state.copyWith(userRoles: updatedUserRoles));
          },
          error: (err) {});
    });
    on<_UpdateUserRole>((event, emit) async {
      final response = await _userRoleRepository.updateUserRole(
          event.oldUserRole.id, event.newUserRole);
      response.when(
          success: (data) {
            final updatedUserRoles = state.userRoles.map((userRole) {
              return userRole == event.oldUserRole
                  ? event.newUserRole
                  : userRole;
            }).toList();
            emit(state.copyWith(userRoles: updatedUserRoles));
          },
          error: (err) {});
    });

    add(_InitUserRole());
  }

  Future<List<Role>> getRoleList() async {
    List<Role> roleList = [];
    final response = await _roleRepository.getRoles();
    response.when(
        success: (data) {
          roleList = data;
        },
        error: (err) {});
    final roles = state.userRoles.map((userRole) => userRole.roles).toList();
    roles.removeWhere((role) => roles.contains(role));
    return roleList;
  }

  Future<Role?> getRole(int roleId) async {
    Role? role;
    final response = await _roleRepository.getRole(roleId);
    response.when(
        success: (data) {
          role = data;
        },
        error: (err) {});
    return role;
  }
}
