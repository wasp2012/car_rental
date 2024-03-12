import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 15.h,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                  color: ColorsManager.lightGray, width: 1.3),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.3,
              ),
            ),
            hintText: 'Search ',
            prefixIcon: const Icon(
              Icons.search,
              color: ColorsManager.gray,
              size: 20,
            ),
          ),
        ),
        horizontalSpace(10),
        Container(
          width: 55.0.w,
          height: 53.0.h,
          decoration: BoxDecoration(
            color: ColorsManager.mainColor,
            border: Border.all(
              width: 1,
              color: ColorsManager.mainColor,
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.filter_list,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
