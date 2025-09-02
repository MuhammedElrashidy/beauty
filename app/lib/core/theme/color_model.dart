/************************************ FILE INFO **********************/
/// FILE NAME: color_model.dart
/// Purpose: Class control light and dark mode
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025

import 'dart:ui';
import 'package:flutter/material.dart';
import '../../beauty_app.dart';

class ColorModel{
  Color lightColor;
  Color darkColor;
  ColorModel({required this.lightColor, required this.darkColor});
  Color get color => Theme.of(appMainNavigatorKey.currentContext!).brightness == Brightness.light ? lightColor : darkColor;

}