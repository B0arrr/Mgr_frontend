import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mgr_frontend/src/core/routing/guards/auth_guard.dart';
import 'package:mgr_frontend/src/features/address_management/ui/address_management_screen.dart';
import 'package:mgr_frontend/src/features/company_management/ui/company_management_screen.dart';
import 'package:mgr_frontend/src/features/department_management/ui/department_management_screen.dart';
import 'package:mgr_frontend/src/features/employment_management/ui/employment_management_screen.dart';
import 'package:mgr_frontend/src/features/login/ui/login_screen.dart';
import 'package:mgr_frontend/src/features/main_page/ui/password_change_screen.dart';
import 'package:mgr_frontend/src/features/main_page/ui/root_screen.dart';
import 'package:mgr_frontend/src/features/position_management/ui/position_management_screen.dart';
import 'package:mgr_frontend/src/features/scheduler/ui/scheduler_screen.dart';
import 'package:mgr_frontend/src/features/user_management/ui/user_management_screen.dart';
import 'package:mgr_frontend/src/features/user_working_time_registration/ui/user_working_time_registration_screen.dart';
import 'package:mgr_frontend/src/shared/services/storage/local_storage.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: RootRoute.page, initial: false, guards: [AuthGuard()]),
    AutoRoute(
        page: PasswordChangeRoute.page, initial: false, guards: [AuthGuard()]),
    AutoRoute(
        page: AddressManagementRoute.page,
        initial: false,
        guards: [AuthGuard()]),
    AutoRoute(
        page: CompanyManagementRoute.page,
        initial: false,
        guards: [AuthGuard()]),
    AutoRoute(
        page: DepartmentManagementRoute.page,
        initial: false,
        guards: [AuthGuard()]),
    AutoRoute(
        page: EmploymentManagementRoute.page,
        initial: false,
        guards: [AuthGuard()]),
    AutoRoute(
        page: PositionManagementRoute.page,
        initial: false,
        guards: [AuthGuard()]),
    AutoRoute(
        page: UserManagementRoute.page, initial: false, guards: [AuthGuard()]),
    AutoRoute(
        page: UserWorkingTimeRegistrationRoute.page,
        initial: false,
        guards: [AuthGuard()]),
    AutoRoute(page: SchedulerRoute.page, initial: false, guards: [AuthGuard()]),
  ];
}
