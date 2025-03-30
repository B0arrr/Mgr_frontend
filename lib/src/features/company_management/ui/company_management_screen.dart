import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/datasource/models/Company/company.dart';
import 'package:mgr_frontend/src/features/company_management/logic/company_management_bloc.dart';
import 'package:mgr_frontend/src/shared/extensions/context_extensions.dart';

@RoutePage()
class CompanyManagementScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const CompanyManagementScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyManagementScreen();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => CompanyManagementBloc(),
      child: this,
    );
  }
}

class _CompanyManagementScreen extends State<CompanyManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyManagementBloc, CompanyManagementState>(
        builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Text(I18n.of(context).company_management_title),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: state.companies.length,
                itemBuilder: (context, index) {
                  final company = state.companies[index];
                  return ListTile(
                    title: Text(company.name),
                    subtitle: Text(
                        '${company.address?.street}, ${company.address?.city}, ${company.address?.state}, ${company.address?.zip}, ${company.address?.country}'),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        context.read<CompanyManagementBloc>().add(
                              CompanyManagementEvent.removeCompany(company),
                            );
                      },
                    ),
                    onTap: () async {
                      final updatedCompany =
                          await _showEditDialog(context, company);
                      if (updatedCompany != null) {
                        context
                            .read<CompanyManagementBloc>()
                            .add(CompanyManagementEvent.updateCompany(
                              oldCompany: company,
                              newCompany: updatedCompany,
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
                child: Text(I18n.of(context).company_management_addButton),
              ),
            ),
          ],
        ),
      );
    });
  }

  Future<void> _showAddDialog(BuildContext context) async {
    final nameController = TextEditingController();
    int? selectedAddressId;
    final addressList =
        await context.read<CompanyManagementBloc>().getAddressList();

    await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(I18n.of(context).address_management_title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .company_management_alert_dialog_name)),
              DropdownButton(
                value: selectedAddressId,
                hint: Text(
                  I18n.of(context).company_management_alert_dialog_address,
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
                if (nameController.text.isNotEmpty &&
                    selectedAddressId != null) {
                  context
                      .read<CompanyManagementBloc>()
                      .add(CompanyManagementEvent.addCompany(Company(
                        id: DateTime.now().millisecondsSinceEpoch,
                        name: nameController.text,
                        address_id: selectedAddressId as int,
                        address: addressList.firstWhere(
                            (address) => address.id == selectedAddressId),
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

  Future<Company?> _showEditDialog(
      BuildContext context, Company company) async {
    final nameController = TextEditingController(text: company.name);
    int? selectedAddressId;
    final addressList =
        await context.read<CompanyManagementBloc>().getAddressList();

    return showDialog<Company>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title:
              Text(I18n.of(context).address_management_alert_dialog_edit_title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .company_management_alert_dialog_name)),
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
                final selectedAddress = addressList
                    .firstWhere((address) => address.id == selectedAddressId);
                Navigator.of(dialogContext).pop(
                  Company(
                    id: company.id,
                    name: nameController.text,
                    address_id: selectedAddress.id,
                    address: selectedAddress,
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
