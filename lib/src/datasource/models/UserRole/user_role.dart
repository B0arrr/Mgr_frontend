import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_role.freezed.dart';
part 'user_role.g.dart';

@unfreezed
class UserRole with _$UserRole {
  factory UserRole({
    required int id,
    required int user_id,
    required int role_id,
  }) = _UserRole;

  factory UserRole.fromJson(Map<String, Object?> json) => _$UserRoleFromJson(json);
}