import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/features/user_management/logic/user_management_bloc.dart';
import 'package:mgr_frontend/src/features/user_management/ui/user_address_management/user_address_management_screen.dart';
import 'package:mgr_frontend/src/features/user_management/ui/user_employment_management/user_employment_management_screen.dart';
import 'package:mgr_frontend/src/features/user_management/ui/user_manager_management/user_manager_management_screen.dart';
import 'package:mgr_frontend/src/features/user_management/ui/user_role_management/user_role_management_screen.dart';

@RoutePage()
class UserManagementScreen extends StatefulWidget implements AutoRouteWrapper {
  const UserManagementScreen({super.key});

  @override
  State<StatefulWidget> createState() => _UserManagementScreen();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => UserManagementBloc(),
      child: this,
    );
  }
}

class _UserManagementScreen extends State<UserManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserManagementBloc, UserManagementState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(I18n.of(context).user_management_title),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.users.length,
                  itemBuilder: (context, index) {
                    final user = state.users[index];
                    return ListTile(
                      title: Text('${user.first_name} ${user.last_name}'),
                      subtitle: Text(user.email),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: user.is_active
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                            onPressed: () {
                              context.read<UserManagementBloc>().add(
                                    UserManagementEvent.changeUserStatus(user),
                                  );
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              context.read<UserManagementBloc>().add(
                                    UserManagementEvent.removeUser(user),
                                  );
                            },
                          ),
                        ],
                      ),
                      onTap: () async {
                        final updatedUser =
                            await _showEditDialog(context, user);
                        if (updatedUser != null) {
                          context
                              .read<UserManagementBloc>()
                              .add(UserManagementEvent.updateUser(
                                oldUser: user,
                                newUser: updatedUser,
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
                  child: Text(I18n.of(context).user_management_addButton),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _showAddDialog(BuildContext context) async {
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(I18n.of(context).user_management_alert_dialog_add_title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .user_management_alert_dialog_firstName)),
              TextField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .user_management_alert_dialog_lastName)),
              TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText:
                          I18n.of(context).user_management_alert_dialog_email)),
              TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .user_management_alert_dialog_password)),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(I18n.of(context).cancel)),
            TextButton(
              onPressed: () {
                if (firstNameController.text.isNotEmpty) {
                  context
                      .read<UserManagementBloc>()
                      .add(UserManagementEvent.addUser(User(
                        id: DateTime.now().millisecondsSinceEpoch,
                        first_name: firstNameController.text,
                        last_name: lastNameController.text,
                        password: passwordController.text,
                        email: emailController.text,
                        is_active: false,
                        has_flexible_working_hours: false,
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

  Future<User?> _showEditDialog(BuildContext context, User user) async {
    final firstNameController = TextEditingController(text: user.first_name);
    final lastNameController = TextEditingController(text: user.last_name);
    final emailController = TextEditingController(text: user.email);

    return showDialog<User>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(I18n.of(context).user_management_alert_dialog_edit_title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .user_management_alert_dialog_firstName)),
              TextField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .user_management_alert_dialog_lastName)),
              TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText:
                          I18n.of(context).user_management_alert_dialog_email)),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserAddressManagementScreen(
                            userId: user.id,
                          )));
                },
                child: Text(
                    I18n.of(context).user_management_alert_dialog_addresses),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserEmploymentManagementScreen(
                            userId: user.id,
                          )));
                },
                child: Text(
                    I18n.of(context).user_management_alert_dialog_employments),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserManagerManagementScreen(
                            managerId: user.id,
                          )));
                },
                child: Text(I18n.of(context)
                    .user_management_alert_dialog_managed_users),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserRoleManagementScreen(
                            userId: user.id,
                          )));
                },
                child:
                    Text(I18n.of(context).user_management_alert_dialog_roles),
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(I18n.of(context).cancel)),
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop(
                  User(
                    id: user.id,
                    first_name: user.first_name,
                    last_name: user.last_name,
                    email: user.email,
                    password: user.password,
                    is_active: user.is_active,
                    has_flexible_working_hours: user.has_flexible_working_hours,
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
