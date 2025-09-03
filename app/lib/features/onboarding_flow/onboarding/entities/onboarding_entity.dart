/******************** FILE INFO ********************/
/// FILE NAME: onboarding_model.dart
/// Purpose: Data models for onboarding screens
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

import 'package:app/core/constants/app_assets.dart';

//*************************************************/

class OnboardingEntity {
  final String title;
  final String description;
  final String imagePath;
  final String buttonText;
  final bool isLastScreen;

  const OnboardingEntity({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.buttonText,
    this.isLastScreen = false,
  });
}

class OnboardingData {
  static const List<OnboardingEntity> items = [
    OnboardingEntity(
      title: 'Welcome to Belle Salon',
      description:
          'Join Us in our journey of creating beautiful memories and bringing out the best version of yourself through professional beauty services.',
      imagePath: AppAssets.maleAndFemale,
      buttonText: 'Next',
    ),
    OnboardingEntity(
      title: 'Nail Perfection',
      description:
          'Treat yourself to nail perfection with our premium manicure and pedicure services. Look good, feel good and nail your look perfectly.',
      imagePath: AppAssets.maleAndFemale,
      buttonText: 'Next',
    ),
    OnboardingEntity(
      title: 'Hair Service',
      description:
          'From bold cuts to stunning styles, our professional stylists will work with you to create the perfect look.',
      imagePath: AppAssets.maleAndFemale,
      buttonText: 'Next',
    ),
    OnboardingEntity(
      title: 'Skin Care & Facial',
      description:
          'Experience the art of facial treatments with our professional skincare experts. Your skin deserves the best care.',
      imagePath: AppAssets.maleAndFemale,
      buttonText: 'Get Started',
    ),
    OnboardingEntity(
      title: 'Let\'s Join with Us',
      description:
          'Find the best beauty services, book appointments and enjoy premium beauty treatments with Belle Salon.',
      imagePath: AppAssets.maleAndFemale,
      buttonText: 'Sign In',
      isLastScreen: true,
    ),
  ];
}
