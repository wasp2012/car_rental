import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/font_weight_helper.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandListViewWidget extends StatelessWidget {
  const BrandListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'brands'.tr(),
          style: TextStyles.font16BlackRegular.copyWith(
              color: Colors.black,
              fontWeight: FontWeightHelper.medium,
              fontFamily: 'droid'),
        ),
        verticalSpace(8),
        SizedBox(
          height: 55.h,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                width: 60.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                  color: index == 0 ? ColorsManager.mainColor : Colors.white,
                  border: Border.all(
                    width: 1,
                    color: ColorsManager.lightGray,
                  ),
                  shape: BoxShape.circle,
                ),
                child: index == 0
                    ? Center(
                        child: Text(
                          'all'.tr(),
                          style: TextStyles.font16BlackRegular.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeightHelper.semiBold),
                        ),
                      )
                    : Icon(
                        Icons.filter_list,
                        color: index == 0 ? Colors.white : null,
                      ),
              );
            },
            itemCount: 8,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
