import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/datasource/models/UserManager/user_manager.dart';
import 'package:mgr_frontend/src/features/user_management/logic/user_manager_management/user_manager_management_bloc.dart';
import 'package:mgr_frontend/src/shared/extensions/context_extensions.dart';

class UserManagerManagementScreen extends StatefulWidget {
  final int managerId;

  const UserManagerManagementScreen({super.key, required this.managerId});

  @override
  State<StatefulWidget> createState() => _UserManagerManagementScreen();
}

class _UserManagerManagementScreen extends State<UserManagerManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserManagerManagementBloc(managerId: widget.managerId),
      child: BlocBuilder<UserManagerManagementBloc, UserManagerManagementState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(I18n.of(context).user_manager_management_title),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.userManagers.length,
                    itemBuilder: (context, index) {
                      final userManager = state.userManagers[index];
                      return ListTile(
                        title: Text(
                            '${userManager.users!.first_name} ${userManager.users!.last_name}'),
                        subtitle: Text(userManager.users!.email),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            context.read<UserManagerManagementBloc>().add(
                                  UserManagerManagementEvent.removeUserManager(
                                      userManager),
                                );
                          },
                        ),
                        onTap: () async {
                          final updatedUserManager = await _showEditDialog(
                              context, userManager, state.managerId);
                          if (updatedUserManager != null) {
                            context.read<UserManagerManagementBloc>().add(
                                    UserManagerManagementEvent
                                        .updateUserManager(
                                  oldUserManager: userManager,
                                  newUserManager: updatedUserManager,
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
                      _showAddDialog(context, state.managerId);
                    },
                    child: Text(
                        I18n.of(context).user_manager_management_addButton),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _showAddDialog(BuildContext context, int managerId) async {
    int? selectedUserId;
    final userList =
        await context.read<UserManagerManagementBloc>().getUserList();

    await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
              I18n.of(context).user_manager_management_alert_dialog_add_title),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton(
                    value: selectedUserId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context)
                          .user_manager_management_alert_dialog_user,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: userList.map((user) {
                      return DropdownMenuItem(
                        value: user.id,
                        child: Text(
                          '${user.first_name} ${user.last_name} ${user.email}',
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedUserId = newValue;
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
                if (selectedUserId != null) {
                  context.read<UserManagerManagementBloc>().add(
                          UserManagerManagementEvent.addUserManager(UserManager(
                        id: DateTime.now().millisecondsSinceEpoch,
                        user_id: selectedUserId as int,
                        manager_id: managerId,
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

  Future<UserManager?> _showEditDialog(
      BuildContext context, UserManager userManager, int managerId) async {
    final userManagerManagementBloc = context.read<UserManagerManagementBloc>();

    int? selectedUserId = userManager.user_id;
    User? user = userManager.users;
    final userList = await userManagerManagementBloc.getUserList();

    return showDialog<UserManager>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
              I18n.of(context).user_manager_management_alert_dialog_edit_title),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton(
                    value: selectedUserId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context)
                          .user_manager_management_alert_dialog_user,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: userList.map((user) {
                      return DropdownMenuItem(
                        value: user.id,
                        child: Text(
                          '${user.first_name} ${user.last_name} ${user.email}',
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedUserId = newValue;
                      });
                      setState(() async {
                        user = await userManagerManagementBloc
                            .getUser(selectedUserId as int);
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
                  UserManager(
                    id: userManager.id,
                    user_id: selectedUserId as int,
                    manager_id: managerId,
                    users: user,
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
