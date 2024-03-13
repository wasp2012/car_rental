import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:car_rental/features/car_details/presentation/widgets/car_details_header_btn.dart';
import 'package:car_rental/features/car_details/presentation/widgets/car_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarDetailsHeaderWidget extends StatelessWidget {
  const CarDetailsHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ColorsManager.cardGradientColor,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // verticalSpace(5),
          const CarDetailsHeaderBtn(),
          // verticalSpace(10),
          Text(
            'Tesla Model S',
            style: TextStyles.font24BlueExtraBold,
          ),
          // verticalSpace(4),
          const CarRatingsWidget(),
          // verticalSpace(10),
          Image.asset(
            height: 35.h,
            'assets/images/car_details.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
