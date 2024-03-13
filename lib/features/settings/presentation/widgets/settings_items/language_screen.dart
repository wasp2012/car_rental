import 'package:car_rental/core/helpers/spacing.dart';
import 'package:car_rental/core/theming/colors.dart';
import 'package:car_rental/core/theming/styles.dart';
import 'package:car_rental/core/widgets/app_text_button.dart';
import 'package:car_rental/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:car_rental/features/settings/presentation/widgets/settings_list_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  final countries = ['العربية', 'English'];

  @override
  void initState() {
    super.initState();
    context.read<SettingsCubit>().initSelectedLang();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.bgColor,
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(10),
                Text(
                  'choose_lang'.tr(),
                  style: TextStyles.font24BlackBold.copyWith(fontSize: 21.sp),
                ),
                verticalSpace(1),
                Text(
                  'select_your_fav'.tr(),
                  style: TextStyles.font16BlackRegular
                      .copyWith(letterSpacing: 0.5),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(6),
                BlocBuilder<SettingsCubit, SettingsState>(
                  builder: (context, state) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: countries.length,
                      itemBuilder: (context, index) {
                        return SettingsItemWidget(
                          borderRadius: 16,
                          text: countries[index],
                          icon: Icons.language,
                          isBorderEnabled: context
                                  .read<SettingsCubit>()
                                  .selectedLanguageIndex ==
                              index,
                          action: () {
                            context
                                .read<SettingsCubit>()
                                .selectLangIndex(index);
                          },
                        );
                      },
                    );
                  },
                ),
                verticalSpace(6),
                AppTextButton(
                  buttonHeight: 0.9.h,
                  horizontalPadding: 2,
                  verticalPadding: 2,
                  buttonText: 'continue'.tr(),
                  textStyle: TextStyles.font16WhiteSemiBold
                      .copyWith(color: ColorsManager.bgColor),
                  onPressed: () async {
                    await context.read<SettingsCubit>().chooseLanguage(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
