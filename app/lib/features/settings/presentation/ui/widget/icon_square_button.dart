import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconSquareButton extends StatelessWidget {
  const IconSquareButton({super.key, required this.iconAsset});

  final String iconAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38.w,
      height: 38.h,
      decoration: BoxDecoration(
        color: CustomColor.mainPinkColor.color,
        borderRadius: BorderRadius.circular(10.r),
        shape: BoxShape.rectangle,
      ),
      child: Center(
        child: SvgIcon(svgImage: iconAsset, width: 20.w, height: 20.h),
      ),
    );
  }
}
