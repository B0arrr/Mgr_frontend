import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/Role/role.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@unfreezed
class User with _$User {
  factory User({
    required int id,
    required String first_name,
    required String last_name,
    required String email,
    required String password,
    required bool is_active,
    required bool has_flexible_working_hours,
    List<Role>? roles,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
