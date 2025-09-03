/******************** FILE INFO ********************/
/// FILE NAME: gender_selector_widget.dart
/// Purpose: Widget for selecting gender with buttons
/// Author: Fairouz Khalaf
/// Date: 3/9/2025
library;

import 'package:app/core/enums/gender_enum.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderSelectorWidget extends StatelessWidget {
  final Gender? selectedGender;
  final ValueChanged<Gender> onGenderSelected;
  final String titleText;
  final String maleText;
  final String femaleText;

  const GenderSelectorWidget({
    super.key,
    required this.selectedGender,
    required this.onGenderSelected,
    required this.titleText,
    required this.maleText,
    required this.femaleText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleText, style: AppTextStyles.font18DarkW500TextStyle),
        32.verticalSpace,
        Row(
          children: [
            Flexible(
              child: AppButton(
                onTap: () => onGenderSelected(Gender.male),
                borderRadius: 8.sp,
                width: 155.w,
                height: 40.h,
                buttonColor:
                    selectedGender == Gender.male
                        ? AppTheme.mainBlueColor
                        : AppTheme.darkWhite,
                textStyle: AppTextStyles.font16BlackW500TextStyle.copyWith(
                  color:
                      selectedGender == Gender.male
                          ? AppTheme.whiteColor
                          : AppTheme.mainBlueColor,
                ),
                title: maleText,
              ),
            ),
            33.horizontalSpace,
            Flexible(
              child: AppButton(
                onTap: () => onGenderSelected(Gender.female),
                borderRadius: 8.sp,
                width: 155.w,
                height: 40.h,
                buttonColor:
                    selectedGender == Gender.female
                        ? AppTheme.mainPinkColor
                        : AppTheme.darkWhite,
                textStyle: AppTextStyles.font16BlackW500TextStyle.copyWith(
                  color:
                      selectedGender == Gender.female
                          ? AppTheme.whiteColor
                          : AppTheme.mainPinkColor,
                ),
                title: femaleText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
