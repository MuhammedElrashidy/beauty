/******************** FILE INFO ********************/
/// FILE NAME: onboarding_page_content_with_skip.dart
/// Purpose: Wrapper widget for onboarding page content with skip functionality
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

//*************************************************/

import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/features/onboarding_flow/onboarding/entities/onboarding_entity.dart';
import 'package:app/features/onboarding_flow/onboarding/presentation/ui/pages/widgets/page_content_widget.dart';
import 'package:flutter/material.dart';

class OnboardingPageContentWithSkip extends StatelessWidget {
  final OnboardingEntity item;
  final VoidCallback onSkip;

  const OnboardingPageContentWithSkip({
    super.key,
    required this.item,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnboardingPageContent(item: item),

        if (!item.isLastScreen)
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            right: 16,
            child: TextButton(
              onPressed: onSkip,
              child: Text('Skip', style: AppTextStyles.font16DarkW400TextStyle),
            ),
          ),
      ],
    );
  }
}
