part of 'user_role_management_bloc.dart';

@freezed
class UserRoleManagementState with _$UserRoleManagementState {
  const factory UserRoleManagementState({
    required List<UserRole> userRoles,
    required int userId,
  }) = _UserRoleManagementState;

  factory UserRoleManagementState.initial(int userId) {
    return UserRoleManagementState(userRoles: [], userId: userId);
  }
}
