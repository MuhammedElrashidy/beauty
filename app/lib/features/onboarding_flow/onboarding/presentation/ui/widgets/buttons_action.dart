/******************** FILE INFO ********************/
/// FILE NAME: onboarding_action_buttons.dart
/// Purpose: Separate widget for handling onboarding action buttons
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

import 'package:app/core/routing/routes.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/extensions/navigation_extensions.dart';
import 'package:app/features/onboarding_flow/onboarding/presentation/controller/onboarding_controller.dart';
import 'package:app/features/onboarding_flow/onboarding/presentation/ui/widgets/auth_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingActionButtons extends StatelessWidget {
  final OnboardingController controller;

  const OnboardingActionButtons({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    if (controller.currentItem.isLastScreen) {
      return AuthButtons(
        onSignUp:
            () => context.navigateToReplacement(Routes.phoneAndEmailScreen),
        onSignIn:
            () => context.navigateToReplacement(Routes.phoneAndEmailScreen),
        onContinueAsGuest: () => context.navigateToReplacement('/home'),
      );
    } else {
      return AppButton(
        onTap: controller.nextPage,
        borderRadius: 10.sp,
        width: double.infinity,
        height: 40.h,
        buttonColor: AppTheme.primarySelectedColor,
        textStyle: AppTextStyles.font16WhiteW500TextStyle,
        title: controller.currentItem.buttonText,
      );
    }
  }
}
