import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/UserWorkhour/user_workhour.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_workhour_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'user_working_time_registration_blob.freezed.dart';
part 'user_working_time_registration_event.dart';
part 'user_working_time_registration_state.dart';

class UserWorkingTimeRegistrationBloc extends Bloc<
    UserWorkingTimeRegistrationEvent, UserWorkingTimeRegistrationState> {
  final UserWorkHourRepository _userWorkHourRepository;

  UserWorkingTimeRegistrationBloc({
    UserWorkHourRepository? userWorkHourRepository,
    required int userId,
  })  : _userWorkHourRepository =
            userWorkHourRepository ?? locator<UserWorkHourRepository>(),
        super(UserWorkingTimeRegistrationState.initial(userId)) {
    on<_InitUserWorkHours>((event, emit) async {
      final response = await _userWorkHourRepository.getUserWorkHours();
      response.when(
          success: (data) {
            data.sort((a, b) => b.start_time.compareTo(a.start_time));
            emit(state.copyWith(userWorkHours: data));
          },
          error: (err) {});
    });
    on<_AddUserWorkHour>((event, emit) async {
      final response =
          await _userWorkHourRepository.addUserWorkHour(event.userWorkHour);
      response.when(
          success: (data) {
            final updatedUserWorkHours = [data, ...state.userWorkHours];
            emit(state.copyWith(userWorkHours: updatedUserWorkHours));
          },
          error: (err) {});
    });
    on<_UpdateUserWorkHour>((event, emit) async {
      final response = await _userWorkHourRepository.updateUserWorkHour(
          event.oldUserWorkHour.id, event.newUserWorkHour);
      response.when(
          success: (data) {
            final updatedUserWorkHours =
                state.userWorkHours.map((userWorkHour) {
              return userWorkHour == event.oldUserWorkHour
                  ? event.newUserWorkHour
                  : userWorkHour;
            }).toList();
            emit(state.copyWith(userWorkHours: updatedUserWorkHours));
          },
          error: (err) {});
    });

    add(_InitUserWorkHours());
  }
}
