import 'package:auto_route/auto_route.dart';
import 'package:mgr_frontend/src/core/routing/app_router.dart';
import 'package:mgr_frontend/src/shared/locator.dart';
import 'package:mgr_frontend/src/shared/services/storage/local_storage.dart';
import 'package:mgr_frontend/src/shared/services/storage/storage.dart';


class AuthGuard extends AutoRouteGuard {
  final Storage _localStorage;

  AuthGuard({LocalStorage? localStorage})
      : _localStorage = localStorage ?? locator<Storage>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final token = await _localStorage.getToken();

    if (token != '') {
      resolver.next(true);
    } else {
      router.replace(LoginRoute());
    }
  }
}
