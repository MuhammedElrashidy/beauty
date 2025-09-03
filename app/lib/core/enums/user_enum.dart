/******************** FILE INFO ********************/
/// FILE NAME: user_role.dart
/// Purpose: Enum for user roles (Client, Owner) with extensions
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

import 'package:app/core/constants/app_assets.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/widgets.dart';

enum UserRole { client, owner }

extension UserRoleX on UserRole {
  String get imagePath {
    switch (this) {
      case UserRole.client:
        return AppAssets.maleAndFemale;
      case UserRole.owner:
        return AppAssets.maleAndFemale;
    }
  }

  String title(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    switch (this) {
      case UserRole.client:
        return locale.clients;
      case UserRole.owner:
        return locale.salonOwner;
    }
  }

  String subTitle(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    switch (this) {
      case UserRole.client:
        return locale.bookOrOrder;
      case UserRole.owner:
        return locale.showcaseTalent;
    }
  }
}
