part of 'application_cubit.dart';

@freezed
class ApplicationState with _$ApplicationState {
  factory ApplicationState.current(
      {required bool isDarkMode, required Locale? language}) = _Current;
}
