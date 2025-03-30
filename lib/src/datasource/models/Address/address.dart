import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@unfreezed
class Address with _$Address {
  factory Address({
    required int id,
    required String street,
    required String city,
    required String state,
    required String zip,
    required String country,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);
}
