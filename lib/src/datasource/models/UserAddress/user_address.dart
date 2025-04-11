import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_address.freezed.dart';
part 'user_address.g.dart';

@unfreezed
class UserAddress with _$UserAddress {
  factory UserAddress({
    required int id,
    required int user_id,
    required int address_id,
    required bool is_remote,
  }) = _UserAddress;

  factory UserAddress.fromJson(Map<String, Object?> json) => _$UserAddressFromJson(json);
}