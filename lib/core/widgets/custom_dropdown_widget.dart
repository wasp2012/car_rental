import 'package:car_rental/core/theming/colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class CustomDropDownWidget<T> extends StatelessWidget {
  final ValueChanged onChanged;
  final String hint;
  final T? selectedValue;
  final List<DropdownMenuItem<T>> dropdownMenuItemList;
  final bool enabled;
  final Color? color, iconColor;
  final Color? hintColor;
  final Widget? selectedItemBuilder;

  const CustomDropDownWidget({
    required this.onChanged,
    required this.hint,
    required this.selectedValue,
    required this.dropdownMenuItemList,
    this.enabled = true,
    super.key,
    this.color,
    this.iconColor,
    this.hintColor,
    this.selectedItemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: !enabled,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          border: Border.all(
            color: ColorsManager.lightGray,
            width: 1,
          ),
          color: color ?? Colors.white,
        ),
        child: Padding(
          // padding: const EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 8.h,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              dropdownStyleData: DropdownStyleData(
                maxHeight: 0.4.sh,
              ),
              hint: Text(
                hint,
                style: TextStyles.font14GrayRegular,
              ),
              isExpanded: true,
              style: TextStyles.font14GrayRegular,
              iconStyleData: IconStyleData(
                icon: const Icon(Icons.keyboard_arrow_down_outlined),
                iconEnabledColor: iconColor ?? Colors.black,
              ),
              selectedItemBuilder: selectedItemBuilder != null
                  ? (context) {
                      return dropdownMenuItemList.map(
                        (item) {
                          return Align(
                            alignment: Alignment.centerLeft,
                            child: selectedItemBuilder,
                          );
                        },
                      ).toList();
                    }
                  : null,
              items: dropdownMenuItemList,
              onChanged: onChanged,
              value: selectedValue,
            ),
          ),
        ),
      ),
    );
  }
}
