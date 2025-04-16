part of 'user_management_bloc.dart';

@freezed
class UserManagementEvent with _$UserManagementEvent {
  const factory UserManagementEvent.initUsers() = _InitUsers;

  const factory UserManagementEvent.addUser(User user) = _AddUser;

  const factory UserManagementEvent.removeUser(User user) = _RemoveUser;

  const factory UserManagementEvent.updateUser({
    required User oldUser,
    required User newUser,
  }) = _UpdateUser;

  const factory UserManagementEvent.changeUserStatus(User user) =
      _ChangeUserStatus;
}
