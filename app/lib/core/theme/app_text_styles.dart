/************************************ FILE INFO **********************/
/// FILE NAME: app_text_styles.dart
/// Purpose: Holds all the text styles used in the app
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_color.dart';

class AppTextStyles {
  static TextStyle get mainStyle => const TextStyle(fontFamily: 'Roboto');

  static TextStyle get font14BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );

  // Generated text styles: sizes 8..20, weights 400 & 600, colors Black & Grey
  // Note: font14BlackW400TextStyle already exists above, so it is not duplicated here.

  // Black W400 (excluding 14 to avoid duplication)
  static TextStyle get font8BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 8.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font9BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 9.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font10BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font11BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font12BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font13BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font15BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font16BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font17BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font18BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font19BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 19.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font20BlackW400TextStyle => mainStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.blackText.color,
  );

  // Black W600
  static TextStyle get font8BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 8.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font9BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 9.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font10BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font11BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font12BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font13BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font14BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font15BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font16BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font17BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 17.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font18BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font19BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 19.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font20BlackW600TextStyle => mainStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.blackText.color,
  );

  // Black W500
  static TextStyle get font8BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 8.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font9BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 9.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font10BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font11BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font12BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font13BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font14BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font15BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font16BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font17BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font18BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font19BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 19.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );
  static TextStyle get font20BlackW500TextStyle => mainStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.blackText.color,
  );

  // Grey W400
  static TextStyle get font8GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 8.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font9GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 9.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font10GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font11GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font12GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font13GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font14GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font15GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font16GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font17GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font18GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font19GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 19.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font20GreyW400TextStyle => mainStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: CustomColor.greyText.color,
  );

  // Grey W600
  static TextStyle get font8GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 8.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font9GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 9.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font10GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font11GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font12GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font13GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font14GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font15GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font16GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font17GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 17.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font18GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font19GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 19.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font20GreyW600TextStyle => mainStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: CustomColor.greyText.color,
  );

  // Grey W500
  static TextStyle get font8GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 8.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font9GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 9.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font10GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font11GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font12GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font13GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font14GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font15GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font16GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font17GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font18GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font19GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 19.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );
  static TextStyle get font20GreyW500TextStyle => mainStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: CustomColor.greyText.color,
  );

  // Primary W400
  static TextStyle get font8PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 8.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);
  static TextStyle get font9PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 9.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);
  static TextStyle get font10PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);
  static TextStyle get font11PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 11.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);
  static TextStyle get font12PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);
  static TextStyle get font13PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);
  static TextStyle get font14PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);
  static TextStyle get font15PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);
  static TextStyle get font16PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);
  static TextStyle get font17PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 17.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);
  static TextStyle get font18PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);
  static TextStyle get font19PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 19.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);
  static TextStyle get font20PrimaryW400TextStyle => mainStyle.copyWith(fontSize: 20.sp, fontWeight: FontWeight.w400, color: CustomColor.primary.color);

  // Primary W500
  static TextStyle get font8PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 8.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);
  static TextStyle get font9PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 9.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);
  static TextStyle get font10PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);
  static TextStyle get font11PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 11.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);
  static TextStyle get font12PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);
  static TextStyle get font13PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);
  static TextStyle get font14PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);
  static TextStyle get font15PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);
  static TextStyle get font16PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);
  static TextStyle get font17PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 17.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);
  static TextStyle get font18PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);
  static TextStyle get font19PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 19.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);
  static TextStyle get font20PrimaryW500TextStyle => mainStyle.copyWith(fontSize: 20.sp, fontWeight: FontWeight.w500, color: CustomColor.primary.color);

  // Primary W600
  static TextStyle get font8PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 8.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);
  static TextStyle get font9PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 9.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);
  static TextStyle get font10PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);
  static TextStyle get font11PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 11.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);
  static TextStyle get font12PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);
  static TextStyle get font13PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);
  static TextStyle get font14PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);
  static TextStyle get font15PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);
  static TextStyle get font16PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);
  static TextStyle get font17PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 17.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);
  static TextStyle get font18PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);
  static TextStyle get font19PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 19.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);
  static TextStyle get font20PrimaryW600TextStyle => mainStyle.copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600, color: CustomColor.primary.color);

  // White W400
  static TextStyle get font8WhiteW400TextStyle => mainStyle.copyWith(fontSize: 8.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);
  static TextStyle get font9WhiteW400TextStyle => mainStyle.copyWith(fontSize: 9.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);
  static TextStyle get font10WhiteW400TextStyle => mainStyle.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);
  static TextStyle get font11WhiteW400TextStyle => mainStyle.copyWith(fontSize: 11.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);
  static TextStyle get font12WhiteW400TextStyle => mainStyle.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);
  static TextStyle get font13WhiteW400TextStyle => mainStyle.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);
  static TextStyle get font14WhiteW400TextStyle => mainStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);
  static TextStyle get font15WhiteW400TextStyle => mainStyle.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);
  static TextStyle get font16WhiteW400TextStyle => mainStyle.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);
  static TextStyle get font17WhiteW400TextStyle => mainStyle.copyWith(fontSize: 17.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);
  static TextStyle get font18WhiteW400TextStyle => mainStyle.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);
  static TextStyle get font19WhiteW400TextStyle => mainStyle.copyWith(fontSize: 19.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);
  static TextStyle get font20WhiteW400TextStyle => mainStyle.copyWith(fontSize: 20.sp, fontWeight: FontWeight.w400, color: CustomColor.whiteText.color);

  // White W500
  static TextStyle get font8WhiteW500TextStyle => mainStyle.copyWith(fontSize: 8.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);
  static TextStyle get font9WhiteW500TextStyle => mainStyle.copyWith(fontSize: 9.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);
  static TextStyle get font10WhiteW500TextStyle => mainStyle.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);
  static TextStyle get font11WhiteW500TextStyle => mainStyle.copyWith(fontSize: 11.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);
  static TextStyle get font12WhiteW500TextStyle => mainStyle.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);
  static TextStyle get font13WhiteW500TextStyle => mainStyle.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);
  static TextStyle get font14WhiteW500TextStyle => mainStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);
  static TextStyle get font15WhiteW500TextStyle => mainStyle.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);
  static TextStyle get font16WhiteW500TextStyle => mainStyle.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);
  static TextStyle get font17WhiteW500TextStyle => mainStyle.copyWith(fontSize: 17.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);
  static TextStyle get font18WhiteW500TextStyle => mainStyle.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);
  static TextStyle get font19WhiteW500TextStyle => mainStyle.copyWith(fontSize: 19.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);
  static TextStyle get font20WhiteW500TextStyle => mainStyle.copyWith(fontSize: 20.sp, fontWeight: FontWeight.w500, color: CustomColor.whiteText.color);

  // White W600
  static TextStyle get font8WhiteW600TextStyle => mainStyle.copyWith(fontSize: 8.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
  static TextStyle get font9WhiteW600TextStyle => mainStyle.copyWith(fontSize: 9.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
  static TextStyle get font10WhiteW600TextStyle => mainStyle.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
  static TextStyle get font11WhiteW600TextStyle => mainStyle.copyWith(fontSize: 11.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
  static TextStyle get font12WhiteW600TextStyle => mainStyle.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
  static TextStyle get font13WhiteW600TextStyle => mainStyle.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
  static TextStyle get font14WhiteW600TextStyle => mainStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
  static TextStyle get font15WhiteW600TextStyle => mainStyle.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
  static TextStyle get font16WhiteW600TextStyle => mainStyle.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
  static TextStyle get font17WhiteW600TextStyle => mainStyle.copyWith(fontSize: 17.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
  static TextStyle get font18WhiteW600TextStyle => mainStyle.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
  static TextStyle get font19WhiteW600TextStyle => mainStyle.copyWith(fontSize: 19.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
  static TextStyle get font20WhiteW600TextStyle => mainStyle.copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600, color: CustomColor.whiteText.color);
}
