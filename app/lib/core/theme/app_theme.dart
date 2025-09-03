/************************************ FILE INFO **********************/
/// FILE NAME: app_theme.dart
/// Purpose: Holds app theme data and custom colors
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025
library;

import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
  );

  static ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xFF0D0D0D),
  );

  static Color get primaryColor {
    return mainBlueColor;
  }

  static Color mainBlueColor = Color(0xFF5271FF);
  static Color mainPinkColor = Color(0xFFD16F9A);
  static Color blackColor = Color(0xFF2D2D2D);
  static Color whiteColor = Color(0xFFFFFFFF);
  static Color greyTextColor = Color(0xFF9E9E9E);
  static Color darkWhite = Color(0xFFF6F6F6);
  static Color greyColor = Color(0xFFC3C3C3);
  static Color lightGrey = Color(0xffF6F6F6);
  static Color lightPink = Color(0xffFFEFF2);
}
