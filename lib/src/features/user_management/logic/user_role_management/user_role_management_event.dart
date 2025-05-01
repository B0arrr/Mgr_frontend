part of 'user_role_management_bloc.dart';

@freezed
class UserRoleManagementEvent with _$UserRoleManagementEvent {
  const factory UserRoleManagementEvent.initUserRole() = _InitUserRole;

  const factory UserRoleManagementEvent.addUserRole(UserRole userRole) =
      _AddUserRole;

  const factory UserRoleManagementEvent.removeUserRole(UserRole userRole) =
      _RemoveUserRole;

  const factory UserRoleManagementEvent.updateUserRole({
    required UserRole oldUserRole,
    required UserRole newUserRole,
  }) = _UpdateUserRole;
}
