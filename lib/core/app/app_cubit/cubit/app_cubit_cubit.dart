import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/core/services/shared/pref_keys.dart';
import 'package:store_app/core/services/shared/shared_pref.dart';

part 'app_cubit_state.dart';
part 'app_cubit_cubit.freezed.dart';

class AppCubitCubit extends Cubit<AppCubitState> {
  AppCubitCubit() : super(const AppCubitState.initial());
  bool isDark = true;
  String currentLanguage = 'en';
  void changeThemeMode({bool? sharedPref}) {
    if (sharedPref != null) {
      isDark = sharedPref;
      emit(ThemeChangeModeState(isDark: isDark));
    } else {
      isDark = !isDark;
      emit(ThemeChangeModeState(isDark: isDark));
    }
  }

  void getSavedLanguage() {
    final result = SharedPref().containPreference(PrefKeys.language)
        ? SharedPref().getString(PrefKeys.language)
        : 'en';
    currentLanguage = result!;
    emit(AppCubitState.languageChange(locale: Locale(currentLanguage)));
  }

  Future<void> _changeLang(String langCode) async {
    await SharedPref().setString(PrefKeys.language, langCode);
    currentLanguage = langCode;
    emit(AppCubitState.languageChange(locale: Locale(currentLanguage)));
  }

  void toArabic() => _changeLang('ar');
  void toEnglish() => _changeLang('en');
}
