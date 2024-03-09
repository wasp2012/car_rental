import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:flutter/material.dart';


class BookNowWidget extends StatelessWidget {
  const BookNowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      color: ColorsManager.mainOrange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$200',
                  style: TextStyles.font16WhiteSemiBold.copyWith(
                    color: ColorsManager.bgColor,
                  ),
                ),
                TextSpan(
                  text: '/Day',
                  style: TextStyles.font15DarkBlueMedium
                      .copyWith(color: ColorsManager.lightGray),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 70,
                vertical: 25,
              ),
              backgroundColor: ColorsManager.mainColor,
            ),
            onPressed: () {},
            child: Text(
              'Book Now',
              style: TextStyles.font16WhiteSemiBold.copyWith(
                color: ColorsManager.bgColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}