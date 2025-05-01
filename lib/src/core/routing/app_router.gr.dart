// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddressManagementScreen]
class AddressManagementRoute extends PageRouteInfo<void> {
  const AddressManagementRoute({List<PageRouteInfo>? children})
      : super(
          AddressManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddressManagementRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AddressManagementScreen());
    },
  );
}

/// generated route for
/// [CompanyManagementScreen]
class CompanyManagementRoute extends PageRouteInfo<void> {
  const CompanyManagementRoute({List<PageRouteInfo>? children})
      : super(
          CompanyManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompanyManagementRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const CompanyManagementScreen());
    },
  );
}

/// generated route for
/// [DepartmentManagementScreen]
class DepartmentManagementRoute extends PageRouteInfo<void> {
  const DepartmentManagementRoute({List<PageRouteInfo>? children})
      : super(
          DepartmentManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'DepartmentManagementRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const DepartmentManagementScreen());
    },
  );
}

/// generated route for
/// [EmploymentManagementScreen]
class EmploymentManagementRoute extends PageRouteInfo<void> {
  const EmploymentManagementRoute({List<PageRouteInfo>? children})
      : super(
          EmploymentManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmploymentManagementRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const EmploymentManagementScreen());
    },
  );
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const LoginScreen());
    },
  );
}

/// generated route for
/// [PasswordChangeScreen]
class PasswordChangeRoute extends PageRouteInfo<void> {
  const PasswordChangeRoute({List<PageRouteInfo>? children})
      : super(
          PasswordChangeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PasswordChangeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const PasswordChangeScreen());
    },
  );
}

/// generated route for
/// [PositionManagementScreen]
class PositionManagementRoute extends PageRouteInfo<void> {
  const PositionManagementRoute({List<PageRouteInfo>? children})
      : super(
          PositionManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'PositionManagementRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const PositionManagementScreen());
    },
  );
}

/// generated route for
/// [RootScreen]
class RootRoute extends PageRouteInfo<RootRouteArgs> {
  RootRoute({
    Key? key,
    LocalStorage? localStorage,
    List<PageRouteInfo>? children,
  }) : super(
          RootRoute.name,
          args: RootRouteArgs(
            key: key,
            localStorage: localStorage,
          ),
          initialChildren: children,
        );

  static const String name = 'RootRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<RootRouteArgs>(orElse: () => const RootRouteArgs());
      return WrappedRoute(
          child: RootScreen(
        key: args.key,
        localStorage: args.localStorage,
      ));
    },
  );
}

class RootRouteArgs {
  const RootRouteArgs({
    this.key,
    this.localStorage,
  });

  final Key? key;

  final LocalStorage? localStorage;

  @override
  String toString() {
    return 'RootRouteArgs{key: $key, localStorage: $localStorage}';
  }
}

/// generated route for
/// [UserManagementScreen]
class UserManagementRoute extends PageRouteInfo<void> {
  const UserManagementRoute({List<PageRouteInfo>? children})
      : super(
          UserManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserManagementRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const UserManagementScreen());
    },
  );
}

/// generated route for
/// [UserWorkingTimeRegistrationScreen]
class UserWorkingTimeRegistrationRoute
    extends PageRouteInfo<UserWorkingTimeRegistrationRouteArgs> {
  UserWorkingTimeRegistrationRoute({
    Key? key,
    required int userId,
    LocalStorage? localStorage,
    List<PageRouteInfo>? children,
  }) : super(
          UserWorkingTimeRegistrationRoute.name,
          args: UserWorkingTimeRegistrationRouteArgs(
            key: key,
            userId: userId,
            localStorage: localStorage,
          ),
          initialChildren: children,
        );

  static const String name = 'UserWorkingTimeRegistrationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserWorkingTimeRegistrationRouteArgs>();
      return WrappedRoute(
          child: UserWorkingTimeRegistrationScreen(
        key: args.key,
        userId: args.userId,
        localStorage: args.localStorage,
      ));
    },
  );
}

class UserWorkingTimeRegistrationRouteArgs {
  const UserWorkingTimeRegistrationRouteArgs({
    this.key,
    required this.userId,
    this.localStorage,
  });

  final Key? key;

  final int userId;

  final LocalStorage? localStorage;

  @override
  String toString() {
    return 'UserWorkingTimeRegistrationRouteArgs{key: $key, userId: $userId, localStorage: $localStorage}';
  }
}
