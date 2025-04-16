import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/datasource/models/UserAddress/user_address.dart';
import 'package:mgr_frontend/src/features/company_management/logic/company_management_bloc.dart';
import 'package:mgr_frontend/src/features/user_management/logic/user_address_management/user_address_management_bloc.dart';

class UserAddressManagementScreen extends StatefulWidget {
  const UserAddressManagementScreen({super.key});

  @override
  State<StatefulWidget> createState() => _UserAddressManagementScreen();
}

class _UserAddressManagementScreen extends State<UserAddressManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserAddressManagementBloc(),
      child: BlocBuilder<UserAddressManagementBloc, UserAddressManagementState>(
          builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(I18n.of(context)),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.userAddresses.length,
                  itemBuilder: (context, index) {
                    final user_address = state.userAddresses[index];
                    final address = user_address.addresses[0];
                    return ListTile(
                      title: Text(address!.state),
                      subtitle: Text(
                          '${address.city}, ${address.state}, ${address.zip}, ${address.country}'),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          context.read<UserAddressManagementBloc>().add(
                                UserAddressManagementEvent.removeUserAddress(
                                    user_address),
                              );
                        },
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
      }),
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

  Future<UserAddress?> _showEditDialog(
      BuildContext context, UserAddress userAddress, int userId) async {
    int selectedAddressId;
    bool isRemote;
    final addressList =
        await context.read<UserAddressManagementBloc>().getAddressList();

    return showDialog<UserAddress>(
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
              DropdownButton(
                value: selectedAddressId,
                hint: Text(
                    I18n.of(context).company_management_alert_dialog_address),
                items: addressList.map((address) {
                  return DropdownMenuItem(
                    value: address.id,
                    child: Text(
                        '${address.street}, ${address.zip} ${address.city}, ${address.country}'),
                  );
                }).toList(),
                onChanged: (int? newValue) {
                  selectedAddressId = newValue;
                },
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
                  UserAddress(
                    id: userAddress.id,
                    user_id: userId,
                    address_id: userAddress,
                    is_remote: isRemote,
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
