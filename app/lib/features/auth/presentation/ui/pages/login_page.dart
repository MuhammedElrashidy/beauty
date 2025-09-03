/******************** FILE INFO ********************/
/// FILE NAME: login_page.dart
/// Purpose: Screen for user login with email and password
/// Author: Fairouz Khalaf
/// Date: 3/9/2025
library;

import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/app_text_form.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:app/features/auth/presentation/ui/widgets/remember_forgot_row.dart';
import 'package:app/features/auth/presentation/ui/widgets/sign_up_prompt.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: SvgIcon(
                  svgImage: AppAssets.arrowBack,
                  height: 14.h,
                  width: 16.w,
                ),
              ),
              SvgIcon(
                svgImage: AppAssets.loginPinkImage,
                height: 235.h,
                width: 295.w,
              ),
              40.verticalSpace,
              AppTextField(
                hint: locale!.enterYourEmail,
                prefix: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0.h,
                    horizontal: 16.w,
                  ),
                  child: SvgIcon(
                    svgImage: AppAssets.emailIcon,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              ),
              16.verticalSpace,
              AppTextField(
                hint: locale.enterYourPassword,
                prefix: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0.h,
                    horizontal: 16.w,
                  ),
                  child: SvgIcon(
                    svgImage: AppAssets.lockIcon,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              ),
              16.verticalSpace,
              RememberForgotRow(
                isRememberMe: isRememberMe,
                onRememberChanged: (value) {
                  setState(() {
                    isRememberMe = value!;
                  });
                },
                onForgotTap: () {
                  //! ToDo: Navigate to Forget Password
                },
              ),

              const Spacer(),
              AppButton(
                title: locale.signIn,
                onTap: () {},
                borderRadius: 10.r,
                width: double.infinity,
                height: 40.h,
                buttonColor: AppTheme.primarySelectedColor,
              ),
              8.verticalSpace,
              SignUpPrompt(),
              40.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
