part of 'user_management_bloc.dart';

@freezed
class UserManagementState with _$UserManagementState {
  const factory UserManagementState({
    required List<User> users,
  }) = _UserManagementState;

  factory UserManagementState.initial() {
    return UserManagementState(users: []);
  }
}
