import 'package:car_rental/core/theming/colors.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

enum NavBarItems { home, search, contact, settings }

class NavItems {
  static final List<DotNavigationBarItem> navBarItems = [
    DotNavigationBarItem(
      icon: const Icon(Icons.home_sharp),
      selectedColor: ColorsManager.bgColor,
      unselectedColor: ColorsManager.bgColor.withOpacity(0.25),
    ),
    DotNavigationBarItem(
      icon: const Icon(Icons.search),
      selectedColor: ColorsManager.bgColor,
      unselectedColor: ColorsManager.bgColor.withOpacity(0.25),
    ),
    DotNavigationBarItem(
      icon: const Icon(Icons.contact_support),
      selectedColor: ColorsManager.bgColor,
      unselectedColor: ColorsManager.bgColor.withOpacity(0.25),
    ),
    DotNavigationBarItem(
      icon: const Icon(Icons.settings),
      selectedColor: ColorsManager.bgColor,
      unselectedColor: ColorsManager.bgColor.withOpacity(0.25),
    ),
  ];
}
