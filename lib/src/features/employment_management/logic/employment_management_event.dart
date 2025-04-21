part of 'employment_management_bloc.dart';

@freezed
class EmploymentManagementEvent with _$EmploymentManagementEvent {
  const factory EmploymentManagementEvent.initEmployments() = _InitEmployments;

  const factory EmploymentManagementEvent.addEmployment(Employment employment) =
      _AddEmployment;

  const factory EmploymentManagementEvent.removeEmployment(
      Employment employment) = _RemoveEmployment;

  const factory EmploymentManagementEvent.updateEmployment({
    required Employment oldEmployment,
    required Employment newEmployment,
  }) = _UpdateEmployment;
}
