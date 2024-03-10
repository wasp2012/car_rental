import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/font_weight_helper.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:car_rental/features/home/presentation/widgets/available_cars_list_widget.dart';
import 'package:car_rental/features/home/presentation/widgets/brands_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style: TextStyles.font16BlackRegular.copyWith(
                  color: ColorsManager.gray,
                  fontWeight: FontWeightHelper.regular,
                  fontFamily: 'droid'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Egypt, Cairo, Helwan',
                  style: TextStyles.font16BlackRegular.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeightHelper.regular,
                      fontFamily: 'droid'),
                ),
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
                  child: const Icon(Icons.filter_list),
                )
              ],
            ),
            verticalSpace(20),
            const BrandListViewWidget(),
            verticalSpace(20),
            const AvailableCarsListWidget()
          ],
        ),
      ),
    );
  }
}
