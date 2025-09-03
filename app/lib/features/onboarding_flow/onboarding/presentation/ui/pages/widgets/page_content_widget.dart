/******************** FILE INFO ********************/
/// FILE NAME: onboarding_page_content.dart
/// Purpose: Individual page content widget for onboarding (SVG-based)
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

//*************************************************/
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/features/onboarding_flow/onboarding/entities/onboarding_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPageContent extends StatelessWidget {
  final OnboardingEntity item;

  const OnboardingPageContent({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/png_images/beauty.png",
            width: double.infinity,
            height: double.infinity,

            fit: BoxFit.cover,
          ),
        ),

        if (!item.isLastScreen)
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            right: 16,
            child: TextButton(
              onPressed: () {
                //!TODO Handle skip action - connect to controller
              },
              child: Text(
                'Skip',
                style: AppTextStyles.font16WhiteW400TextStyle,
              ),
            ),
          ),

        // Content
        Positioned(
          bottom: 120.h,
          left: 24.w,
          right: 24.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.title, style: AppTextStyles.font32WhiteW500TextStyle),
              8.h.verticalSpace,
              Text(
                item.description,
                style: AppTextStyles.font16WhiteW400TextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
