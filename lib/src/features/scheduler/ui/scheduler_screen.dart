import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/datasource/models/UserSchedule/user_schedule.dart';
import 'package:mgr_frontend/src/features/scheduler/logic/scheduler_bloc.dart';

@RoutePage()
class SchedulerScreen extends StatefulWidget implements AutoRouteWrapper {
  final int userId;

  const SchedulerScreen({super.key, required this.userId});

  @override
  State<StatefulWidget> createState() => _SchedulerScreen();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => SchedulerBloc(userId: userId),
      child: this,
    );
  }
}

class _SchedulerScreen extends State<SchedulerScreen> {
  final days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'];
  final hours = List.generate(8, (i) => i + 8); // 8–15

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SchedulerBloc, SchedulerState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Scheduler')),
          body: Row(
            children: [
              /// Left: List of users
              Expanded(
                flex: 2,
                child: ListView(
                  children: state.users.map((user) {
                    return Draggable<User>(
                      data: user,
                      feedback: Material(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.blueAccent,
                          child: Text(user.first_name,
                              style: const TextStyle(color: Colors.white)),
                        ),
                      ),
                      childWhenDragging: Opacity(
                        opacity: 0.5,
                        child: ListTile(title: Text(user.first_name)),
                      ),
                      child: ListTile(title: Text(user.first_name)),
                    );
                  }).toList(),
                ),
              ),

              /// Right: Grid of days × hours
              Expanded(
                flex: 5,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: days.length,
                    childAspectRatio: 1.5,
                  ),
                  itemCount: days.length * hours.length,
                  itemBuilder: (context, index) {
                    final dayIndex = index % days.length;
                    final hourIndex = index ~/ days.length;
                    final day = days[dayIndex];
                    final hour = hours[hourIndex];

                    final slotTime = DateTime(
                      DateTime.now().year,
                      DateTime.now().month,
                      DateTime.now().day + dayIndex,
                      hour,
                    );

                    // Find if any user is scheduled at this slot
                    final scheduled = state.userSchedules.firstWhere(
                          (s) =>
                      s.scheduled_start_work.hour == slotTime.hour &&
                          s.scheduled_start_work.weekday == slotTime.weekday,
                      orElse: () => null as UserSchedule,
                    );

                    return DragTarget<User>(
                      onAccept: (user) {
                        final start = slotTime;
                        final end = start.add(const Duration(hours: 1));

                        final schedule = UserSchedule(
                          id: 0,
                          user_id: user.id,
                          scheduled_start_work: start,
                          scheduled_end_work: end,
                        );

                        context
                            .read<SchedulerBloc>()
                            .add(SchedulerEvent.addSchedule(schedule));
                      },
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          margin: const EdgeInsets.all(4),
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: candidateData.isNotEmpty
                                ? Colors.greenAccent
                                : Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('$day $hour:00'),
                              if (scheduled != null)
                                Text(
                                  'User ID: ${scheduled.user_id}',
                                  style: const TextStyle(fontSize: 12),
                                ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
