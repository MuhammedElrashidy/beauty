/******************** FILE INFO ********************/
/// FILE NAME: onboarding_screen.dart
/// Purpose: Main onboarding screen with background image, centered text and dots, and navigation buttons
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

//*************************************************/

import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/features/onboarding_flow/onboarding/entities/onboarding_entity.dart';
import 'package:app/features/onboarding_flow/onboarding/presentation/controller/onboarding_controller.dart';
import 'package:app/features/onboarding_flow/onboarding/presentation/ui/widgets/buttons_action.dart';
import 'package:app/features/onboarding_flow/onboarding/presentation/ui/widgets/page_indicator_widget.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnboardingController(),
      child: const OnboardingView(),
    );
  }
}

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingController>(
      builder: (context, controller, child) {
        return Scaffold(
          body: Stack(
            children: [
              PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.onPageChanged,
                itemCount: OnboardingData.items.length,
                itemBuilder: (context, index) {
                  //!TODO Replace with SVG image
                  return Image.asset(
                    "assets/png_images/beauty.png",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  );
                },
              ),

              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        controller.currentItem.title,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.font32WhiteW500TextStyle,
                      ),
                      8.verticalSpace,
                      Text(
                        controller.currentItem.description,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.font16DarkW400TextStyle.copyWith(
                          color: AppTheme.whiteColor,
                        ),
                      ),
                      70.verticalSpace,
                      if (!controller.currentItem.isLastScreen)
                        PageIndicator(
                          totalPages: OnboardingData.items.length,
                          currentPage: controller.currentIndex,
                        ),
                    ],
                  ),
                ),
              ),

              if (controller.currentIndex > 0 &&
                  !controller.currentItem.isLastScreen)
                Positioned(
                  top: MediaQuery.of(context).padding.top + 16,
                  left: 16,
                  child: GestureDetector(
                    onTap: controller.previousPage,
                    child: Container(
                      height: 28.w,
                      width: 28.w,
                      decoration: BoxDecoration(
                        color: AppTheme.primarySelectedColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: AppTheme.whiteColor,
                        size: 16.sp,
                      ),
                    ),
                  ),
                ),

              if (!controller.currentItem.isLastScreen)
                Positioned(
                  top: MediaQuery.of(context).padding.top + 16,
                  right: 16,
                  child: GestureDetector(
                    onTap: controller.skip,
                    child: Text(
                      AppLocalizations.of(context)!.skip,
                      style: AppTextStyles.font16WhiteW400TextStyle,
                    ),
                  ),
                ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                    right: 24,
                    bottom: MediaQuery.of(context).padding.bottom + 24,
                  ),
                  child: OnboardingActionButtons(controller: controller),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
