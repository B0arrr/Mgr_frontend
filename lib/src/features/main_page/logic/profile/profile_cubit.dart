import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/login_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final LoginRepository _loginRepository;
  final UserRepository _userRepository;

  ProfileCubit(
      {LoginRepository? loginRepository, UserRepository? userRepository})
      : _loginRepository = loginRepository ?? locator<LoginRepository>(),
        _userRepository = userRepository ?? locator<UserRepository>(),
        super(ProfileState.initial(first_name: '', last_name: '', email: ''));

  void loadProfile() async {
    emit(ProfileState.loading(
      first_name: state.first_name,
      last_name: state.last_name,
      email: state.email,
    ));

    final response = await _loginRepository.getUser();
    response.when(
        success: (data) {
          emit(ProfileState.loaded(
            first_name: data.first_name,
            last_name: data.last_name,
            email: data.email,
          ));
        },
        error: (error) => emit(ProfileState.error(
              first_name: state.first_name,
              last_name: state.last_name,
              email: state.email,
              error: error,
            )));
  }

  void updateProfile() async {
    User? user;

    emit(ProfileState.loading(
      first_name: state.first_name,
      last_name: state.last_name,
      email: state.email,
    ));

    final res = await _userRepository.getLocalUser();
    res.when(
        success: (data) {
          user = data;
          user?.first_name = state.first_name;
          user?.last_name = state.last_name;
          user?.email = state.email;
          emit(ProfileState.loaded(
            first_name: data.first_name,
            last_name: data.last_name,
            email: data.email,
          ));
        },
        error: (error) => emit(ProfileState.error(
              first_name: state.first_name,
              last_name: state.last_name,
              email: state.email,
              error: error,
            )));

    final response = await _userRepository.updateLocalUser(user);
    response.when(
        success: (data) => emit(ProfileState.loaded(
              first_name: data.first_name,
              last_name: data.last_name,
              email: data.email,
            )),
        error: (error) => emit(ProfileState.error(
              first_name: state.first_name,
              last_name: state.last_name,
              email: state.email,
              error: error,
            )));
  }

  void onFirstNameChanged(String firstName) {
    emit(ProfileState.loaded(
      first_name: firstName,
      last_name: state.last_name,
      email: state.email,
    ));
  }

  void onLastNameChanged(String lastName) {
    emit(ProfileState.loaded(
      first_name: state.first_name,
      last_name: lastName,
      email: state.email,
    ));
  }

  void onEmailChanged(String email) {
    emit(ProfileState.loaded(
      first_name: state.first_name,
      last_name: state.last_name,
      email: email,
    ));
  }

  void onPasswordChanged(String password) {
    emit(ProfileState.loaded(
      first_name: state.first_name,
      last_name: state.last_name,
      email: state.email,
    ));
  }
}
