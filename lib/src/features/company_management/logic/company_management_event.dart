part of 'company_management_bloc.dart';

@freezed
class CompanyManagementEvent with _$CompanyManagementEvent {
  const factory CompanyManagementEvent.initCompanies() = _InitCompany;

  const factory CompanyManagementEvent.addCompany(Company company) =
  _AddCompany;

  const factory CompanyManagementEvent.removeCompany(Company company) =
  _RemoveCompany;

  const factory CompanyManagementEvent.updateCompany({
    required Company oldCompany,
    required Company newCompany,
  }) = _UpdateCompany;
}