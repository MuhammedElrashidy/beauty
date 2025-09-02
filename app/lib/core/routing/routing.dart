/******************** FILE INFO ********************/
/// FILE NAME: routing.dart
/// Purpose: Manages app navigation routing
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025
import 'package:flutter/material.dart';

import '../../features/temp_starter/presentation/ui/pages/temp_home_page.dart';

class AppRouting {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      default:
        return MaterialPageRoute(builder: (_)=>TempHomePage());
    }
  }}