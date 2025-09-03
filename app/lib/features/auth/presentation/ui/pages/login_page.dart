import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/app_text_form.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/gestures.dart';
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
              //!ToDo: Make this field obscure
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        checkColor: AppTheme.primarySelectedColor,
                        activeColor: AppTheme.primarySelectedColor,
                        value: isRememberMe,
                        onChanged: (value) {
                          setState(() {
                            isRememberMe = value!;
                          });
                        },
                      ),
                      Text(
                        locale.rememberMe,
                        style: AppTextStyles.font16DarkW400TextStyle.copyWith(
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      //! ToDo: Navigate to Forget Password
                    },
                    child: Text(
                      locale.forgetPassword,
                      style: AppTextStyles.font12WhiteW400TextStyle.copyWith(
                        color: AppTheme.primarySelectedColor,
                      ),
                    ),
                  ),
                ],
              ),

              const Spacer(),

              // ✅ Sign In Button
              AppButton(
                title: locale.signIn,
                onTap: () {},
                borderRadius: 10.r,
                width: double.infinity,
                height: 40.h,
                buttonColor: AppTheme.primarySelectedColor,
              ),

              8.verticalSpace,

              // ✅ Don't have account? Sign Up
              Center(
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
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                //! ToDo: Navigate to Sign Up Page
                              },
                      ),
                    ],
                  ),
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
