import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';

part 'user_workhour.freezed.dart';
part 'user_workhour.g.dart';

@unfreezed
class UserWorkHour with _$UserWorkHour {
  factory UserWorkHour({
    required int id,
    required int user_id,
    required DateTime day,
    required DateTime start_time,
    DateTime? end_time,
    User? user,
  }) = _UserWorkHour;

  factory UserWorkHour.fromJson(Map<String, Object?> json) =>
      _$UserWorkHourFromJson(json);
}
