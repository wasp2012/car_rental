import 'package:bloc/bloc.dart';
import 'package:car_rental/core/helpers/nav_bar_const.dart';
import 'package:equatable/equatable.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit()
      : super(const NavigationState(
          navBarItem: NavBarItems.home,
          index: 0,
        ));

  void getNavBarItem(NavBarItems navBarItem) {
    switch (navBarItem) {
      case NavBarItems.home:
        emit(const NavigationState(navBarItem: NavBarItems.home, index: 0));
        break;
      case NavBarItems.search:
        emit(const NavigationState(navBarItem: NavBarItems.search, index: 1));
        break;
      case NavBarItems.contact:
        emit(const NavigationState(navBarItem: NavBarItems.contact, index: 2));
        break;
      case NavBarItems.settings:
        emit(const NavigationState(navBarItem: NavBarItems.settings, index: 3));
        break;
      default:
        emit(const NavigationState(navBarItem: NavBarItems.home, index: 0));
        break;
    }
  }

  void setIndex(int index) {
    switch (index) {
      case 0:
        getNavBarItem(NavBarItems.home);
        break;
      case 1:
        getNavBarItem(NavBarItems.search);
        break;
      case 2:
        getNavBarItem(NavBarItems.contact);
        break;
      case 3:
        getNavBarItem(NavBarItems.settings);
        break;

      default:
        getNavBarItem(NavBarItems.home);
    }
  }
}
