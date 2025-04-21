part of 'company_management_bloc.dart';

@freezed
class CompanyManagementState with _$CompanyManagementState {
  const factory CompanyManagementState({
    required List<Company> companies,
  }) = _CompanyManagementState;

  factory CompanyManagementState.initial() {
    return CompanyManagementState(companies: []);
  }
}
