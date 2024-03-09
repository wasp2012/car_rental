import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/font_weight_helper.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CarRatingsWidget extends StatelessWidget {
  const CarRatingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Color(0xFFEEC533),
        ),
        horizontalSpace(3),
        Text(
          '4.9',
          style: TextStyles.font24BlueExtraBold
              .copyWith(fontSize: 20, fontWeight: FontWeightHelper.bold),
        ),
        horizontalSpace(6),
        Text(
          '(120 Reviews)',
          style: TextStyles.font13DarkBlueMedium.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: const Color.fromARGB(255, 165, 165, 165),
            fontWeight: FontWeightHelper.regular,
            color: const Color.fromARGB(255, 165, 165, 165),
          ),
        ),
      ],
    );
  }
}
