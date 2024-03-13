import 'package:car_rental/core/routing/app_router.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarRentalApp extends StatelessWidget {
  const CarRentalApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => MaterialApp(
        theme: ThemeData(
          primaryColor: ColorsManager.mainOrange,
          scaffoldBackgroundColor: ColorsManager.bgColor,
          fontFamily:
              context.locale.languageCode == "en" ? 'Montserrat' : "careem",
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        title: 'Majestic Rental',
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
