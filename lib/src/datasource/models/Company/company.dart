import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/Address/address.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@unfreezed
class Company with _$Company {
  factory Company({
    required int id,
    required String name,
    required int address_id,
    required Address? address,
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json) =>
      _$CompanyFromJson(json);
}
