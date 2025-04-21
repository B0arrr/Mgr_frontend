part of 'department_management_bloc.dart';

@freezed
class DepartmentManagementState with _$DepartmentManagementState {
  const factory DepartmentManagementState(
      {required List<Department> departments}) = _DepartmentManagementState;

  factory DepartmentManagementState.initial() {
    return DepartmentManagementState(departments: []);
  }
}
