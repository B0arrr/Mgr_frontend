part of 'department_management_bloc.dart';

@freezed
class DepartmentManagementEvent with _$DepartmentManagementEvent {
  const factory DepartmentManagementEvent.initCompanies() = _InitDepartments;

  const factory DepartmentManagementEvent.addCompany(Department department) =
      _AddDepartment;

  const factory DepartmentManagementEvent.removeDepartment(
      Department department) = _RemoveDepartment;

  const factory DepartmentManagementEvent.updateDepartment({
    required Department oldDepartment,
    required Department newDepartment,
  }) = _UpdateDepartment;
}
