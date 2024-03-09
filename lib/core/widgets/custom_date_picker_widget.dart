import 'package:car_rental/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theming/styles.dart';

// ignore: must_be_immutable
class CustomDatePickerWidget<cubit extends Cubit<states>, states,
    state1 extends states> extends StatelessWidget {
  final Function(DateTime?)? saveDate;
  DateTime? monthYearDate;
  final bool isMonth;
  final DateTime? initDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final Color? color;
  final bool? showDayText;
  CustomDatePickerWidget({
    super.key,
    required this.saveDate,
    this.monthYearDate,
    this.isMonth = false,
    this.color,
    this.initDate,
    this.lastDate,
    this.firstDate,
    this.showDayText = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<cubit, states>(
      builder: (context, state) {
        return InkWell(
          onTap: () async {
            DateTime? dateSelected;

            dateSelected = await showDatePicker(
              initialEntryMode: DatePickerEntryMode.calendarOnly,
              currentDate: monthYearDate ?? dateSelected,
              context: context,
              initialDate: initDate ?? DateTime.now(),
              firstDate: firstDate ?? DateTime(1800),
              lastDate: lastDate ?? DateTime(2100),
              builder: (context, child) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    datePickerTheme: DatePickerThemeData(
                      weekdayStyle: TextStyles.font14GrayRegular,
                      headerHeadlineStyle: TextStyles.font14GrayRegular,
                    ),
                    splashColor: Colors.white,
                    colorScheme: const ColorScheme.light(
                      primary: ColorsManager.mainColor,
                      onPrimary: Colors.white,
                      surface: Colors.white,
                    ),
                    dialogBackgroundColor: Colors.white,
                  ),
                  child: child!,
                );
              },
              confirmText: 'ok',
              cancelText: 'cancel',
            );
            monthYearDate = dateSelected;
            if (saveDate != null) {
              saveDate!(dateSelected);
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              border: Border.all(
                width: 0.4,
                color: ColorsManager.lightGray,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // if (state is state1 || monthYearDate != null)
                Text(
                  monthYearDate != null
                      ? monthYearDate.toString().split(' ')[0].toString()
                      : 'Birthdate',
                  style: TextStyles.font14GrayRegular,
                ),
                SvgPicture.asset(
                  'assets/icons/calendar.svg',
                  colorFilter: const ColorFilter.mode(
                    ColorsManager.mainColor,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
