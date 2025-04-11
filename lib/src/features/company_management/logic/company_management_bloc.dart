import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/Address/address.dart';
import 'package:mgr_frontend/src/datasource/models/Company/company.dart';
import 'package:mgr_frontend/src/datasource/repositories/address_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/company_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'company_management_bloc.freezed.dart';
part 'company_management_event.dart';
part 'company_management_state.dart';

class CompanyManagementBloc
    extends Bloc<CompanyManagementEvent, CompanyManagementState> {
  final AddressRepository _addressRepository;
  final CompanyRepository _companyRepository;

  CompanyManagementBloc(
      {AddressRepository? addressRepository,
      CompanyRepository? companyRepository})
      : _addressRepository = addressRepository ?? locator<AddressRepository>(),
        _companyRepository = companyRepository ?? locator<CompanyRepository>(),
        super(CompanyManagementState.initial()) {
    on<_InitCompanies>((event, emit) async {
      final response = await _companyRepository.getCompanies();
      response.when(
          success: (data) {
            emit(state.copyWith(companies: data));
          },
          error: (err) {});
    });
    on<_AddCompany>((event, emit) async {
      final response = await _companyRepository.addCompany(event.company);
      response.when(
          success: (data) {
            final updatedCompanies = List<Company>.from(state.companies)
              ..add(data);
            emit(state.copyWith(companies: updatedCompanies));
          },
          error: (err) {});
    });
    on<_RemoveCompany>((event, emit) async {
      final response = await _companyRepository.deleteCompany(event.company.id);
      response.when(
          success: (data) {
            final updatedCompanies = List<Company>.from(state.companies)
              ..remove(event.company);
            emit(state.copyWith(companies: updatedCompanies));
          },
          error: (err) {});
    });
    on<_UpdateCompany>((event, emit) async {
      final response = await _companyRepository.updateCompany(
          event.oldCompany.id, event.newCompany);
      response.when(
          success: (data) {
            final updatedCompanies = state.companies.map((company) {
              return company == event.oldCompany ? event.newCompany : company;
            }).toList();
            emit(state.copyWith(companies: updatedCompanies));
          },
          error: (err) {});
    });

    add(_InitCompanies());
  }

  Future<List<Address>> getAddressList() async {
    List<Address> addressList = [];
    final response = await _addressRepository.getAddresses();
    response.when(success: (data) => addressList = data, error: (err) {});
    return addressList;
  }
}
