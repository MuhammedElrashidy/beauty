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

  Future<void> _loadPreferences() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final themeIndex = prefs.getInt(_themeKey) ?? ThemeMode.system.index;
      final localeCode = prefs.getString(_localeKey) ?? 'en';
      
      // Ensure the theme index is valid
      final themeMode = themeIndex >= 0 && themeIndex < ThemeMode.values.length
          ? ThemeMode.values[themeIndex]
          : ThemeMode.system;
      
      // Emit the initial state with loaded preferences
      emit(ThemeState(
        themeMode: themeMode,
        locale: Locale(localeCode),
      ));
    } catch (e) {
      // Fallback to default values if there's an error
      emit(const ThemeState(
        themeMode: ThemeMode.system,
        locale: Locale('en'),
      ));
    }
  }

  Future<void> _saveThemePreference(ThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_themeKey, mode.index);
  }

  Future<void> _saveLocalePreference(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.languageCode);
  }

  void toggleTheme() {
    final newThemeMode = state.themeMode == ThemeMode.light 
        ? ThemeMode.dark 
        : ThemeMode.light;
    
    emit(ThemeState(
      themeMode: newThemeMode,
      locale: state.locale,
    ));
    _saveThemePreference(newThemeMode);
  }

  void setTheme(ThemeMode mode) {
    emit(ThemeState(
      themeMode: mode,
      locale: state.locale,
    ));
    _saveThemePreference(mode);
  }

  void setLocale(Locale locale) {
    if (state.locale != locale) {
      emit(ThemeState(
        themeMode: state.themeMode,
        locale: locale,
      ));
      _saveLocalePreference(locale);
    }
  }

  void toggleLocale() {
    final newLocale = state.locale.languageCode == 'ar' 
        ? const Locale('en') 
        : const Locale('ar');
    
    emit(ThemeState(
      themeMode: state.themeMode,
      locale: newLocale,
    ));
    _saveLocalePreference(newLocale);
  }
}
