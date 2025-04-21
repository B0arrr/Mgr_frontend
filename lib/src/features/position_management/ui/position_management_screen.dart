import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/datasource/models/Position/position.dart';
import 'package:mgr_frontend/src/features/position_management/logic/position_management_bloc.dart';

@RoutePage()
class PositionManagementScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const PositionManagementScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PositionManagementScreen();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => PositionManagementBloc(),
      child: this,
    );
  }
}

class _PositionManagementScreen extends State<PositionManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PositionManagementBloc, PositionManagementState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(I18n.of(context).position_management_title),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.positions.length,
                  itemBuilder: (context, index) {
                    final position = state.positions[index];
                    return ListTile(
                      title: Text(position.name),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          context.read<PositionManagementBloc>().add(
                                PositionManagementEvent.removePosition(
                                    position),
                              );
                        },
                      ),
                      onTap: () async {
                        final updatedPosition =
                            await _showEditDialog(context, position);
                        if (updatedPosition != null) {
                          context
                              .read<PositionManagementBloc>()
                              .add(PositionManagementEvent.updatePosition(
                                oldPosition: position,
                                newPosition: updatedPosition,
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
                  child: Text(I18n.of(context).position_management_addButton),
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
          title:
              Text(I18n.of(context).position_management_alert_dialog_add_title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .position_management_alert_dialog_name)),
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
                      .read<PositionManagementBloc>()
                      .add(PositionManagementEvent.addPosition(Position(
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

  Future<Position?> _showEditDialog(
      BuildContext context, Position position) async {
    final nameController = TextEditingController(text: position.name);

    return showDialog<Position>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
              I18n.of(context).position_management_alert_dialog_edit_title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: I18n.of(context)
                          .position_management_alert_dialog_name)),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(I18n.of(context).cancel)),
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop(
                  Position(
                    id: position.id,
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
