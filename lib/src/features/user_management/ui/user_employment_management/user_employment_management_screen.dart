import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/datasource/models/Company/company.dart';
import 'package:mgr_frontend/src/datasource/models/Department/department.dart';
import 'package:mgr_frontend/src/datasource/models/Employment/employment.dart';
import 'package:mgr_frontend/src/datasource/models/Position/position.dart';
import 'package:mgr_frontend/src/datasource/models/UserEmployment/user_employment.dart';
import 'package:mgr_frontend/src/features/user_management/logic/user_employment_management/user_employment_management_bloc.dart';
import 'package:mgr_frontend/src/shared/extensions/context_extensions.dart';

class UserEmploymentManagementScreen extends StatefulWidget {
  final int userId;

  const UserEmploymentManagementScreen({super.key, required this.userId});

  @override
  State<StatefulWidget> createState() => _UserEmploymentManagementScreen();
}

class _UserEmploymentManagementScreen
    extends State<UserEmploymentManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserEmploymentManagementBloc(userId: widget.userId),
      child: BlocBuilder<UserEmploymentManagementBloc,
          UserEmploymentManagementState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(I18n.of(context).user_employment_management_title),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.userEmployments.length,
                    itemBuilder: (context, index) {
                      final userEmployment = state.userEmployments[index];
                      return ListTile(
                        title: Text(userEmployment.employments!.name),
                        subtitle: Text(
                            '${userEmployment.start_date} - ${userEmployment.end_date}'),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            context.read<UserEmploymentManagementBloc>().add(
                                  UserEmploymentManagementEvent
                                      .removeUserEmployment(userEmployment),
                                );
                          },
                        ),
                        onTap: () async {
                          final updatedUserEmployment = await _showEditDialog(
                              context, userEmployment, state.userId);
                          if (updatedUserEmployment != null) {
                            context.read<UserEmploymentManagementBloc>().add(
                                    UserEmploymentManagementEvent
                                        .updateUserEmployment(
                                  oldUserEmployment: userEmployment,
                                  newUserEmployment: updatedUserEmployment,
                                ));
                          }
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Dimens.spacing),
                  child: ElevatedButton(
                    onPressed: () {
                      _showAddDialog(context, state.userId);
                    },
                    child: Text(
                        I18n.of(context).user_employment_management_addButton),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _showAddDialog(BuildContext context, int userId) async {
    final userEmploymentManagementBloc =
        context.read<UserEmploymentManagementBloc>();

    int? selectedEmploymentId;
    int? selectedCompanyId;
    int? selectedDepartmentId;
    int? selectedPositionId;
    DateTime? selectedDate;
    final employmentList =
        await userEmploymentManagementBloc.getEmploymentList();
    final companyList = await userEmploymentManagementBloc.getCompanyList();
    final departmentList =
        await userEmploymentManagementBloc.getDepartmentList();
    final positionList = await userEmploymentManagementBloc.getPositionList();

    await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(I18n.of(context)
              .user_employment_management_alert_dialog_add_title),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton(
                    value: selectedEmploymentId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context)
                          .user_employment_management_alert_dialog_employment,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: employmentList.map((employment) {
                      return DropdownMenuItem(
                        value: employment.id,
                        child: Text(
                          '${employment.name}, ${employment.max_hours_per_day}/${employment.max_hours_per_week}',
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedEmploymentId = newValue;
                      });
                    },
                  ),
                  DropdownButton(
                    value: selectedCompanyId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context)
                          .user_employment_management_alert_dialog_company,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: companyList.map((company) {
                      return DropdownMenuItem(
                        value: company.id,
                        child: Text(
                          company.name,
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedCompanyId = newValue;
                      });
                    },
                  ),
                  DropdownButton(
                    value: selectedDepartmentId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context)
                          .user_employment_management_alert_dialog_department,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: departmentList.map((department) {
                      return DropdownMenuItem(
                        value: department.id,
                        child: Text(
                          department.name,
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedDepartmentId = newValue;
                      });
                    },
                  ),
                  DropdownButton(
                    value: selectedPositionId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context)
                          .user_employment_management_alert_dialog_position,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: positionList.map((position) {
                      return DropdownMenuItem(
                        value: position.id,
                        child: Text(
                          position.name,
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedPositionId = newValue;
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text(I18n.of(context)
                        .user_employment_management_alert_dialog_starting_date),
                    onPressed: () async {
                      final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );
                      if (picked != null) {
                        setState(() {
                          selectedDate = picked;
                        });
                      }
                    },
                  ),
                ],
              );
            },
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(I18n.of(context).cancel)),
            TextButton(
              onPressed: () {
                if (selectedEmploymentId != null) {
                  context.read<UserEmploymentManagementBloc>().add(
                          UserEmploymentManagementEvent.addUserEmployment(
                              UserEmployment(
                        id: DateTime.now().millisecondsSinceEpoch,
                        user_id: userId,
                        employment_id: selectedEmploymentId as int,
                        company_id: selectedCompanyId as int,
                        department_id: selectedDepartmentId as int,
                        position_id: selectedPositionId as int,
                        start_date: selectedDate as DateTime,
                      )));
                  Navigator.of(dialogContext).pop();
                }
              },
              child: Text(I18n.of(context).save),
            ),
          ],
        );
      },
    );
  }

  Future<UserEmployment?> _showEditDialog(
      BuildContext context, UserEmployment userEmployment, int userId) async {
    final userEmploymentManagementBloc =
        context.read<UserEmploymentManagementBloc>();

    int? selectedEmploymentId = userEmployment.employment_id;
    int? selectedCompanyId = userEmployment.company_id;
    int? selectedDepartmentId = userEmployment.department_id;
    int? selectedPositionId = userEmployment.position_id;
    Employment? employment = userEmployment.employments;
    Company? company = userEmployment.companies;
    Department? department = userEmployment.departments;
    Position? position = userEmployment.positions;
    final employmentList =
        await userEmploymentManagementBloc.getEmploymentList();
    final companyList = await userEmploymentManagementBloc.getCompanyList();
    final departmentList =
        await userEmploymentManagementBloc.getDepartmentList();
    final positionList = await userEmploymentManagementBloc.getPositionList();

    return showDialog<UserEmployment>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(I18n.of(context)
              .user_employment_management_alert_dialog_edit_title),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton(
                    value: selectedEmploymentId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context)
                          .user_employment_management_alert_dialog_employment,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: employmentList.map((employment) {
                      return DropdownMenuItem(
                        value: employment.id,
                        child: Text(
                          '${employment.name}, ${employment.max_hours_per_day}/${employment.max_hours_per_week}',
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedEmploymentId = newValue;
                      });
                      setState(() async {
                        employment = await userEmploymentManagementBloc
                            .getEmployment(selectedEmploymentId as int);
                      });
                    },
                  ),
                  DropdownButton(
                    value: selectedCompanyId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context)
                          .user_employment_management_alert_dialog_company,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: companyList.map((company) {
                      return DropdownMenuItem(
                        value: company.id,
                        child: Text(
                          company.name,
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedCompanyId = newValue;
                      });
                      setState(() async {
                        company = await userEmploymentManagementBloc
                            .getCompany(selectedCompanyId as int);
                      });
                    },
                  ),
                  DropdownButton(
                    value: selectedDepartmentId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context)
                          .user_employment_management_alert_dialog_department,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: departmentList.map((department) {
                      return DropdownMenuItem(
                        value: department.id,
                        child: Text(
                          department.name,
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedDepartmentId = newValue;
                      });
                      setState(() async {
                        department = await userEmploymentManagementBloc
                            .getDepartment(selectedDepartmentId as int);
                      });
                    },
                  ),
                  DropdownButton(
                    value: selectedPositionId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context)
                          .user_employment_management_alert_dialog_position,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: positionList.map((position) {
                      return DropdownMenuItem(
                        value: position.id,
                        child: Text(
                          position.name,
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedPositionId = newValue;
                      });
                      setState(() async {
                        position = await userEmploymentManagementBloc
                            .getPosition(selectedPositionId as int);
                      });
                    },
                  ),
                ],
              );
            },
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(I18n.of(context).cancel)),
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop(
                  UserEmployment(
                    id: userEmployment.id,
                    user_id: userId,
                    employment_id: selectedEmploymentId as int,
                    company_id: selectedCompanyId as int,
                    department_id: selectedDepartmentId as int,
                    position_id: selectedPositionId as int,
                    start_date: userEmployment.start_date,
                    employments: employment,
                    companies: company,
                    departments: department,
                    positions: position,
                  ),
                );
              },
              child: Text(I18n.of(context).save),
            ),
          ],
        );
      },
    );
  }
}
