import 'package:car_rental/car_rental_app.dart';
import 'package:car_rental/core/di/dependancy_injection.dart';
import 'package:car_rental/core/helpers/local_storage.dart';
import 'package:car_rental/core/networking/api_constants.dart';
import 'package:car_rental/core/routing/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await EasyLocalization.ensureInitialized();
  Future.wait([]);
  Locale startLocal = const Locale('en', 'US');
  bool containLang = await getIt<LocalStorage>().containKey(ApiConstants.lang);
  if (containLang) {
    String lang = await getIt<LocalStorage>().readSecureData(ApiConstants.lang);
    if (lang == 'ar') {
      startLocal = const Locale('ar', 'EG');
    } else {
      startLocal = const Locale('en', 'US');
    }
  }
  runApp(EasyLocalization(
    startLocale: startLocal,
    supportedLocales: const [
      Locale('en', 'US'),
      Locale('ar', 'EG'),
    ],
    path: 'assets/lang',
    fallbackLocale: const Locale('en', 'US'),
    child: CarRentalApp(
      appRouter: AppRouter(),
    ),
  ));
}
