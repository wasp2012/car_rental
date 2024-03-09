import 'package:car_rental/features/car_details/presentation/widgets/car_overview_widget.dart';
import 'package:flutter/material.dart';

class CarDetailsWidget extends StatelessWidget {
  const CarDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarOverviewWidget(),
        ],
      ),
    );
  }
}
