import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/font_weight_helper.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarCardWidget extends StatelessWidget {
  const CarCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(7),
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 30.0.w,
                height: 30.0.h,
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
                  color:  Color.fromARGB(255, 165, 165, 165),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/car_list.png'),
                verticalSpace(16),
                Text(
                  '840i Convertible',
                  style: TextStyles.font16WhiteSemiBold,
                ),
                verticalSpace(8),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xFFEEC533),
                    ),
                    horizontalSpace(3),
                    Text(
                      '4.9',
                      style: TextStyles.font13DarkBlueMedium.copyWith(
                          fontSize: 16, fontWeight: FontWeightHelper.bold),
                    ),
                    horizontalSpace(6),
                    Text(
                      '(120 Reviews)',
                      style: TextStyles.font13DarkBlueMedium.copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor:
                            const Color.fromARGB(255, 165, 165, 165),
                        fontWeight: FontWeightHelper.regular,
                        color: const Color.fromARGB(255, 165, 165, 165),
                      ),
                    ),
                    horizontalSpace(70),
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
            verticalSpace(10),
          ],
        ),
      ),
    );
  }
}
