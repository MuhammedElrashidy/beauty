/******************** FILE INFO ********************/
/// FILE NAME: routing.dart
/// Purpose: Manages app navigation routing
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025
import 'package:app/core/routing/routes.dart';
import 'package:app/features/settings/presentation/ui/pages/about_this_app.dart';
import 'package:app/features/settings/presentation/ui/pages/comment_amd_feedback_page.dart';
import 'package:app/features/settings/presentation/ui/pages/privacy_statement.dart';
import 'package:app/features/settings/presentation/ui/pages/settings_page.dart';
import 'package:app/features/settings/presentation/ui/pages/terms_and_condation.dart';
import 'package:flutter/material.dart';

import '../../features/temp_starter/presentation/ui/pages/temp_home_page.dart';

class AppRouting {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.settings:
        return MaterialPageRoute(builder: (_) => SettingsPage());
      case Routes.commentAndFeedback:
        return MaterialPageRoute(builder: (_) => CommentAndFeedbackPage());
      case Routes.aboutThisApp:
        return MaterialPageRoute(builder: (_) => AboutThisApp());
      case Routes.privacyStatement:
        return MaterialPageRoute(builder: (_) => PrivacyStatement());
      case Routes.termsAndConditions:
        return MaterialPageRoute(builder: (_) => TermsAndConditions());
      default:
        return MaterialPageRoute(builder: (_) => TempHomePage());
    }
  }
}
