import 'package:flutter/material.dart';
import 'package:mgr_frontend/src/datasource/models/UserSchedule/user_schedule.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ScheduleAppointment extends Appointment {
  final UserSchedule userSchedule;

  ScheduleAppointment({
    required this.userSchedule,
  }) : super(
    startTime: userSchedule.scheduled_start_work,
    endTime: userSchedule.scheduled_end_work,
    subject: '${userSchedule.user!.first_name} ${userSchedule.user!.last_name}',
    id: userSchedule.id,
    color: Colors.blue,
  );
}
