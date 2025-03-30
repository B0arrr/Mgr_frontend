import 'package:auto_route/auto_route.dart';
import 'package:mgr_frontend/src/core/routing/guards/auth_guard.dart';
import 'package:mgr_frontend/src/features/address_management/ui/address_management_screen.dart';
import 'package:mgr_frontend/src/features/login/ui/login_screen.dart';
import 'package:mgr_frontend/src/features/main_page/ui/password_change_screen.dart';
import 'package:mgr_frontend/src/features/main_page/ui/root_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: RootRoute.page, initial: false, guards: [AuthGuard()]),
    AutoRoute(page: PasswordChangeRoute.page, initial: false, guards: [AuthGuard()]),
    AutoRoute(page: AddressManagementRoute.page, initial: false, guards: [AuthGuard()]),
  ];
}
