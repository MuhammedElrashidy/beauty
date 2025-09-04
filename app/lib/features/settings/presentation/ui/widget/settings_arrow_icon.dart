import 'package:app/core/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsArrowIcon extends StatelessWidget {
  final Color? color;
  final VoidCallback? onTap;

  const SettingsArrowIcon({super.key, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        Icons.arrow_forward_ios,
        color: color ?? CustomColor.mainPinkColor.lightColor,
        size: 17.5.sp,
      ),
    );
  }
}
