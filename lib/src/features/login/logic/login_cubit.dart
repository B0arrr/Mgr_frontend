import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/example_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final ExampleRepository _exampleRepository;

  LoginCubit({
    ExampleRepository? exampleRepository,
  })  : _exampleRepository = exampleRepository ?? locator<ExampleRepository>(),
        super(LoginState.initial(email: '', password: ''));

  void onEmailChanged(String email) {
    emit(LoginState.initial(email: email, password: state.password));
  }

  void onPasswordChanged(String password) {
    emit(LoginState.initial(email: state.email, password: password));
  }

  void login() async {
    emit(LoginState.loading(email: state.email, password: state.password));

    final response = await _exampleRepository.getExample();
    response.when(
        success: (data) => emit(LoginState.sucess(
            email: state.email, password: state.password, response: data)),
        error: (error) => emit(LoginState.error(
            email: state.email, password: state.password, error: error)));
  }
}
