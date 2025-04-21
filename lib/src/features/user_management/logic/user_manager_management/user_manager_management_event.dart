part of 'user_manager_management_bloc.dart';

@freezed
class UserManagerManagementEvent with _$UserManagerManagementEvent {
  const factory UserManagerManagementEvent.initUserManager() = _InitUserManager;

  const factory UserManagerManagementEvent.addUserManager(
      UserManager userManager) = _AddUserManager;

  const factory UserManagerManagementEvent.removeUserManager(
      UserManager userManager) = _RemoveUserManager;

  const factory UserManagerManagementEvent.updateUserManager({
    required UserManager oldUserManager,
    required UserManager newUserManager,
  }) = _UpdateUserManager;
}
