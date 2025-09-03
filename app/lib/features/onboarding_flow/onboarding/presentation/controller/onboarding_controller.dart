/******************** FILE INFO ********************/
/// FILE NAME: onboarding_controller.dart
/// Purpose: Controller for managing onboarding state and navigation
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

//*************************************************/

import 'package:app/features/onboarding_flow/onboarding/entities/onboarding_entity.dart';
import 'package:flutter/material.dart';

class OnboardingController extends ChangeNotifier {
  late PageController _pageController;
  int _currentIndex = 0;

  OnboardingController() {
    _pageController = PageController();
  }

  PageController get pageController => _pageController;
  int get currentIndex => _currentIndex;
  bool get isLastScreen => _currentIndex == OnboardingData.items.length - 1;
  OnboardingEntity get currentItem => OnboardingData.items[_currentIndex];

  void nextPage() {
    if (_currentIndex < OnboardingData.items.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousPage() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void goToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void onPageChanged(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void skipOnboarding() {
    goToPage(OnboardingData.items.length - 1);
  }

  void skip() {
    skipOnboarding();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
