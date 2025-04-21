import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/datasource/models/Address/address.dart';
import 'package:mgr_frontend/src/datasource/models/UserAddress/user_address.dart';
import 'package:mgr_frontend/src/features/user_management/logic/user_address_management/user_address_management_bloc.dart';
import 'package:mgr_frontend/src/shared/extensions/context_extensions.dart';

class UserAddressManagementScreen extends StatefulWidget {
  final int userId;

  const UserAddressManagementScreen({super.key, required this.userId});

  @override
  State<StatefulWidget> createState() => _UserAddressManagementScreen();
}

class _UserAddressManagementScreen extends State<UserAddressManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserAddressManagementBloc(userId: widget.userId),
      child: BlocBuilder<UserAddressManagementBloc, UserAddressManagementState>(
          builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(I18n.of(context).user_address_management_title),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.userAddresses.length,
                  itemBuilder: (context, index) {
                    final user_address = state.userAddresses[index];
                    final address = user_address.addresses!;
                    return ListTile(
                      title: Text(address.street),
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
                        final updatedUserAddress = await _showEditDialog(
                            context, user_address, state.userId);
                        if (updatedUserAddress != null) {
                          context
                              .read<UserAddressManagementBloc>()
                              .add(UserAddressManagementEvent.updateUserAddress(
                                oldUserAddress: user_address,
                                newUserAddress: updatedUserAddress,
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
                      Text(I18n.of(context).user_address_management_addButton),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Future<void> _showAddDialog(BuildContext context, int userId) async {
    int? selectedAddressId;
    bool isRemote = false;
    final addressList =
        await context.read<UserAddressManagementBloc>().getAddressList();

    await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
              I18n.of(context).user_address_management_alert_dialog_add_title),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton(
                    value: selectedAddressId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context)
                          .user_address_management_alert_dialog_address,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: addressList.map((address) {
                      return DropdownMenuItem(
                        value: address.id,
                        child: Text(
                          '${address.street}, ${address.zip} ${address.city}, ${address.country}',
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedAddressId = newValue;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      I18n.of(context)
                          .user_address_management_alert_dialog_remote_checkbox,
                      style: context.textTheme.bodyMedium,
                    ),
                    selected: isRemote,
                    value: isRemote,
                    onChanged: (bool? value) {
                      setState(() {
                        isRemote = value ?? false;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
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
                if (selectedAddressId != null) {
                  context.read<UserAddressManagementBloc>().add(
                          UserAddressManagementEvent.addUserAddress(UserAddress(
                        id: DateTime.now().millisecondsSinceEpoch,
                        user_id: userId,
                        address_id: selectedAddressId as int,
                        is_remote: isRemote,
                        addresses: null,
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
    int? selectedAddressId = userAddress.address_id;
    bool isRemote = userAddress.is_remote;
    Address? address = userAddress.addresses;
    final addressList =
        await context.read<UserAddressManagementBloc>().getAddressList();

    return showDialog<UserAddress>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(I18n.of(context).user_management_alert_dialog_edit_title),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton(
                    value: selectedAddressId,
                    isExpanded: true,
                    hint: Text(
                      I18n.of(context)
                          .user_address_management_alert_dialog_address,
                      style: context.textTheme.bodyMedium,
                    ),
                    items: addressList.map((address) {
                      return DropdownMenuItem(
                        value: address.id,
                        child: Text(
                          '${address.street}, ${address.zip} ${address.city}, ${address.country}',
                          style: context.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedAddressId = newValue;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text(
                      I18n.of(context)
                          .user_address_management_alert_dialog_remote_checkbox,
                      style: context.textTheme.bodyMedium,
                    ),
                    value: isRemote,
                    onChanged: (bool? value) {
                      setState(() {
                        isRemote = value ?? false;
                      });
                      setState(() async {
                        address = await context
                            .read<UserAddressManagementBloc>()
                            .getAddress(selectedAddressId as int);
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
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
                  UserAddress(
                    id: userAddress.id,
                    user_id: userId,
                    address_id: selectedAddressId as int,
                    is_remote: isRemote,
                    addresses: address,
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
