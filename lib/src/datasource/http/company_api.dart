import 'package:dio/dio.dart';
import 'package:mgr_frontend/src/datasource/models/Company/company.dart';

class CompanyApi {
  final Dio dio;

  CompanyApi({required this.dio});

  Future<List<Company>> getCompanies() async {
    final response = await dio.get('/company');
    return (response.data as List)
        .map((json) => Company.fromJson(json))
        .toList();
  }

  Future<Company> getCompany(int id) async {
    final response = await dio.get('/company/$id');
    return Company.fromJson(response.data);
  }

  Future<Company> addCompany(Company company) async {
    final response = await dio.post('/company', data: company);
    return Company.fromJson(response.data);
  }

  Future<Company> updateCompany(int id, Company company) async {
    final response = await dio.put('/company/$id', data: company);
    return Company.fromJson(response.data);
  }

  Future<Company> deleteCompany(int id) async {
    final response = await dio.delete('/company/$id');
    return Company.fromJson(response.data);
  }
}
