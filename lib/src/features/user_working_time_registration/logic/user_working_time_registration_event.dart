part of 'user_working_time_registration_blob.dart';

@freezed
class UserWorkingTimeRegistrationEvent with _$UserWorkingTimeRegistrationEvent {
  const factory UserWorkingTimeRegistrationEvent.initUserWorkHours() =
      _InitUserWorkHours;

  const factory UserWorkingTimeRegistrationEvent.addUserWorkHour(
      UserWorkHour userWorkHour) = _AddUserWorkHour;

  const factory UserWorkingTimeRegistrationEvent.updateUserWorkHour({
    required UserWorkHour oldUserWorkHour,
    required UserWorkHour newUserWorkHour,
  }) = _UpdateUserWorkHour;
}
