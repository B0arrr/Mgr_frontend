import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/datasource/models/UserSchedule/user_schedule.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_repository.dart';
import 'package:mgr_frontend/src/datasource/repositories/user_schedule_repository.dart';
import 'package:mgr_frontend/src/shared/locator.dart';

part 'scheduler_bloc.freezed.dart';
part 'scheduler_event.dart';
part 'scheduler_state.dart';

class SchedulerBloc extends Bloc<SchedulerEvent, SchedulerState> {
  final UserScheduleRepository _userScheduleRepository;
  final UserRepository _userRepository;

  SchedulerBloc({
    UserScheduleRepository? userScheduleRepository,
    UserRepository? userRepository,
    required int userId,
  })  : _userScheduleRepository =
            userScheduleRepository ?? locator<UserScheduleRepository>(),
        _userRepository = userRepository ?? locator<UserRepository>(),
        super(SchedulerState.initial(userId)) {
    on<_InitScheduler>((event, emit) async {
      final response1 = await _userScheduleRepository.getUserSchedules();
      response1.when(success: (data) {
        emit(state.copyWith(userSchedules: data));
      }, error: (err) {});
      final response2 = await _userRepository.getUsers();
      response2.when(success: (data) {
        emit(state.copyWith(users: data));
      }, error: (err) {});
    });
    on<_AddSchedule>((event, emit) async {
      final response = await _userScheduleRepository.addUserSchedule(event.userSchedule);
      response.when(
        success: (data) {
          emit(state.copyWith(
            userSchedules: [...state.userSchedules, data],
          ));
        },
        error: (err) {},
      );
    });

    on<_RemoveSchedule>((event, emit) async {
      final response = await _userScheduleRepository.deleteUserSchedule(event.userSchedule.id);
      response.when(
        success: (data) {
          emit(state.copyWith(
            userSchedules: state.userSchedules
                .where((s) => s.id != event.userSchedule.id)
                .toList(),
          ));
        },
        error: (err) {},
      );
    });

    on<_UpdateSchedule>((event, emit) async {
      final response = await _userScheduleRepository.updateUserSchedule(
        event.oldUserSchedule.id,
        event.newUserSchedule,
      );
      response.when(
        success: (updatedSchedule) {
          final updatedList = state.userSchedules.map((s) {
            return s == event.oldUserSchedule ? event.newUserSchedule : s;
          }).toList();

          emit(state.copyWith(userSchedules: updatedList));
        },
        error: (err) {},
      );
    });

    add(_InitScheduler());
  }
}
