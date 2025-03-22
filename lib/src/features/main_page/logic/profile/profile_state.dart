part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState.initial({
    required String first_name,
    required String last_name,
    required String email,
  }) = _Initial;

  factory ProfileState.loading({
    required String first_name,
    required String last_name,
    required String email,
  }) = _Loading;

  factory ProfileState.loaded({
    required String first_name,
    required String last_name,
    required String email,
  }) = _Loaded;

  factory ProfileState.error({
    required String first_name,
    required String last_name,
    required String email,
    required ApiError error,
  }) = _Error;
}
