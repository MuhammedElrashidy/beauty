/************************************ FILE INFO **********************/
/// FILE NAME: theme_cubit.dart
/// Purpose: Manages theme mode and locale, persisting preferences
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  static const String _themeKey = 'theme_mode';
  static const String _localeKey = 'locale';

  ThemeCubit() : super(const ThemeState()) {
    _loadPreferences();
  }

  /// function name: [_loadPreferences]
  ///
  /// purpose: read saved theme mode and locale from SharedPreferences and emit initial state
  Future<void> _loadPreferences() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final themeIndex = prefs.getInt(_themeKey) ?? ThemeMode.system.index;
      final localeCode = prefs.getString(_localeKey) ?? 'en';

      // Ensure the theme index is valid
      final themeMode =
          themeIndex >= 0 && themeIndex < ThemeMode.values.length
              ? ThemeMode.values[themeIndex]
              : ThemeMode.system;

      // Emit the initial state with loaded preferences
      emit(ThemeState(themeMode: themeMode, locale: Locale(localeCode)));
    } catch (e) {
      // Fallback to default values if there's an error
      emit(const ThemeState(themeMode: ThemeMode.system, locale: Locale('en')));
    }
  }

  /// function name: [_saveThemePreference]
  ///
  /// purpose: persist the selected [ThemeMode] to SharedPreferences
  ///
  /// parameters:
  ///            [ThemeMode] mode: the theme mode to be saved
  Future<void> _saveThemePreference(ThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_themeKey, mode.index);
  }

  /// function name: [_saveLocalePreference]
  ///
  /// purpose: persist the selected [Locale] to SharedPreferences
  ///
  /// parameters:
  ///            [Locale] locale: the locale to be saved
  Future<void> _saveLocalePreference(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.languageCode);
  }

  /// function name: [toggleTheme]
  ///
  /// purpose: toggle between light and dark theme modes and save the new mode

  void toggleTheme() {
    final newThemeMode =
        state.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;

    emit(ThemeState(themeMode: newThemeMode, locale: state.locale));
    _saveThemePreference(newThemeMode);
  }

  /// function name: [setTheme]
  ///
  /// purpose: set a specific [ThemeMode] and persist it
  ///
  /// parameters:
  ///            [ThemeMode] mode: the theme mode to apply
  void setTheme(ThemeMode mode) {
    emit(ThemeState(themeMode: mode, locale: state.locale));
    _saveThemePreference(mode);
  }

  /// function name: [setLocale]
  ///
  /// purpose: set a specific [Locale] and persist it if it has changed
  ///
  /// parameters:
  ///            [Locale] locale: the locale to apply

  void setLocale(Locale locale) {
    if (state.locale != locale) {
      emit(ThemeState(themeMode: state.themeMode, locale: locale));
      _saveLocalePreference(locale);
    }
  }

  /// function name: [toggleLocale]
  ///
  /// purpose: toggle between Arabic ('ar') and English ('en') locales and save the new locale

  void toggleLocale() {
    final newLocale =
        state.locale.languageCode == 'ar'
            ? const Locale('en')
            : const Locale('ar');

    emit(ThemeState(themeMode: state.themeMode, locale: newLocale));
    _saveLocalePreference(newLocale);
  }

  bool get isArabic => state.locale.languageCode == 'ar';
  bool get isEnglish => state.locale.languageCode == 'en';
  bool get isDark => state.themeMode == ThemeMode.dark;
  bool get isLight => state.themeMode == ThemeMode.light;
}
