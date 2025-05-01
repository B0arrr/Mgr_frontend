import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/datasource/models/Role/role.dart';
import 'package:mgr_frontend/src/datasource/models/UserRole/user_role.dart';
import 'package:mgr_frontend/src/features/user_management/logic/user_role_management/user_role_management_bloc.dart';
import 'package:mgr_frontend/src/shared/extensions/context_extensions.dart';

class UserRoleManagementScreen extends StatefulWidget {
  final int userId;

  const UserRoleManagementScreen({super.key, required this.userId});

  @override
  State<StatefulWidget> createState() => _UserRoleManagementScreen();
}

class _UserRoleManagementScreen extends State<UserRoleManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserRoleManagementBloc(userId: widget.userId),
      child: BlocBuilder<UserRoleManagementBloc, UserRoleManagementState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(I18n.of(context).user_role_management_title),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.userRoles.length,
                    itemBuilder: (context, index) {
                      final userRole = state.userRoles[index];
                      return ListTile(
                        title: Text(userRole.roles!.name),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            context.read<UserRoleManagementBloc>().add(
                                  UserRoleManagementEvent.removeUserRole(
                                      userRole),
                                );
                          },
                        ),
                        onTap: () async {
                          final updatedUserRole = await _showEditDialog(
                              context, userRole, state.userId);
                          if (updatedUserRole != null) {
                            context
                                .read<UserRoleManagementBloc>()
                                .add(UserRoleManagementEvent.updateUserRole(
                                  oldUserRole: userRole,
                                  newUserRole: updatedUserRole,
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
                    child:
                        Text(I18n.of(context).user_role_management_addButton),
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
    int? selectedRoleId;
    final roleList = await context.read<UserRoleManagementBloc>().getRoleList();

    await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
              I18n.of(context).user_role_management_alert_dialog_add_title),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton(
                    value: selectedRoleId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context).user_role_management_alert_dialog_name,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: roleList.map((role) {
                      return DropdownMenuItem(
                        value: role.id,
                        child: Text(
                          role.name,
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedRoleId = newValue;
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
                if (selectedRoleId != null) {
                  context
                      .read<UserRoleManagementBloc>()
                      .add(UserRoleManagementEvent.addUserRole(UserRole(
                        id: DateTime.now().millisecondsSinceEpoch,
                        user_id: userId,
                        role_id: selectedRoleId as int,
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

  Future<UserRole?> _showEditDialog(
      BuildContext context, UserRole userManager, int userId) async {
    final userRoleManagementBloc = context.read<UserRoleManagementBloc>();

    int? selectedRoleId = userManager.role_id;
    Role? role = userManager.roles;
    final roleList = await userRoleManagementBloc.getRoleList();

    return showDialog<UserRole>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
              I18n.of(context).user_role_management_alert_dialog_edit_title),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton(
                    value: selectedRoleId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context).user_role_management_alert_dialog_name,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: roleList.map((role) {
                      return DropdownMenuItem(
                        value: role.id,
                        child: Text(
                          role.name,
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedRoleId = newValue;
                      });
                      setState(() async {
                        role = await userRoleManagementBloc
                            .getRole(selectedRoleId as int);
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
                  UserRole(
                    id: userManager.id,
                    user_id: userId,
                    role_id: selectedRoleId as int,
                    roles: role,
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
