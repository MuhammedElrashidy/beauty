/************************************ FILE INFO **********************/
/// FILE NAME: custom_color.dart
/// Purpose: Holds all the colors used in the app
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025

import 'package:app/core/theme/app_theme.dart';
import 'color_model.dart';

abstract class CustomColor{
  static ColorModel blackText = ColorModel(lightColor: AppTheme.blackColor, darkColor: AppTheme.whiteColor);
  static ColorModel greyText = ColorModel(lightColor: AppTheme.greyTextColor, darkColor: AppTheme.greyTextColor);
  static ColorModel primary = ColorModel(lightColor: AppTheme.primaryColor, darkColor: AppTheme.primaryColor);
  static ColorModel whiteText = ColorModel(lightColor: AppTheme.whiteColor, darkColor: AppTheme.whiteColor);
}