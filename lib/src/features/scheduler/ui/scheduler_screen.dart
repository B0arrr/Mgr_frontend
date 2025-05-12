import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/datasource/models/UserSchedule/user_schedule.dart';
import 'package:mgr_frontend/src/features/scheduler/logic/scheduler_bloc.dart';
import 'package:mgr_frontend/src/shared/components/calendar/calendar_data_source.dart';
import 'package:mgr_frontend/src/shared/components/calendar/schedule_appointment.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

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
  final CalendarController _calendarController = CalendarController();
  final GlobalKey _calendarKey = GlobalKey();

  DateTime roundToHour(DateTime dt) =>
      DateTime(dt.year, dt.month, dt.day, dt.hour);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SchedulerBloc, SchedulerState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Scheduler'),
            actions: [
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () async {
                  final result =
                      await _showGenerateScheduleForm(context, state.users);
                  if (result != null) {
                    context.read<SchedulerBloc>().add(
                          SchedulerEvent.generateSchedule(
                            users: result.users,
                            start: result.start,
                            end: result.end,
                          ),
                        );
                  }
                },
              )
            ],
          ),
          body: Row(
            children: [
              // Left side: user list
              Expanded(
                flex: 2,
                child: ListView(
                  padding: const EdgeInsets.all(8),
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

              // Right side: calendar with drag target overlay
              Expanded(
                flex: 5,
                child: Stack(
                  key: _calendarKey, // moved here since Positioned was removed
                  children: [
                    SfCalendar(
                      view: CalendarView.week,
                      controller: _calendarController,
                      allowedViews: [
                        CalendarView.day,
                        CalendarView.week,
                        CalendarView.workWeek
                      ],
                      dataSource: MyCalendarDataSource(state.userSchedules),
                      timeSlotViewSettings: const TimeSlotViewSettings(
                        timeInterval: Duration(hours: 1),
                        timeIntervalHeight: 60,
                      ),
                      onTap: (details) async {
                        if (details.targetElement ==
                                CalendarElement.calendarCell &&
                            details.date != null) {
                          final DateTime tappedTime =
                              roundToHour(details.date!);
                          final DateTime end =
                              tappedTime.add(const Duration(hours: 1));
                          final newSchedule = UserSchedule(
                            id: 0,
                            user_id: state.userId,
                            scheduled_start_work: tappedTime,
                            scheduled_end_work: end,
                          );
                          context
                              .read<SchedulerBloc>()
                              .add(SchedulerEvent.addSchedule(newSchedule));
                        } else if (details.targetElement ==
                                CalendarElement.appointment &&
                            details.appointments != null &&
                            details.appointments!.isNotEmpty) {
                          final appointment = details.appointments!.first
                              as ScheduleAppointment;
                          final action = await _showEditDialog(
                              context, appointment.userSchedule);

                          if (action?.edited != null) {
                            context.read<SchedulerBloc>().add(
                                  SchedulerEvent.updateSchedule(
                                    oldUserSchedule: appointment.userSchedule,
                                    newUserSchedule: action!.edited!,
                                  ),
                                );
                          } else if (action?.deleted != null) {
                            context.read<SchedulerBloc>().add(
                                  SchedulerEvent.removeSchedule(
                                      action!.deleted!),
                                );
                          }
                        }
                      },
                      onAppointmentResizeEnd: (details) {
                        final appointment =
                            details.appointment as ScheduleAppointment;
                        final oldSchedule = appointment.userSchedule;
                        final newSchedule = oldSchedule.copyWith(
                          scheduled_start_work: roundToHour(details.startTime!),
                          scheduled_end_work: roundToHour(details.endTime!),
                        );
                        context.read<SchedulerBloc>().add(
                              SchedulerEvent.updateSchedule(
                                oldUserSchedule: oldSchedule,
                                newUserSchedule: newSchedule,
                              ),
                            );
                      },
                      onDragEnd: (details) {
                        final appointment =
                            details.appointment as ScheduleAppointment;
                        final oldSchedule = appointment.userSchedule;
                        final newStart = roundToHour(details.droppingTime!);
                        final duration = oldSchedule.scheduled_end_work
                            .difference(oldSchedule.scheduled_start_work);
                        final newEnd = newStart.add(duration);
                        final newSchedule = oldSchedule.copyWith(
                          scheduled_start_work: newStart,
                          scheduled_end_work: newEnd,
                        );
                        context.read<SchedulerBloc>().add(
                              SchedulerEvent.updateSchedule(
                                oldUserSchedule: oldSchedule,
                                newUserSchedule: newSchedule,
                              ),
                            );
                      },
                    ),
                    // Drag target overlay
                    DragTarget<User>(
                      onAcceptWithDetails: (details) {
                        final RenderBox box = _calendarKey.currentContext
                            ?.findRenderObject() as RenderBox;
                        final Offset localOffset =
                            box.globalToLocal(details.offset);

                        const double hourHeight =
                            60; // matches timeIntervalHeight
                        const double dayWidthFraction =
                            1 / 7; // 7 days in week view

                        final Size calendarSize = box.size;
                        final double dayWidth =
                            calendarSize.width * dayWidthFraction;

                        final int dayIndex =
                            (localOffset.dx / dayWidth).floor();
                        final int hour = (localOffset.dy / hourHeight).floor();

                        final DateTime baseDate =
                            _calendarController.displayDate ?? DateTime.now();
                        final DateTime dropDay = baseDate
                            .subtract(Duration(days: baseDate.weekday - 1))
                            .add(Duration(days: dayIndex));

                        final DateTime start = DateTime(
                            dropDay.year, dropDay.month, dropDay.day, hour);
                        final DateTime end =
                            start.add(const Duration(hours: 1));

                        final schedule = UserSchedule(
                          id: 0,
                          user_id: details.data.id!,
                          scheduled_start_work: start,
                          scheduled_end_work: end,
                        );

                        context.read<SchedulerBloc>().add(
                              SchedulerEvent.addSchedule(schedule),
                            );
                      },
                      builder: (context, candidateData, rejectedData) =>
                          Container(color: Colors.transparent),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<UserScheduleAction?> _showEditDialog(
      BuildContext context, UserSchedule schedule) async {
    DateTime start = schedule.scheduled_start_work;
    DateTime end = schedule.scheduled_end_work;

    return showDialog<UserScheduleAction>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Schedule'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Start Time'),
                subtitle: Text(start.toString()),
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: start,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (picked != null) {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(start),
                    );
                    if (time != null) {
                      start = DateTime(picked.year, picked.month, picked.day,
                          time.hour, time.minute);
                    }
                  }
                },
              ),
              ListTile(
                title: const Text('End Time'),
                subtitle: Text(end.toString()),
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: end,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (picked != null) {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(end),
                    );
                    if (time != null) {
                      end = DateTime(picked.year, picked.month, picked.day,
                          time.hour, time.minute);
                    }
                  }
                },
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel')),
            TextButton(
              onPressed: () =>
                  Navigator.pop(context, UserScheduleAction.delete(schedule)),
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: const Text('Delete'),
            ),
            ElevatedButton(
              onPressed: () {
                final edited = schedule.copyWith(
                  scheduled_start_work: start,
                  scheduled_end_work: end,
                );
                Navigator.pop(context, UserScheduleAction.edit(edited));
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  Future<GenerateScheduleData?> _showGenerateScheduleForm(
      BuildContext context, List<User> users) async {
    final Set<User> selectedUsers = {};
    DateTime? start;
    DateTime? end;

    return showDialog<GenerateScheduleData>(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text('Generate Schedule'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Select Users:'),
                    ...users.map((user) {
                      final fullName = '${user.first_name} ${user.last_name}';
                      return CheckboxListTile(
                        title: Text(fullName),
                        value: selectedUsers.contains(user),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value == true) {
                              selectedUsers.add(user);
                            } else {
                              selectedUsers.remove(user);
                            }
                          });
                        },
                      );
                    }).toList(),
                    const SizedBox(height: 12),
                    ListTile(
                      title: const Text('Start Date'),
                      subtitle:
                          Text(start?.toString() ?? 'Tap to select start date'),
                      onTap: () async {
                        final picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        if (picked != null) {
                          setState(() => start = picked);
                        }
                      },
                    ),
                    ListTile(
                      title: const Text('End Date'),
                      subtitle:
                          Text(end?.toString() ?? 'Tap to select end date'),
                      onTap: () async {
                        final picked = await showDatePicker(
                          context: context,
                          initialDate: start ?? DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        if (picked != null) {
                          setState(() => end = picked);
                        }
                      },
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed:
                      (selectedUsers.isNotEmpty && start != null && end != null)
                          ? () => Navigator.pop(
                                context,
                                GenerateScheduleData(
                                  users: selectedUsers.toList(),
                                  start: start!,
                                  end: end!,
                                ),
                              )
                          : null,
                  child: const Text('Generate'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class UserScheduleAction {
  final UserSchedule? edited;
  final UserSchedule? deleted;

  const UserScheduleAction._({this.edited, this.deleted});

  factory UserScheduleAction.edit(UserSchedule schedule) =>
      UserScheduleAction._(edited: schedule);

  factory UserScheduleAction.delete(UserSchedule schedule) =>
      UserScheduleAction._(deleted: schedule);
}

class GenerateScheduleData {
  final List<User> users;
  final DateTime start;
  final DateTime end;

  GenerateScheduleData({
    required this.users,
    required this.start,
    required this.end,
  });
}
