// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'settings_cubit.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<Object> get props => [];
}

class SettingsInitial extends SettingsState {}

class SettingsSelectLang extends SettingsState {
  final int selectedLangIndex;
  const SettingsSelectLang({
    required this.selectedLangIndex,
  });
  @override
  List<Object> get props => [selectedLangIndex];
}
