import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/datasource/models/Address/address.dart';
import 'package:mgr_frontend/src/features/address_management/logic/address_management_bloc.dart';

@RoutePage()
class AddressManagementScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const AddressManagementScreen({super.key});

  @override
  State<AddressManagementScreen> createState() =>
      _AddressManagementScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => AddressManagementBloc(),
      child: this,
    );
  }
}

class _AddressManagementScreenState extends State<AddressManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressManagementBloc, AddressManagementState>(
        builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Text(I18n.of(context).address_management_title),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: state.addresses.length,
                itemBuilder: (context, index) {
                  final address = state.addresses[index];
                  return ListTile(
                    title: Text(address.street),
                    subtitle: Text(
                        '${address.city}, ${address.state}, ${address.zip}, ${address.country}'),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        context.read<AddressManagementBloc>().add(
                              AddressManagementEvent.removeAddress(address),
                            );
                      },
                    ),
                    onTap: () async {
                      final updatedAddress =
                          await _showEditDialog(context, address);
                      if (updatedAddress != null) {
                        context.read<AddressManagementBloc>().add(
                              AddressManagementEvent.updateAddress(
                                oldAddress: address,
                                newAddress: updatedAddress,
                              ),
                            );
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
                child: Text(I18n.of(context).address_management_addButton),
              ),
            ),
          ],
        ),
      );
    });
  }

  Future<void> _showAddDialog(BuildContext context) async {
    final streetController = TextEditingController();
    final cityController = TextEditingController();
    final stateController = TextEditingController();
    final zipController = TextEditingController();
    final countryController = TextEditingController();

    await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(I18n.of(context).address_management_title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: streetController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .address_management_alert_dialog_street)),
              TextField(
                  controller: cityController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .address_management_alert_dialog_city)),
              TextField(
                  controller: stateController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .address_management_alert_dialog_state)),
              TextField(
                  controller: zipController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .address_management_alert_dialog_zipCode)),
              TextField(
                  controller: countryController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .address_management_alert_dialog_country)),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(I18n.of(context).cancel)),
            TextButton(
              onPressed: () {
                if (streetController.text.isNotEmpty) {
                  context.read<AddressManagementBloc>().add(
                        AddressManagementEvent.addAddress(
                          Address(
                            id: DateTime.now().millisecondsSinceEpoch,
                            street: streetController.text,
                            city: cityController.text,
                            state: stateController.text,
                            zip: zipController.text,
                            country: countryController.text,
                          ),
                        ),
                      );
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

  Future<Address?> _showEditDialog(
      BuildContext context, Address address) async {
    final streetController = TextEditingController(text: address.street);
    final cityController = TextEditingController(text: address.city);
    final stateController = TextEditingController(text: address.state);
    final zipController = TextEditingController(text: address.zip);
    final countryController = TextEditingController(text: address.country);

    return showDialog<Address>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title:
              Text(I18n.of(context).address_management_alert_dialog_edit_title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: streetController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .address_management_alert_dialog_street)),
              TextField(
                  controller: cityController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .address_management_alert_dialog_city)),
              TextField(
                  controller: stateController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .address_management_alert_dialog_state)),
              TextField(
                  controller: zipController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .address_management_alert_dialog_zipCode)),
              TextField(
                  controller: countryController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .address_management_alert_dialog_country)),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(I18n.of(context).cancel)),
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop(
                  Address(
                    id: address.id,
                    street: streetController.text,
                    city: cityController.text,
                    state: stateController.text,
                    zip: zipController.text,
                    country: countryController.text,
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
