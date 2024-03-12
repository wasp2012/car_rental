import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/features/home/presentation/widgets/available_cars_list_widget.dart';
import 'package:car_rental/features/home/presentation/widgets/brands_list_widget.dart';
import 'package:car_rental/features/home/presentation/widgets/home_header_widget.dart';
import 'package:car_rental/features/home/presentation/widgets/home_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeaderWidget(),
            verticalSpace(20),
            const HomeSearchBar(),
            verticalSpace(10),
            const BrandListViewWidget(),
            verticalSpace(20),
            const AvailableCarsListWidget()
          ],
        ),
      ),
    );
  }
}
