import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/font_weight_helper.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'location'.tr(),
              style: TextStyles.font16BlackRegular.copyWith(
                  color: ColorsManager.gray,
                  fontWeight: FontWeightHelper.regular,
                  fontFamily: 'droid'),
            ),
            Text(
              'Egypt, Cairo',
              style: TextStyles.font16BlackRegular.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeightHelper.regular,
                  fontFamily: 'droid'),
            ),
          ],
        ),
        horizontalSpace(150),
        Container(
          width: 40.0.w,
          height: 40.0.h,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: ColorsManager.lightGray,
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.notifications_active_outlined),
        ),
        horizontalSpace(18),
        Container(
          width: 40.0.w,
          height: 40.0.h,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: ColorsManager.lightGray,
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.person),
        ),
      ],
    );
  }
}
