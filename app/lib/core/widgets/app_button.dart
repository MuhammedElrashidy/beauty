/******************** FILE INFO ********************/
/// FILE NAME: app_button.dart
/// Purpose: Custom button widget
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025
library;

import 'package:app/core/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_text_styles.dart';

// created by Mohamed Elrashidy
// created at 26-1-2024
// description: Custom button widget
class AppButton extends StatelessWidget {
  Color? buttonColor;
  TextStyle? textStyle;
  String title;
  double? width;
  double? height;
  Color? borderColor;
  double? borderRadius;
  var onTap;
  AppButton({
    super.key,
    this.buttonColor,
    this.textStyle,
    required this.title,
    this.width,
    this.height,
    this.borderRadius,
    this.borderColor,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: width?.w ?? double.infinity,
        height: height?.h ?? 42.h,
        decoration: BoxDecoration(
          color: buttonColor ?? CustomColor.primary.color,
          borderRadius: BorderRadius.circular(borderRadius?.r ?? 8.r),
          border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: 1.sp,
          ),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Text(
            title,
            style: textStyle ?? AppTextStyles.font16WhiteW500TextStyle,
          ),
        ),
      ),
    );
  }
}
