/******************** FILE INFO ********************/
/// FILE NAME: auth_buttons.dart
/// Purpose: Authentication buttons for the last onboarding screen
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

//*************************************************/

import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButtons extends StatelessWidget {
  final VoidCallback? onSignUp;
  final VoidCallback? onSignIn;
  final VoidCallback? onContinueAsGuest;

  const AuthButtons({
    super.key,
    this.onSignUp,
    this.onSignIn,
    this.onContinueAsGuest,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Flexible(
              child: AppButton(
                onTap: onSignUp,
                borderRadius: 10.sp,
                width: 163.w,
                height: 40.h,
                buttonColor: AppTheme.whiteColor,
                borderColor: AppTheme.whiteColor,
                textStyle: AppTextStyles.font16WhiteW500TextStyle.copyWith(
                  color: AppTheme.mainPinkColor,
                ),
                title: 'Sign Up',
              ),
            ),

            16.horizontalSpace,

            Flexible(
              child: AppButton(
                onTap: onSignIn,
                borderRadius: 10.sp,
                width: 163.w,
                height: 40.h,
                buttonColor: AppTheme.mainPinkColor,
                borderColor: AppTheme.mainPinkColor,

                textStyle: AppTextStyles.font16WhiteW500TextStyle,
                title: 'Sign In',
              ),
            ),
          ],
        ),

        16.verticalSpace,
        GestureDetector(
          onTap: onContinueAsGuest,
          child: Text(
            'Continue as a Guest',
            style: AppTextStyles.font14WhiteW500TextStyle,
          ),
        ),
      ],
    );
  }
}
