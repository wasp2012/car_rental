import 'package:car_rental/car_rental_app.dart';
import 'package:car_rental/core/di/dependancy_injection.dart';
import 'package:car_rental/core/routing/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  Future.wait([setupGetIt()]);

  runApp(CarRentalApp(
    appRouter: AppRouter(),
  ));
}
