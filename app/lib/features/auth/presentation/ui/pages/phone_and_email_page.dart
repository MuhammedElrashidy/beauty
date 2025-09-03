/******************** FILE INFO ********************/
/// FILE NAME: phone_and_email_page.dart
/// Purpose: Screen for entering phone number or email to sign in
/// Author: Fairouz Khalaf
/// Date: 3/9/2025
library;

import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/extensions/navigation_extensions.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/app_text_form.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneAndEmailPage extends StatefulWidget {
  const PhoneAndEmailPage({super.key});

  @override
  State<PhoneAndEmailPage> createState() => _PhoneAndEmailPageState();
}

class _PhoneAndEmailPageState extends State<PhoneAndEmailPage> {
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            children: [
              SvgIcon(
                svgImage: AppAssets.loginPinkImage,
                height: 235.h,
                width: 295.w,
              ),
              40.verticalSpace,
              AppTextField(hint: locale!.enterYourEmailOrPhone),
              Spacer(),
              AppButton(
                title: locale.signIn,
                onTap: () {
                  context.navigateTo(Routes.loginScreen);
                },
                borderRadius: 10.r,
                width: double.infinity,
                height: 40.h,
                buttonColor: AppTheme.primarySelectedColor,
              ),
              8.verticalSpace,
              RichText(
                text: TextSpan(
                  text: locale.dontHaveAccount,
                  style: AppTextStyles.font16DarkW400TextStyle.copyWith(
                    fontSize: 14.sp,
                  ),
                  children: [
                    TextSpan(
                      text: " ${locale.signUp}",
                      style: AppTextStyles.font14WhiteW400TextStyle.copyWith(
                        color: AppTheme.primarySelectedColor,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              //!ToDO Navigate to Sign Up Page
                            },
                    ),
                  ],
                ),
              ),
              40.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
