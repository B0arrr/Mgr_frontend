import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/datasource/models/Department/department.dart';
import 'package:mgr_frontend/src/features/department_management/logic/department_management_bloc.dart';

@RoutePage()
class DepartmentManagementScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const DepartmentManagementScreen({super.key});

  @override
  State<StatefulWidget> createState() => _DepartmentManagementScreen();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => DepartmentManagementBloc(),
      child: this,
    );
  }
}

class _DepartmentManagementScreen extends State<DepartmentManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DepartmentManagementBloc, DepartmentManagementState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(I18n.of(context).department_management_title),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.departments.length,
                  itemBuilder: (context, index) {
                    final department = state.departments[index];
                    return ListTile(
                      title: Text(department.name),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          context.read<DepartmentManagementBloc>().add(
                                DepartmentManagementEvent.removeDepartment(
                                    department),
                              );
                        },
                      ),
                      onTap: () async {
                        final updatedDepartment =
                            await _showEditDialog(context, department);
                        if (updatedDepartment != null) {
                          context
                              .read<DepartmentManagementBloc>()
                              .add(DepartmentManagementEvent.updateDepartment(
                                oldDepartment: department,
                                newDepartment: updatedDepartment,
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
                  child: Text(I18n.of(context).department_management_addButton),
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
                          .department_management_alert_dialog_name)),
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
                      .read<DepartmentManagementBloc>()
                      .add(DepartmentManagementEvent.addCompany(Department(
                        id: DateTime.now().millisecondsSinceEpoch,
                        name: nameController.text,
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

  Future<Department?> _showEditDialog(
      BuildContext context, Department department) async {
    final nameController = TextEditingController(text: department.name);

    return showDialog<Department>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
              I18n.of(context).department_management_alert_dialog_edit_title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .department_management_alert_dialog_name)),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(I18n.of(context).cancel)),
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop(
                  Department(
                    id: department.id,
                    name: nameController.text,
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
