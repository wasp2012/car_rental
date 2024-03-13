import 'package:car_rental/features/home/presentation/widgets/available_cars_list_widget.dart';
import 'package:car_rental/features/home/presentation/widgets/brands_list_widget.dart';
import 'package:car_rental/features/home/presentation/widgets/home_header_widget.dart';
import 'package:car_rental/features/home/presentation/widgets/home_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.5.h),
      child: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeaderWidget(),
            HomeSearchBar(),
            BrandListViewWidget(),
            AvailableCarsListWidget()
          ],
        ),
      ),
    );
  }
}
