import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: SafeArea(
          child: Center(
            child: Image.asset(
              AppAssets.splashImage,
              height: 150.h,
              width: 150.w,
            ),
          ),
        ),
      ),
    );
  }
}
