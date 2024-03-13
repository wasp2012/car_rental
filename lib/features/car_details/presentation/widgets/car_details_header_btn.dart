import 'package:car_rental/core/helpers/extensions.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarDetailsHeaderBtn extends StatelessWidget {
  const CarDetailsHeaderBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 12.0.w,
          height: 12.0.h,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: ColorsManager.lightGray,
            ),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () => context.pop(),
          ),
        ),
        Container(
          width: 12.0.w,
          height: 12.0.h,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: ColorsManager.lightGray,
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.favorite_border_outlined),
        ),
      ],
    );
  }
}
