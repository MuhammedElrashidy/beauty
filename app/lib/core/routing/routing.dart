/******************** FILE INFO ********************/
/// FILE NAME: routing.dart
/// Purpose: Manages app navigation routing
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025
import 'package:app/core/routing/routes.dart';
import 'package:app/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:app/features/settings/presentation/ui/pages/about_this_app.dart';
import 'package:app/features/settings/presentation/ui/pages/add_new_location.dart';
import 'package:app/features/settings/presentation/ui/pages/comment_and_feedback_page.dart';
import 'package:app/features/settings/presentation/ui/pages/edit_location.dart';
import 'package:app/features/settings/presentation/ui/pages/edit_my_profile.dart';
import 'package:app/features/settings/presentation/ui/pages/invoices_details.dart';
import 'package:app/features/settings/presentation/ui/pages/invoices_page.dart';
import 'package:app/features/settings/presentation/ui/pages/privacy_statement.dart';
import 'package:app/features/settings/presentation/ui/pages/reset_password.dart';
import 'package:app/features/settings/presentation/ui/pages/saved_locations.dart';
import 'package:app/features/settings/presentation/ui/pages/settings_page.dart';
import 'package:app/features/settings/presentation/ui/pages/terms_and_condation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/temp_starter/presentation/ui/pages/temp_home_page.dart';

class AppRouting {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.settings:
        return MaterialPageRoute(builder: (_) => BlocProvider(create: (context) => SettingsCubit(), child: SettingsPage()));
      case Routes.commentAndFeedback:
        return MaterialPageRoute(builder: (_) => CommentAndFeedbackPage());
      case Routes.aboutThisApp:
        return MaterialPageRoute(builder: (_) => AboutThisApp());
      case Routes.privacyStatement:
        return MaterialPageRoute(builder: (_) => PrivacyStatement());
      case Routes.termsAndConditions:
        return MaterialPageRoute(builder: (_) => TermsAndConditions());
      case Routes.editMyProfile:
        return MaterialPageRoute(builder: (_) => EditMyProfile());
      case Routes.resetPassword:
        return MaterialPageRoute(builder: (_) => ResetPassword());
      case Routes.savedLocations:
        return MaterialPageRoute(builder: (_) => SavedLocations());
      case Routes.addNewLocation:
        return MaterialPageRoute(builder: (_) => AddNewLocation());
      case Routes.editLocation:
        return MaterialPageRoute(builder: (_) => EditLocation());
      case Routes.invoices:
        return MaterialPageRoute(builder: (_) => InvoicesPage());
      case Routes.invoicesDetails:
        return MaterialPageRoute(builder: (_) => InvoicesDetails());
      default:
        return MaterialPageRoute(builder: (_) => TempHomePage());
    }
  }
}
