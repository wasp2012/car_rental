import 'package:car_rental/core/helpers/nav_bar_const.dart';
import 'package:car_rental/features/home/presentation/cubit/navigation_cubit.dart';
import 'package:car_rental/features/home/presentation/widgets/custom_navbar.dart';
import 'package:car_rental/features/home/presentation/widgets/home_widget.dart';
import 'package:car_rental/features/settings/presentation/pages/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: const CustomNavbar(),
        body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            if (state.navBarItem == NavBarItems.home) {
              return const HomeWidget();
            } else if (state.navBarItem == NavBarItems.search) {
              return const HomeWidget();
            } else if (state.navBarItem == NavBarItems.contact) {
              return const HomeWidget();
            } else if (state.navBarItem == NavBarItems.settings) {
              return const SettingsScreen();
            }
            return const HomeWidget();
          },
        ),
      ),
    );
  }
}
