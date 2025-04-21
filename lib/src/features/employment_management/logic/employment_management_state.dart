part of 'employment_management_bloc.dart';

@freezed
class EmploymentManagementState with _$EmploymentManagementState {
  const factory EmploymentManagementState({
    required List<Employment> employments,
  }) = _EmploymentManagementState;

  factory EmploymentManagementState.initial() {
    return EmploymentManagementState(employments: []);
  }
}
