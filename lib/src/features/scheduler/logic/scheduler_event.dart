part of 'scheduler_bloc.dart';

@freezed
class SchedulerEvent with _$SchedulerEvent {
  const factory SchedulerEvent.initScheduler() = _InitScheduler;

  const factory SchedulerEvent.addSchedule(UserSchedule userSchedule) =
      _AddSchedule;

  const factory SchedulerEvent.removeSchedule(UserSchedule userSchedule) =
      _RemoveSchedule;

  const factory SchedulerEvent.updateSchedule({
    required UserSchedule oldUserSchedule,
    required UserSchedule newUserSchedule,
  }) = _UpdateSchedule;

  const factory SchedulerEvent.generateSchedule({
    required List<User> users,
    required DateTime start,
    required DateTime end,
  }) = _GenerateSchedule;
}
