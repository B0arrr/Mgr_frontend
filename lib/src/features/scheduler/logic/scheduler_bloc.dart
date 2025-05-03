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
        super(SchedulerState.initial(userId));
}
