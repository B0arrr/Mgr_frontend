import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/shared/locator.dart';
import 'package:mgr_frontend/src/shared/services/storage/local_storage.dart';
import 'package:mgr_frontend/src/shared/services/storage/storage.dart';

part 'application_cubit.freezed.dart';
part 'application_state.dart';

class ApplicationCubit extends Cubit<ApplicationState> {
  final Storage _localStorage;

  ApplicationCubit({LocalStorage? localStorage})
      : _localStorage = localStorage ?? locator<Storage>(),
        super(
            ApplicationState.current(isDarkMode: true, language: Locale("en")));

  void changeThemeMode(bool mode) async {
    await _localStorage.write(key: 'isDarkMode', value: mode);
    emit(ApplicationState.current(isDarkMode: mode, language: state.language));
  }

  void changeLanguage(String language) async {
    await _localStorage.write(key: 'language', value: language);
    emit(ApplicationState.current(
        isDarkMode: state.isDarkMode, language: Locale(language)));
  }
}
