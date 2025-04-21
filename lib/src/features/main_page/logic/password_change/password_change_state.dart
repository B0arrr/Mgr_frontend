part of 'password_change_cubit.dart';

@freezed
class PasswordChangeState with _$PasswordChangeState {
  factory PasswordChangeState.initial({
    required String password,
    required String passwordRepeated,
  }) = _Initial;

  factory PasswordChangeState.loading({
    required String password,
    required String passwordRepeated,
  }) = _Loading;

  factory PasswordChangeState.loaded({
    required String password,
    required String passwordRepeated,
  }) = _Loaded;

  factory PasswordChangeState.error({
    required String password,
    required String passwordRepeated,
    required ApiError error,
  }) = _Error;
}
