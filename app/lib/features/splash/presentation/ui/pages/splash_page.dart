/******************** FILE INFO ********************/
/// FILE NAME: splash_screen.dart
/// Purpose: Splash screen with animated logo and navigation
/// Author: Fairouz Khalaf
/// Date: 3/9/2025
library;

import 'dart:async';
import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/extensions/navigation_extensions.dart';
import 'package:app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  double _scale = 0.1;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _scale = 1.2;
      });
    });
    Timer(const Duration(seconds: 5), () {
      context.navigateToReplacement(Routes.genderSelectionScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: SafeArea(
          child: Center(
            child: AnimatedScale(
              scale: _scale,
              duration: const Duration(milliseconds: 2500),
              curve: Curves.elasticOut,
              child: Image.asset(
                AppAssets.splashImage,
                height: 150.h,
                width: 150.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
