import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/routing/app_router.dart';
import 'package:mgr_frontend/src/features/login/logic/login_cubit.dart';
import 'package:mgr_frontend/src/features/main_page/logic/constants/nav_bar_items.dart';
import 'package:mgr_frontend/src/features/main_page/logic/navigation/navigation_cubit.dart';
import 'package:mgr_frontend/src/features/main_page/logic/profile/profile_cubit.dart';
import 'package:mgr_frontend/src/features/main_page/logic/root_cubit.dart';
import 'package:mgr_frontend/src/features/main_page/ui/home_screen.dart';
import 'package:mgr_frontend/src/features/main_page/ui/profile_screen.dart';
import 'package:mgr_frontend/src/features/main_page/ui/settings_screen.dart';
import 'package:mgr_frontend/src/shared/extensions/context_extensions.dart';

@RoutePage()
class RootScreen extends StatefulWidget implements AutoRouteWrapper {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => RootCubit()),
        BlocProvider(create: (_) => NavigationCubit()),
        BlocProvider(create: (_) => LoginCubit()),
        BlocProvider(create: (_) => ProfileCubit()),
      ],
      child: this,
    );
  }
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18n.of(context).title),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: context.colorScheme.secondary),
              child: Text(I18n.of(context).root_list_header),
            ),
            ListTile(
              title: Text(I18n.of(context).root_list_item1),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text(I18n.of(context).logout),
              onTap: () {
                context.read<LoginCubit>().logout();
                context.router.replace(LoginRoute());
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.index,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: I18n.of(context).root_settings,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: I18n.of(context).root_home,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: I18n.of(context).root_profile,
              )
            ],
            onTap: (index) {
              if (index == 0) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.settings);
              } else if (index == 1) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.home);
              } else if (index == 2) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.profile);
              }
            },
          );
        },
      ),
      body: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          if (state.navbarItem == NavbarItem.home) {
            return HomeScreen();
          } else if (state.navbarItem == NavbarItem.settings) {
            return SettingsScreen();
          } else if (state.navbarItem == NavbarItem.profile) {
            return BlocProvider(create: (_) => ProfileCubit()..loadProfile(), child: ProfileScreen(),);
          }
          return Container();
        },
      ),
    );
  }
}
