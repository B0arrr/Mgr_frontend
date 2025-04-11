part of 'user_employment_management_bloc.dart';

@freezed
class UserEmploymentManagementState with _$UserEmploymentManagementState {
  const factory UserEmploymentManagementState({
    required List<UserEmployment> employments,
    required int userId,
  }) = _UserEmploymentManagementState;

  factory UserEmploymentManagementState.initial() {
    return UserEmploymentManagementState(employments: [], userId: 0);
  }
}
