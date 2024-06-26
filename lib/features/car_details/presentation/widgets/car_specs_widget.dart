import 'package:car_rental/core/theming/font_weight_helper.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:car_rental/features/car_details/presentation/widgets/specs_card_details_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarSpecsWidget extends StatelessWidget {
  const CarSpecsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'specification'.tr(),
            style: TextStyles.font24BlueExtraBold.copyWith(
              fontSize: 20.sp,
              fontWeight: FontWeightHelper.semiBold,
            ),
          ),
          Stack(
            children: [
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.8,
                  crossAxisSpacing: 2.w,
                  mainAxisSpacing: 2.w,
                ),
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const SpecsCardDetailsWidget();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
