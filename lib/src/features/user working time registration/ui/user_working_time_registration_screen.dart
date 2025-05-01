import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/datasource/models/UserWorkhour/user_workhour.dart';
import 'package:mgr_frontend/src/features/user%20working%20time%20registration/logic/user_working_time_registration_blob.dart';
import 'package:mgr_frontend/src/shared/locator.dart';
import 'package:mgr_frontend/src/shared/services/storage/local_storage.dart';
import 'package:mgr_frontend/src/shared/services/storage/storage.dart';

@RoutePage()
class UserWorkingTimeRegistrationScreen extends StatefulWidget
    implements AutoRouteWrapper {
  final int userId;
  final Storage _localStorage;

  UserWorkingTimeRegistrationScreen({
    super.key,
    required this.userId,
    LocalStorage? localStorage,
  }) : _localStorage = localStorage ?? locator<Storage>();

  @override
  State<StatefulWidget> createState() => _UserWorkingTimeRegistrationScreen();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => UserWorkingTimeRegistrationBloc(userId: userId),
      child: this,
    );
  }
}

class _UserWorkingTimeRegistrationScreen
    extends State<UserWorkingTimeRegistrationScreen> {
  User? user;
  List<String>? roleNames;
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    _loadUser();
    _searchController.addListener(() {
      setState(() {
        _searchQuery = _searchController.text.toLowerCase();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserWorkingTimeRegistrationBloc,
        UserWorkingTimeRegistrationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(I18n.of(context).user_working_time_registration_title),
            actions: [
              IconButton(
                icon: const Icon(Icons.play_arrow),
                tooltip:
                    I18n.of(context).user_working_time_registration_start_work,
                onPressed: () {
                  final now = DateTime.now();
                  final today = DateTime(now.year, now.month, now.day);

                  final openSessions = state.userWorkHours.where((record) {
                    final isSameUser = record.user?.id == user?.id;
                    final isToday = record.day.year == today.year &&
                        record.day.month == today.month &&
                        record.day.day == today.day;
                    final isOpen = record.end_time == null;
                    return isSameUser && isToday && isOpen;
                  });

                  if (openSessions.isNotEmpty) {
                    // Show warning - there's already an open session
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          I18n.of(context)
                              .user_working_time_registration_already_started,
                          style: const TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }

                  final newWorkHour = UserWorkHour(
                    id: DateTime.now().millisecondsSinceEpoch,
                    user_id: state.userId,
                    start_time: now,
                    end_time: null,
                    day: today,
                  );

                  context.read<UserWorkingTimeRegistrationBloc>().add(
                        UserWorkingTimeRegistrationEvent.addUserWorkHour(
                            newWorkHour),
                      );
                },
              ),
              IconButton(
                icon: const Icon(Icons.stop),
                tooltip:
                    I18n.of(context).user_working_time_registration_end_work,
                onPressed: () {
                  final bloc = context.read<UserWorkingTimeRegistrationBloc>();
                  final currentState = bloc.state;

                  final now = DateTime.now();
                  final today = DateTime(now.year, now.month, now.day);

                  final openRecords =
                      currentState.userWorkHours.where((record) {
                    final isSameUser = record.user?.id == user?.id;
                    final isSameDay = record.day.year == today.year &&
                        record.day.month == today.month &&
                        record.day.day == today.day;
                    final isOpen = record.end_time == null;
                    return isSameUser && isSameDay && isOpen;
                  }).toList();

                  final UserWorkHour? openRecord =
                      openRecords.isNotEmpty ? openRecords.first : null;

                  if (openRecord != null) {
                    final now = DateTime.now();
                    final updated = openRecord.copyWith(end_time: now);

                    bloc.add(
                      UserWorkingTimeRegistrationEvent.updateUserWorkHour(
                        oldUserWorkHour: openRecord,
                        newUserWorkHour: updated,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          I18n.of(context)
                              .user_working_time_registration_no_open_session,
                          style: const TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
          body: Column(
            children: [
              if (roleNames!
                  .any((role) => role == "Admin" || role == "Manager"))
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      labelText: I18n.of(context)
                          .user_working_time_registration_search_hint,
                      // Add this key in your i18n
                      prefixIcon: const Icon(Icons.search),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: [
                        DataColumn(
                            label: Text(I18n.of(context)
                                .user_working_time_registration_user)),
                        DataColumn(
                            label: Text(I18n.of(context)
                                .user_working_time_registration_startTime)),
                        DataColumn(
                            label: Text(I18n.of(context)
                                .user_working_time_registration_endTime)),
                        DataColumn(
                            label: Text(I18n.of(context)
                                .user_working_time_registration_hours)),
                        DataColumn(
                            label: Text(I18n.of(context)
                                .user_working_time_registration_actions)),
                      ],
                      rows: state.userWorkHours
                          .where((uwh) {
                        final matchesUser = uwh.user?.id == user?.id;
                        final matchesSearch = ('${uwh.user!.first_name} ${uwh.user!.last_name}')
                            .toLowerCase()
                            .contains(_searchQuery);
                        final isAdminOrManager = roleNames!
                            .any((role) => role == "Admin" || role == "Manager");

                        return isAdminOrManager
                            ? uwh.user != null && matchesSearch
                            : matchesUser;
                      })
                          .map((userWorkHour) {
                        return DataRow(cells: [
                          DataCell(Text(
                              '${userWorkHour.user!.first_name} ${userWorkHour.user!.last_name}')),
                          DataCell(
                              Text(userWorkHour.start_time.toLocal().toString())),
                          DataCell(Text(userWorkHour.end_time?.toLocal().toString() ?? '...')),
                          DataCell(Text(
                            userWorkHour.end_time != null
                                ? _formatDuration(userWorkHour.end_time!
                                .difference(userWorkHour.start_time))
                                : '—',
                          )),
                          if (roleNames!.any((role) => role == "Admin" || role == "Manager"))
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () async {
                                    final updatedUserWorkHour =
                                    await _showEditDialog(context, userWorkHour);
                                    if (updatedUserWorkHour != null) {
                                      context
                                          .read<UserWorkingTimeRegistrationBloc>()
                                          .add(
                                        UserWorkingTimeRegistrationEvent
                                            .updateUserWorkHour(
                                          oldUserWorkHour: userWorkHour,
                                          newUserWorkHour: updatedUserWorkHour,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ],
                            )),
                        ]);
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<UserWorkHour?> _showEditDialog(
      BuildContext context, UserWorkHour userWorkHour) async {
    DateTime? newEndTime = userWorkHour.end_time;
    String? validationError;

    final timeController = TextEditingController(
      text: newEndTime != null
          ? TimeOfDay.fromDateTime(newEndTime).format(context)
          : '',
    );

    return showDialog<UserWorkHour>(
      context: context,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text(I18n.of(context)
                  .user_working_time_registration_alert_dialog_title),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () async {
                      final picked = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(
                            newEndTime ?? DateTime.now()),
                      );
                      if (picked != null) {
                        final day = userWorkHour.day;
                        final pickedTime = DateTime(
                          day.year,
                          day.month,
                          day.day,
                          picked.hour,
                          picked.minute,
                        );
                        setState(() {
                          newEndTime = pickedTime;
                          timeController.text = picked.format(context);
                          validationError = null;
                        });
                      }
                    },
                    child: AbsorbPointer(
                      child: TextFormField(
                        controller: timeController,
                        decoration: InputDecoration(
                          labelText: I18n.of(context)
                              .user_working_time_registration_alert_dialog_endTime,
                          suffixIcon: const Icon(Icons.access_time),
                        ),
                      ),
                    ),
                  ),
                  if (validationError != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        validationError!,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(dialogContext).pop(),
                  child: Text(I18n.of(context).cancel),
                ),
                TextButton(
                  onPressed: () {
                    if (newEndTime == null) {
                      setState(() {
                        validationError = I18n.of(context)
                            .user_working_time_registration_alert_dialog_no_time_selected;
                      });
                      return;
                    }

                    if (newEndTime!.isBefore(userWorkHour.start_time) ||
                        newEndTime!.isAtSameMomentAs(userWorkHour.start_time)) {
                      setState(() {
                        validationError = I18n.of(context)
                            .user_working_time_registration_alert_dialog_error_end_before_start;
                      });
                      return;
                    }

                    Navigator.of(dialogContext).pop(
                      userWorkHour.copyWith(end_time: newEndTime),
                    );
                  },
                  child: Text(I18n.of(context).save),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Future<void> _loadUser() async {
    final usr = await widget._localStorage.getUser();
    setState(() {
      user = usr;
    });
    setState(() {
      roleNames = user!.roles!.map((role) => role.name).toList();
    });
  }

  String _formatDuration(Duration duration) {
    return '${duration.inHours}';
  }
}
