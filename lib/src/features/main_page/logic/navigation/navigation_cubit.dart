import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/features/main_page/logic/constants/nav_bar_items.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.home, 1));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.settings:
        emit(NavigationState(NavbarItem.settings, 0));
        break;
      case NavbarItem.home:
        emit(NavigationState(NavbarItem.home, 1));
        break;
      case NavbarItem.profile:
        emit(NavigationState(NavbarItem.profile, 2));
        break;
    }
  }
}
