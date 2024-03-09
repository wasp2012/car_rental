import 'package:car_rental/core/helpers/spacing.dart';
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
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CarDetailsHeaderWidget(),
        verticalSpace(8),
        const CarDetailsWidget(),
        verticalSpace(8),
        const CarSpecsWidget(),
        const BookNowWidget(),
      ],
    ),
  );
}
