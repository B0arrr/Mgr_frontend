import 'package:freezed_annotation/freezed_annotation.dart';

part 'department.freezed.dart';
part 'department.g.dart';

@unfreezed
class Department with _$Department {
  factory Department({
    required int id,
    required String name,
  }) = _Department;

  factory Department.fromJson(Map<String, Object?> json) =>
      _$DepartmentFromJson(json);
}
