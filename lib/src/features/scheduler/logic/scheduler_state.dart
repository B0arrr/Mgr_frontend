part of 'scheduler_bloc.dart';

@freezed
class SchedulerState with _$SchedulerState {
  const factory SchedulerState({
    required List<UserSchedule> userSchedules,
    required List<User> users,
    required int userId,
  }) = _SchedulerState;

  factory SchedulerState.initial(int userId) {
    return SchedulerState(userSchedules: [], users: [], userId: userId);
  }
}
