part of 'navigation_cubit.dart';

class NavigationState extends Equatable {
  const NavigationState({
    required this.navBarItem,
    required this.index,
  });
  final NavBarItems navBarItem;

  final int index;
  List<Object> get props => [navBarItem, index];
}
