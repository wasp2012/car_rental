import 'package:car_rental/core/helpers/extensions.dart';
import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsListWidget extends StatelessWidget {
  const SettingsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsItemWidget(
          action: () {
            context.pushNamed(Routes.languageScreen);
          },
          text: 'language'.tr(),
          icon: Icons.language_outlined,
        ),
        SettingsItemWidget(
          action: () {},
          text: 'profile'.tr(),
          icon: Icons.person,
        ),
        SettingsItemWidget(
          action: () {},
          text: 'fAQs'.tr(),
          icon: Icons.favorite,
        ),
        SettingsItemWidget(
          action: () {},
          text: 'ratings_reviews'.tr(),
          icon: Icons.star,
        ),
        SettingsItemWidget(
          action: () {},
          text: 'privacy_policy'.tr(),
          icon: Icons.privacy_tip,
        ),
        SettingsItemWidget(
          action: () {},
          text: 'renting_history'.tr(),
          icon: Icons.history,
        ),
        SettingsItemWidget(
          action: () {},
          text: 'logout'.tr(),
          icon: Icons.logout,
        ),
      ],
    );
  }
}

class SettingsItemWidget extends StatelessWidget {
  const SettingsItemWidget(
      {super.key,
      required this.text,
      required this.action,
      required this.icon,
      this.borderRadius,
      this.isBorderEnabled = false});
  final String text;
  final Function() action;
  final IconData icon;
  final bool isBorderEnabled;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 0.3.h, horizontal: 6.w),
        margin: EdgeInsets.symmetric(vertical: 1.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: isBorderEnabled
              ? Border.all(
                  width: 2,
                  color: ColorsManager.mainOrange,
                )
              : null,
          borderRadius: BorderRadius.circular(borderRadius ?? 40.0),
        ),
        child: Row(
          children: [
            Container(
              width: 9.0.w,
              height: 9.0.h,
              decoration: BoxDecoration(
                color: ColorsManager.bgColor,
                border: Border.all(
                  width: 1,
                  color: Colors.transparent,
                ),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: ColorsManager.mainColor,
              ),
            ),
            horizontalSpace(4),
            Text(
              text,
              style: TextStyles.font16WhiteMedium,
            )
          ],
        ),
      ),
    );
  }
}
