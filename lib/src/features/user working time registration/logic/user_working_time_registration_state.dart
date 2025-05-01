part of 'user_working_time_registration_blob.dart';

@freezed
class UserWorkingTimeRegistrationState with _$UserWorkingTimeRegistrationState {
  const factory UserWorkingTimeRegistrationState({
    required List<UserWorkHour> userWorkHours,
    required int userId,
  }) = _UserWorkingTimeRegistrationState;

  factory UserWorkingTimeRegistrationState.initial(int userId) {
    return UserWorkingTimeRegistrationState(userWorkHours: [], userId: userId);
  }
}
