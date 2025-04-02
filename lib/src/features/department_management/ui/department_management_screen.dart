import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    // TODO: implement build
    throw UnimplementedError();
  }
}
