import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsListWidget extends StatelessWidget {
  const SettingsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsItemWidget(
          action: () {},
          text: 'Language',
          icon: Icons.language_outlined,
        ),
        SettingsItemWidget(
          action: () {},
          text: 'Profile',
          icon: Icons.person,
        ),
        SettingsItemWidget(
          action: () {},
          text: 'FAQs',
          icon: Icons.favorite,
        ),
        SettingsItemWidget(
          action: () {},
          text: 'Ratings & Reviews',
          icon: Icons.star,
        ),
        SettingsItemWidget(
          action: () {},
          text: 'Privacy & Policy',
          icon: Icons.privacy_tip,
        ),
        SettingsItemWidget(
          action: () {},
          text: 'Renting History',
          icon: Icons.history,
        ),
        SettingsItemWidget(
          action: () {},
          text: 'Logout',
          icon: Icons.logout,
        ),
      ],
    );
  }
}

class SettingsItemWidget extends StatelessWidget {
  const SettingsItemWidget({
    super.key,
    required this.text,
    required this.action,
    required this.icon,
  });
  final String text;
  final Function() action;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        padding: EdgeInsets.all(14.h),
        margin: EdgeInsets.symmetric(vertical: 8.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Row(
          children: [
            Container(
              width: 40.0.w,
              height: 40.0.h,
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
            horizontalSpace(10),
            Text(
              text,
              style: TextStyles.font16WhiteMedium.copyWith(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
