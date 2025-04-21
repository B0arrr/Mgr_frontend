import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/Company/company.dart';
import 'package:mgr_frontend/src/datasource/models/Department/department.dart';
import 'package:mgr_frontend/src/datasource/models/Employment/employment.dart';
import 'package:mgr_frontend/src/datasource/models/Position/position.dart';

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
    Employment? employments,
    Company? companies,
    Department? departments,
    Position? positions,
    required DateTime start_date,
    DateTime? end_date,
  }) = _UserEmployment;

  factory UserEmployment.fromJson(Map<String, Object?> json) =>
      _$UserEmploymentFromJson(json);
}
