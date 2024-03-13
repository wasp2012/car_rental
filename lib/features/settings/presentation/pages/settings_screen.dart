import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:car_rental/features/settings/presentation/widgets/info_card_widget.dart';
import 'package:car_rental/features/settings/presentation/widgets/settings_list_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.bgColor,
      extendBody: true,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'personal_info'.tr(),
                style: TextStyles.font16WhiteSemiBold,
              ),
              // verticalSpace(20),
              const InfoCardWidget(),
              // verticalSpace(1),
              const Divider(
                color: ColorsManager.lightGray,
              ),
              // verticalSpace(10),
              const SettingsListWidget(),
              verticalSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
