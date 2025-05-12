import 'package:mgr_frontend/src/datasource/models/UserSchedule/user_schedule.dart';
import 'package:mgr_frontend/src/shared/components/calendar/schedule_appointment.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MyCalendarDataSource extends CalendarDataSource {
  MyCalendarDataSource(List<UserSchedule> schedules) {
    appointments = schedules
        .map((s) => ScheduleAppointment(userSchedule: s))
        .toList();
  }
}