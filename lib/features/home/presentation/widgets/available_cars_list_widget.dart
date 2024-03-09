import 'package:car_rental/core/helpers/extensions.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/features/home/presentation/widgets/car_card_widget.dart';
import 'package:flutter/material.dart';

class AvailableCarsListWidget extends StatelessWidget {
  const AvailableCarsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Available Cars',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
                borderRadius: BorderRadius.circular(10),
                highlightColor: ColorsManager.lightGray,
                onTap: () {
                  context.pushNamed(Routes.carDetailsScreen);
                },
                child: const CarCardWidget());
          },
        ),
      ],
    );
  }
}
