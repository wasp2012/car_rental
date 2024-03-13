import 'package:car_rental/core/di/dependancy_injection.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/features/car_details/presentation/pages/car_details_screen.dart';
import 'package:car_rental/features/home/presentation/cubit/navigation_cubit.dart';
import 'package:car_rental/features/home/presentation/pages/home_screen.dart';
import 'package:car_rental/features/onboarding/presentation/pages/on_boarding_screen.dart';
import 'package:car_rental/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:car_rental/features/settings/presentation/widgets/settings_items/language_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingOverview(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<NavigationCubit>(),
            child: const HomeScreen(),
          ),
        );
      case Routes.carDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => const CarDetailsScreen(),
        );
      case Routes.languageScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<SettingsCubit>(),
            child: const LanguageScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
