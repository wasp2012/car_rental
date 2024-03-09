import 'package:car_rental/core/helpers/nav_bar_const.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/features/home/presentation/cubit/navigation_cubit.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.only(bottom: 20.h),
          child: DotNavigationBar(
            paddingR: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            marginR: EdgeInsets.symmetric(vertical: 0.h, horizontal: 5.w),
            splashBorderRadius: 50,
            backgroundColor: ColorsManager.mainColor,
            currentIndex: state.index,
            onTap: context.read<NavigationCubit>().setIndex,
            dotIndicatorColor: ColorsManager.bgColor,
            items: NavItems.navBarItems,
          ),
        );
      },
    );
  }
}
