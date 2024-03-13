import 'package:car_rental/features/car_details/presentation/widgets/car_overview_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarDetailsWidget extends StatelessWidget {
  const CarDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarOverviewWidget(),
        ],
      ),
    );
  }
}
