import 'package:car_rental/features/car_details/presentation/widgets/book_now_widget.dart';
import 'package:car_rental/features/car_details/presentation/widgets/car_details_header_widget.dart';
import 'package:car_rental/features/car_details/presentation/widgets/car_details_widget.dart';
import 'package:car_rental/features/car_details/presentation/widgets/car_specs_widget.dart';
import 'package:flutter/material.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: normalDetailsScreen(),
      ),
    );
  }
}

Widget normalDetailsScreen() {
  return const SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarDetailsHeaderWidget(),
        // verticalSpace(8),
        CarDetailsWidget(),
        // verticalSpace(8),
        CarSpecsWidget(),
        BookNowWidget(),
      ],
    ),
  );
}
