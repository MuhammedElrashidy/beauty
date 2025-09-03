/******************** FILE INFO ********************/
/// FILE NAME: routing.dart
/// Purpose: Manages app navigation routing
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025
library;

import 'package:app/core/routing/routes.dart';
import 'package:app/features/onboarding_flow/gender_selection/presentation/ui/pages/gender_selection_page.dart';
import 'package:app/features/onboarding_flow/onboarding/presentation/ui/onboarding_page.dart';
import 'package:app/features/onboarding_flow/role_selection/presentation/ui/pages/role_selection_page.dart';
import 'package:app/features/splash/presentation/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRouting {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.genderSelectionScreen:
        return MaterialPageRoute(builder: (_) => GenderSelectionPage());
      case Routes.roleSelectionScreen:
        return MaterialPageRoute(builder: (_) => RoleSelectionPage());
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      default:
        return MaterialPageRoute(builder: (_) => GenderSelectionPage());
    }
  }
}
