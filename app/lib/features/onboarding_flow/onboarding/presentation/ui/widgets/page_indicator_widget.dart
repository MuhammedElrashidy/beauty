/******************** FILE INFO ********************/
/// FILE NAME: page_indicator.dart
/// Purpose: Reusable page indicator widget for onboarding
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

//*************************************************/

import 'package:app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int totalPages;
  final int currentPage;
  final Color? activeColor;
  final Color? inactiveColor;
  final double dotSize;
  final double spacing;

  const PageIndicator({
    super.key,
    required this.totalPages,
    required this.currentPage,
    this.activeColor,
    this.inactiveColor,
    this.dotSize = 8.0,
    this.spacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: spacing / 2),
          height: dotSize,
          width: currentPage == index ? dotSize * 2.5 : dotSize,
          decoration: BoxDecoration(
            color:
                currentPage == index
                    ? (activeColor ?? AppTheme.primarySelectedColor)
                    : (inactiveColor ?? AppTheme.whiteColor),
            borderRadius: BorderRadius.circular(dotSize / 2),
          ),
        ),
      ),
    );
  }
}
