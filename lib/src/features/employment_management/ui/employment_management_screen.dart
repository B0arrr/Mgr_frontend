import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/datasource/models/Employment/employment.dart';
import 'package:mgr_frontend/src/features/employment_management/logic/employment_management_bloc.dart';
import 'package:number_editing_controller/number_editing_controller.dart';

@RoutePage()
class EmploymentManagementScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const EmploymentManagementScreen({super.key});

  @override
  State<StatefulWidget> createState() => _EmploymentManagementScreen();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => EmploymentManagementBloc(),
      child: this,
    );
  }
}

class _EmploymentManagementScreen extends State<EmploymentManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmploymentManagementBloc, EmploymentManagementState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(I18n.of(context).employment_management_title),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.employments.length,
                  itemBuilder: (context, index) {
                    final employment = state.employments[index];
                    return ListTile(
                      title: Text(employment.name),
                      subtitle: Text(
                          '${employment.max_hours_per_day}/${employment.max_hours_per_week}'),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          context.read<EmploymentManagementBloc>().add(
                                EmploymentManagementEvent.removeEmployment(
                                    employment),
                              );
                        },
                      ),
                      onTap: () async {
                        final updatedEmployment =
                            await _showEditDialog(context, employment);
                        if (updatedEmployment != null) {
                          context
                              .read<EmploymentManagementBloc>()
                              .add(EmploymentManagementEvent.updateEmployment(
                                oldEmployment: employment,
                                newEmployment: updatedEmployment,
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
                    _showAddDialog(context);
                  },
                  child: Text(I18n.of(context).employment_management_addButton),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _showAddDialog(BuildContext context) async {
    final nameController = TextEditingController();
    final maxHoursPerDayController = NumberEditingTextController.integer();
    final maxHoursPerWeekController = NumberEditingTextController.integer();

    await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
              I18n.of(context).department_management_alert_dialog_add_title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .employment_management_alert_dialog_name)),
              TextField(
                  controller: maxHoursPerDayController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .employment_management_alert_dialog_max_hours_per_day)),
              TextField(
                  controller: maxHoursPerWeekController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .employment_management_alert_dialog_max_hours_per_week)),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(I18n.of(context).cancel)),
            TextButton(
              onPressed: () {
                if (nameController.text.isNotEmpty) {
                  context
                      .read<EmploymentManagementBloc>()
                      .add(EmploymentManagementEvent.addEmployment(Employment(
                        id: DateTime.now().millisecondsSinceEpoch,
                        name: nameController.text,
                        max_hours_per_day:
                            maxHoursPerDayController.number as int,
                        max_hours_per_week:
                            maxHoursPerWeekController.number as int,
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

  Future<Employment?> _showEditDialog(
      BuildContext context, Employment employment) async {
    final nameController = TextEditingController(text: employment.name);
    final maxHoursPerDayController = NumberEditingTextController.integer(
        value: employment.max_hours_per_day);
    final maxHoursPerWeekController = NumberEditingTextController.integer(
        value: employment.max_hours_per_week);

    return showDialog<Employment>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
              I18n.of(context).employment_management_alert_dialog_edit_title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .employment_management_alert_dialog_name)),
              TextField(
                  controller: maxHoursPerDayController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .employment_management_alert_dialog_max_hours_per_day)),
              TextField(
                  controller: maxHoursPerWeekController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .employment_management_alert_dialog_max_hours_per_week)),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(I18n.of(context).cancel)),
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop(
                  Employment(
                    id: employment.id,
                    name: nameController.text,
                    max_hours_per_day: maxHoursPerDayController.number as int,
                    max_hours_per_week: maxHoursPerWeekController.number as int,
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
