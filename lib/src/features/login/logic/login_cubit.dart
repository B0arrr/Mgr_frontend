import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/login_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;

  LoginCubit({
    LoginRepository? loginRepository,
  })  : _loginRepository = loginRepository ?? locator<LoginRepository>(),
        super(LoginState.initial(email: '', password: ''));

  void onEmailChanged(String email) {
    emit(LoginState.initial(email: email, password: state.password));
  }

  void onPasswordChanged(String password) {
    emit(LoginState.initial(email: state.email, password: password));
  }

  void login() async {
    emit(LoginState.loading(email: state.email, password: state.password));

    final response = await _loginRepository.getToken(state.email, state.password);
    await _loginRepository.getUser();
    response.when(
        success: (data) => emit(LoginState.sucess(
            email: state.email, password: state.password, response: data)),
        error: (error) => emit(LoginState.error(
            email: state.email, password: state.password, error: error)));
  }

  void logout() async {
    emit(LoginState.initial(email: '', password: ''));
    await _loginRepository.logout();
  }
}
