import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_employment.freezed.dart';

part 'user_employment.g.dart';

@unfreezed
class UserEmployment with _$UserEmployment {
  factory UserEmployment({
    required int id,
    required int user_id,
    required int employment_id,
    required int company_id,
    required int department_id,
    required int position_id,
    required DateTime start_date,
    required DateTime end_date,
  }) = _UserEmployment;

  factory UserEmployment.fromJson(Map<String, Object?> json) => _$UserEmploymentFromJson(json);
}