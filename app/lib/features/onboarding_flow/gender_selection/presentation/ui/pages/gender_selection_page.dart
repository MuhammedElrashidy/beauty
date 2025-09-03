/******************** FILE INFO ********************/
/// FILE NAME: gender_selection_page.dart
/// Purpose: Screen for selecting gender using enum
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/enums/gender_enum.dart';
import 'package:app/core/extensions/navigation_extensions.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:app/features/onboarding_flow/gender_selection/presentation/ui/pages/widgets/gender_selector_widget.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderSelectionPage extends StatefulWidget {
  const GenderSelectionPage({super.key});

  @override
  State<GenderSelectionPage> createState() => _GenderSelectionPageState();
}

class _GenderSelectionPageState extends State<GenderSelectionPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            children: [
              CustomAppBar(
                title: locale!.letsIdentify,
                showReturnButton: false,
              ),
              8.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.0.w),
                child: Text(
                  locale.selectGender,
                  style: AppTextStyles.font12GreyW400TextStyle,
                ),
              ),
              32.verticalSpace,
              SvgIcon(
                svgImage: AppAssets.maleAndFemale,
                height: 240.h,
                width: 343.w,
              ),
              40.verticalSpace,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GenderSelectorWidget(
                        selectedGender: selectedGender,
                        onGenderSelected: (gender) {
                          setState(() {
                            selectedGender = gender;
                          });
                        },
                        titleText: locale.chooseGender,
                        maleText: locale.male,
                        femaleText: locale.female,
                      ),
                      110.verticalSpace,
                      AppButton(
                        onTap:
                            selectedGender == null
                                ? null
                                : () {
                                  context.navigateTo(
                                    Routes.roleSelectionScreen,
                                    arguments: selectedGender,
                                  );
                                },
                        borderRadius: 10.sp,
                        width: double.infinity,
                        height: 40.h,
                        buttonColor:
                            selectedGender == Gender.male
                                ? AppTheme.mainBlueColor
                                : selectedGender == Gender.female
                                ? AppTheme.mainPinkColor
                                : AppTheme.greyColor,
                        textStyle: AppTextStyles.font16WhiteW500TextStyle,
                        title: locale.next,
                      ),
                      16.verticalSpace,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
