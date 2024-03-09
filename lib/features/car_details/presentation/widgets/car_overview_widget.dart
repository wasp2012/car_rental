import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/font_weight_helper.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarOverviewWidget extends StatelessWidget {
  const CarOverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'OVERVIEW',
          style: TextStyles.font24BlueExtraBold.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.semiBold,
          ),
        ),
        RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ',
                style: TextStyles.font15OrangeMedium.copyWith(
                  color: ColorsManager.gray,
                ),
              ),
              TextSpan(
                text: ' Read More',
                style: TextStyles.font16WhiteSemiBold.copyWith(
                  fontSize: 15.sp,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
