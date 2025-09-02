/******************** FILE INFO ********************/
/// FILE NAME: custom_app_bar.dart
/// Purpose: Custom app bar widget
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025
import 'package:app/core/extensions/navigation_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_assets.dart';
import '../theme/app_text_styles.dart';
import '../theme/custom_color.dart';
import 'svg_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    required this.title,
    this.showReturnButton = true,
    this.onTap,
    super.key,
  });
  final String title;
  bool showReturnButton;
  var onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // app bar
        children: [
          (showReturnButton)
              ? InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onTap: () {
                  if (onTap != null)
                    onTap();
                  else
                    context.pop();
                },
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8, top: 8),
                      child: SvgIcon(
                        svgImage: AppAssets.arrowBack,
                        height: 12,
                        width: 20,
                        color: CustomColor.blackText.color,
                      ),
                    ),
                  ],
                ),
              )
              : Container(),

          Text(title, style: AppTextStyles.font20BlackW500TextStyle),
          Container()
        ],
      ),
    );
  }
}
