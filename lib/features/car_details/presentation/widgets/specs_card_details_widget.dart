import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SpecsCardDetailsWidget extends StatelessWidget {
  const SpecsCardDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12.0.w,
          height: 12.0.h,
          decoration: BoxDecoration(
            color: ColorsManager.mediumGray,
            border: Border.all(
              width: 1,
              color: ColorsManager.mediumGray,
            ),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.battery_charging_full_rounded,
              color: ColorsManager.mainOrange,
            ),
            onPressed: () {},
          ),
        ),
        horizontalSpace(2),
        const Text('5 Seats'),
      ],
    );
  }
}
