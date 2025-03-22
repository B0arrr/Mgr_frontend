import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'password_change_cubit.freezed.dart';
part 'password_change_state.dart';

class PasswordChangeCubit extends Cubit<PasswordChangeState> {
  final UserRepository _userRepository;

  PasswordChangeCubit({
    UserRepository? userRepository,
  })  : _userRepository = userRepository ?? locator<UserRepository>(),
        super(PasswordChangeState.initial(password: '', passwordRepeated: ''));

  void updatePassword() async {
    emit(PasswordChangeState.loading(
        password: state.password, passwordRepeated: state.passwordRepeated));

    if (state.password != state.passwordRepeated) {
      throw ApiError(
          type: ApiErrorType.user,
          error: "Passwords are not this same",
          statusCode: 400);
    }

    final response = await _userRepository.updatePassword(state.password);
    response.when(success: (data) async {
      emit(PasswordChangeState.initial(password: '', passwordRepeated: ''));
    }, error: (error) async {
      emit(PasswordChangeState.error(
          password: state.password,
          passwordRepeated: state.passwordRepeated,
          error: error));
    });
  }

  void onPasswordChanged(String password) {
    emit(PasswordChangeState.loaded(
        password: password, passwordRepeated: state.passwordRepeated));
  }

  void onPasswordRepeatedChanged(String passwordRepeated) {
    emit(PasswordChangeState.loaded(
        password: state.password, passwordRepeated: passwordRepeated));
  }
}
