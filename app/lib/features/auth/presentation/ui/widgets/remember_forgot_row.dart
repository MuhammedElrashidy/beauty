/******************** FILE INFO ********************/
/// FILE NAME: remember_forgot_row.dart
/// Purpose: Widget for "Remember me" checkbox and "Forgot password" link
/// Author: Fairouz Khalaf
/// Date: 3/9/2025
library;

import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RememberForgotRow extends StatelessWidget {
  final bool isRememberMe;
  final ValueChanged<bool?> onRememberChanged;
  final VoidCallback onForgotTap;

  const RememberForgotRow({
    super.key,
    required this.isRememberMe,
    required this.onRememberChanged,
    required this.onForgotTap,
  });

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: AppTheme.primarySelectedColor,
              activeColor: AppTheme.primarySelectedColor,
              value: isRememberMe,
              onChanged: onRememberChanged,
            ),
            Text(
              locale!.rememberMe,
              style: AppTextStyles.font16DarkW400TextStyle.copyWith(
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: onForgotTap,
          child: Text(
            locale.forgetPassword,
            style: AppTextStyles.font12WhiteW400TextStyle.copyWith(
              color: AppTheme.primarySelectedColor,
            ),
          ),
        ),
      ],
    );
  }
}
