import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';

part 'user_schedule.freezed.dart';
part 'user_schedule.g.dart';

@unfreezed
class UserSchedule with _$UserSchedule {
  factory UserSchedule({
    required int id,
    required,
    required int user_id,
    required DateTime scheduled_start_work,
    required DateTime scheduled_end_work,
    User? user,
  }) = _UserSchedule;

  factory UserSchedule.fromJson(Map<String, Object?> json) =>
      _$UserScheduleFromJson(json);
}
