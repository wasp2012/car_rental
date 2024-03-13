import 'package:bloc/bloc.dart';
import 'package:car_rental/core/helpers/extensions.dart';
import 'package:car_rental/core/helpers/local_storage.dart';
import 'package:car_rental/core/networking/api_constants.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this.storage) : super(SettingsInitial());
  final LocalStorage storage;

  int selectedLanguageIndex = -1;
  void selectLangIndex(int index) {
    selectedLanguageIndex = index;

    emit(
      SettingsSelectLang(
        selectedLangIndex: selectedLanguageIndex,
      ),
    );
  }

  var supportedLocales = [
    const Locale('ar', 'EG'),
    const Locale('en', 'US'),
  ];

  Future<void> initSelectedLang() async {
    String? lang = await storage.readSecureData(ApiConstants.lang);
    if (lang != null) {
      if (lang.contains('ar')) {
        selectLangIndex(0);
      } else {
        selectLangIndex(1);
      }
    } else {
      selectLangIndex(1);
    }
  }

  Future<void> chooseLanguage(BuildContext context) async {
    if (selectedLanguageIndex != -1) {
      var selectedLocaltString = supportedLocales[selectedLanguageIndex];
      await context.setLocale(selectedLocaltString);
      await saveLanguage(selectedLocaltString.languageCode);
      context.pushNamed(Routes.homeScreen);
      // emit(
      //   SettingsSelectLang(
      //     selectedLangIndex: selectedLanguageIndex,
      //   ),
      // );
    }
  }

  Future<void> saveLanguage(String lang) async {
    await storage.writeSecureData(ApiConstants.lang, lang);
  }
}
