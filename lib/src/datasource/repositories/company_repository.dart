import 'package:mgr_frontend/src/datasource/http/company_api.dart';
import 'package:mgr_frontend/src/datasource/models/Company/company.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/base_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

class CompanyRepository extends BaseRepository {
  final CompanyApi _companyApi;

  CompanyRepository({CompanyApi? companyApi})
      : _companyApi = companyApi ?? locator<CompanyApi>();

  Future<ApiResponse<List<Company>, ApiError>> getCompanies() async {
    return runApiCall(call: () async {
      final response = await _companyApi.getCompanies();
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Company, ApiError>> getCompany(int id) async {
    return runApiCall(call: () async {
      final response = await _companyApi.getCompany(id);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Company, ApiError>> addCompany(Company company) async {
    return runApiCall(call: () async {
      final response = await _companyApi.addCompany(company);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Company, ApiError>> updateCompany(int id, Company company) async {
    return runApiCall(call: () async {
      final response = await _companyApi.updateCompany(id, company);
      return ApiResponse.success(response);
    });
  }

  Future<ApiResponse<Company, ApiError>> deleteCompany(int id) async {
    return runApiCall(call: () async {
      final response = await _companyApi.deleteCompany(id);
      return ApiResponse.success(response);
    });
  }
}
