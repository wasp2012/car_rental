import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:car_rental/features/settings/presentation/widgets/info_card_widget.dart';
import 'package:car_rental/features/settings/presentation/widgets/settings_header_widget.dart';
import 'package:car_rental/features/settings/presentation/widgets/settings_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.bgColor,
      extendBody: true,
      body: Container(
        padding: EdgeInsets.all(16.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                // width: 30.0.w,
                height: 30.0.h,
                child: Text(
                  'Personal Info',
                  style: TextStyles.font16WhiteSemiBold,
                ),
              ),
              verticalSpace(20),
              const InfoCardWidget(),
              verticalSpace(10),
              const Divider(
                color: ColorsManager.lightGray,
              ),
              verticalSpace(10),
              const SettingsListWidget(),
              verticalSpace(60),
            ],
          ),
        ),
      ),
    );
  }
}
