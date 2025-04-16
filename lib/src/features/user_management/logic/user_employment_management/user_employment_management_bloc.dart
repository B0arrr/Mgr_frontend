import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/UserEmployment/user_employment.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_employment_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'user_employment_management_bloc.freezed.dart';
part 'user_employment_management_event.dart';
part 'user_employment_management_state.dart';

class UserEmploymentManagementBloc
    extends Bloc<UserEmploymentManagementEvent, UserEmploymentManagementState> {
  final UserEmploymentRepository _userEmploymentRepository;

  UserEmploymentManagementBloc(
      {UserEmploymentRepository? userEmploymentRepository})
      : _userEmploymentRepository =
            userEmploymentRepository ?? locator<UserEmploymentRepository>(),
        super(UserEmploymentManagementState.initial()) {
    on<_InitUserEmployment>((event, emit) {});
    on<_AddUserEmployment>((event, emit) {});
    on<_RemoveUserEmployment>((event, emit) {});
    on<_UpdateUserEmployment>((event, emit) {});
  }
}
