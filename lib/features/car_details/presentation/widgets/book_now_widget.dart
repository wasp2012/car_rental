import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BookNowWidget extends StatelessWidget {
  const BookNowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
      color: ColorsManager.mainOrange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$200',
                  style: TextStyles.font16WhiteSemiBold.copyWith(
                    fontSize: 18.sp,
                    color: ColorsManager.bgColor,
                  ),
                ),
                TextSpan(
                  text: '/Day',
                  style: TextStyles.font15DarkBlueMedium.copyWith(
                      color: ColorsManager.lightGray, fontSize: 17.sp),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 70,
                vertical: 25,
              ),
              backgroundColor: ColorsManager.mainColor,
            ),
            onPressed: () {},
            child: Text(
              'book_now'.tr(),
              style: TextStyles.font16WhiteSemiBold.copyWith(
                color: ColorsManager.bgColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
