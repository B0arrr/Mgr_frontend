import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class Login with _$Login {
  const factory Login({
    required String access_token,
    required String token_type,
  }) = _Login;

  factory Login.fromJson(Map<String, Object?> json) => _$LoginFromJson(json);
}
