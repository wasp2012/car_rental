import 'package:car_rental/core/helpers/extensions.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:cupertino_onboarding/cupertino_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingOverview extends StatelessWidget {
  const OnboardingOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManager.mainOrange,
      child: Stack(
        children: [
          Positioned(
            bottom: 560,
            height: 420,
            child: Image.asset(
              'assets/images/onboarding_top_pic.png',
              color: const Color.fromARGB(255, 201, 200, 200),
            ),
          ),
          CupertinoOnboarding(
            backgroundColor: Colors.transparent,
            bottomButtonColor: ColorsManager.mainColor,
            onPressedOnLastPage: () => context.pushNamed(Routes.homeScreen),
            pages: [
              CupertinoOnboardingPage(
                bodyPadding: EdgeInsets.zero,
                titleToBodySpacing: 120,
                titleTopIndent: 170,
                titleFlex: 10,
                title: Text(
                  'Support For Multiple Pages.',
                  style: TextStyles.font24BlueExtraBold.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                body: Image.asset(
                  'assets/images/onboarding2.png',
                ),
              ),
              CupertinoOnboardingPage(
                bodyPadding: EdgeInsets.zero,
                titleToBodySpacing: 120,
                titleTopIndent: 170,
                titleFlex: 10,
                title: Text(
                  'Great Look in Light and Dark Mode.',
                  style: TextStyles.font24BlueExtraBold.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                body: Image.asset(
                  'assets/images/onboarding1.png',
                ),
              ),
              CupertinoOnboardingPage(
                titleToBodySpacing: 120,
                titleTopIndent: 170,
                titleFlex: 10,
                bodyPadding: EdgeInsets.zero,
                title: Text(
                  'Beautiful and Consistent Appearance.',
                  style: TextStyles.font24BlueExtraBold.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                body: Image.asset(
                  'assets/images/onboarding3.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
