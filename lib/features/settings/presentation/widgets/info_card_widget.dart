import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 18.0.w,
          height: 18.0.h,
          decoration: BoxDecoration(
            color: ColorsManager.mainColor,
            border: Border.all(
              width: 1,
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        horizontalSpace(5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Youssef wael',
                style:
                    TextStyles.font16WhiteSemiBold.copyWith(fontSize: 18.sp)),
            Text(
              'Youssef wael',
              style: TextStyles.font13GrayRegular.copyWith(fontSize: 14.sp),
            ),
            Text(
              'Youssef wael',
              style: TextStyles.font13GrayRegular.copyWith(fontSize: 14.sp),
            ),
          ],
        ),
      ],
    );
  }
}
