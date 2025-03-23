import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/datasource/models/Address/address.dart';
import 'package:mgr_frontend/src/features/address_management/logic/address_management_bloc.dart';

@RoutePage()
class AddressManagementScreen extends StatefulWidget implements AutoRouteWrapper {
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
    return BlocProvider(
      create: (context) => AddressManagementBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Editable List'),
        ),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<AddressManagementBloc, AddressManagementState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemCount: state.addresses.length,
                    itemBuilder: (context, index) {
                      final address = state.addresses[index];
                      return ListTile(
                        title: Text(address.street),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            context.read<AddressManagementBloc>().add(
                                  AddressManagementEvent.removeAddress(address),
                                );
                          },
                        ),
                        onTap: () async {
                          final newName = await _showEditDialog(context, address);
                          if (newName != null) {
                            context.read<AddressManagementBloc>().add(
                                  AddressManagementEvent.updateAddress(oldAddress: address, newAddress: Address(id: 1, street: '', city: '', state: '', zip: '', country: '')),
                                );
                          }
                        },
                      );
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  _showAddDialog(context);
                },
                child: Text('Add Item'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showAddDialog(BuildContext context) async {
    final streetController = TextEditingController();
    await showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Item'),
          content: TextField(
            controller: streetController,
            decoration: InputDecoration(hintText: 'Enter item name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (streetController.text.isNotEmpty) {
                  context.read<AddressManagementBloc>().add(
                    AddressManagementEvent.addAddress(Address(id: 1, street: '', city: '', state: '', zip: '', country: '')),
                  );
                  Navigator.of(context).pop();
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  Future<String?> _showEditDialog(BuildContext context, Address address) async {
    final streetController = TextEditingController(text: address.street);
    return showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Item'),
          content: TextField(
            controller: streetController,
            decoration: InputDecoration(hintText: 'Enter new item name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (streetController.text.isNotEmpty) {
                  Navigator.of(context).pop(streetController.text);
                }
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
