import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsHeaderWidget extends StatelessWidget {
  const SettingsHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          // width: 30.0.w,
          height: 30.0.h,
          child: Text(
            'Personal Info',
            style: TextStyles.font16WhiteSemiBold,
          ),
        ),
        Container(
          width: 35.0.w,
          height: 35.0.h,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: ColorsManager.lightGray,
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
