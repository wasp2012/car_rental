import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/font_weight_helper.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarCardWidget extends StatelessWidget {
  const CarCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 2.h,
      ),
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(1.5.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 11.0.w,
                height: 6.0.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: ColorsManager.lightGray,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.favorite_border_outlined,
                  size: 20,
                  color: Color.fromARGB(255, 165, 165, 165),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/car_list.png'),
                // verticalSpace(16),
                Text(
                  '840i Convertible',
                  style: TextStyles.font16WhiteSemiBold
                      .copyWith(fontWeight: FontWeightHelper.bold),
                ),
                // verticalSpace(8),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xFFEEC533),
                    ),
                    horizontalSpace(1.5),
                    Text(
                      '4.9',
                      style: TextStyles.font13DarkBlueMedium.copyWith(
                          fontSize: 16, fontWeight: FontWeightHelper.bold),
                    ),
                    horizontalSpace(3),
                    Text(
                      '(120 Reviews)',
                      style: TextStyles.font13DarkBlueMedium.copyWith(
                        fontSize: 15.sp,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            const Color.fromARGB(255, 165, 165, 165),
                        fontWeight: FontWeightHelper.regular,
                        color: const Color.fromARGB(255, 165, 165, 165),
                      ),
                    ),
                    horizontalSpace(28),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '\$200',
                            style: TextStyles.font13DarkBlueMedium.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeightHelper.bold),
                          ),
                          TextSpan(
                            text: '/day',
                            style: TextStyles.font13DarkBlueMedium.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeightHelper.regular,
                              color: const Color.fromARGB(255, 165, 165, 165),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            verticalSpace(2),
          ],
        ),
      ),
    );
  }
}
