part of 'user_employment_management_bloc.dart';

@freezed
class UserEmploymentManagementState with _$UserEmploymentManagementState {
  const factory UserEmploymentManagementState({
    required List<UserEmployment> userEmployments,
    required int userId,
  }) = _UserEmploymentManagementState;

  factory UserEmploymentManagementState.initial(int userId) {
    return UserEmploymentManagementState(userEmployments: [], userId: userId);
  }
}
