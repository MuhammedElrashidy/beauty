import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPrompt extends StatelessWidget {
  const SignUpPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Center(
      child: RichText(
        text: TextSpan(
          text: locale.dontHaveAccount,
          style: AppTextStyles.font16DarkW400TextStyle.copyWith(
            fontSize: 14.sp,
          ),
          children: [
            TextSpan(
              text: "  ${locale.signUp}",
              style: AppTextStyles.font14WhiteW400TextStyle.copyWith(
                color: AppTheme.primarySelectedColor,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
      ),
    );
  }
}
