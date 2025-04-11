import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_manager.freezed.dart';
part 'user_manager.g.dart';

@unfreezed
class UserManager with _$UserManager {
  factory UserManager({
    required int id,
    required int user_id,
    required int manager_id,
  }) = _UserManagement;

  factory UserManager.fromJson(Map<String, Object?> json) => _$UserManagerFromJson(json);
}
