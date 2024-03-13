import 'package:car_rental/core/helpers/nav_bar_const.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/features/home/presentation/cubit/navigation_cubit.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 1.5.h),
            child: DotNavigationBar(
              marginR: EdgeInsets.symmetric(vertical: 0.h, horizontal: 4.w),
              paddingR: EdgeInsets.symmetric(vertical: 0.6.h, horizontal: 2.w),
              splashBorderRadius: 30,
              backgroundColor: ColorsManager.mainColor,
              currentIndex: state.index,
              onTap: context.read<NavigationCubit>().setIndex,
              dotIndicatorColor: ColorsManager.mainColor,
              items: NavItems.navBarItems,
            ),
          ),
        );
      },
    );
  }
}
