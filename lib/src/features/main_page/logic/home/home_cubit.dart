import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final UserRepository _userRepository;

  HomeCubit({UserRepository? userRepository})
      : _userRepository = userRepository ?? locator<UserRepository>(),
        super(const HomeState.initial());

  Future<void> loadUsers() async {
    emit(const HomeState.loading());
    final result = await _userRepository.getUsers();
    result.when(
      success: (users) => emit(HomeState.loaded(users: users)),
      error: (err) => emit(HomeState.error(err: err)),
    );
  }
}