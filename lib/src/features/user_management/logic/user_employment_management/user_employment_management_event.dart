part of 'user_employment_management_bloc.dart';

@freezed
class UserEmploymentManagementEvent with _$UserEmploymentManagementEvent {
  const factory UserEmploymentManagementEvent.initUserEmployment(int userId) =
      _InitUserEmployment;

  const factory UserEmploymentManagementEvent.addUserEmployment(
      UserEmployment userEmployment) = _AddUserEmployment;

  const factory UserEmploymentManagementEvent.removeUserEmployment(
      UserEmployment userEmployment) = _RemoveUserEmployment;

  const factory UserEmploymentManagementEvent.updateUserEmployment({
    required UserEmployment oldUserEmployment,
    required UserEmployment newUserEmployment,
  }) = _UpdateUserEmployment;
}
