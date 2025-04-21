part of 'user_manager_management_bloc.dart';

@freezed
class UserManagerManagementState with _$UserManagerManagementState {
  const factory UserManagerManagementState({
    required List<UserManager> userManagers,
    required int managerId,
  }) = _UserManagerManagementState;

  factory UserManagerManagementState.initial(int managerId) {
    return UserManagerManagementState(userManagers: [], managerId: managerId);
  }
}
