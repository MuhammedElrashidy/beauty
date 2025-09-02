/******************** FILE INFO ********************/
/// FILE NAME: navigation_extensions.dart
/// Purpose: Provides navigation extensions for BuildContext
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025
import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  void navigateTo(String routeName,{required Object arguments}) {
    Navigator.pushNamed(this, routeName,arguments: arguments);
  }
  void navigateToReplacement(String routeName,{required Object arguments}) {
    Navigator.pushReplacementNamed(this, routeName,arguments: arguments);
  }
  void pop(){
    Navigator.pop(this);
  }
}