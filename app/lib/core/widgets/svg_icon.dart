import 'package:app/core/theme/cubit/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// created by Mohamed Elrashidy
// created at 25-1-2024
// description: custom svg icon widget
class SvgIcon extends StatelessWidget {
  SvgIcon({
    required this.svgImage,
    this.width,
    this.color,
    this.height,
    this.isMirrored = true,
  });

  final double? width;
  final double? height;
  final String svgImage;
  final Color? color;
  bool isMirrored;
  bool isArabic = false;

  @override
  Widget build(BuildContext context) {
    isArabic = context.read<ThemeCubit>().isArabic;
    isArabic &= isMirrored;
    return Transform(
      transform: Matrix4.identity()..scale(isArabic ? -1.0 : 1.0, 1.0),
      alignment: Alignment.center,
      child: SvgPicture.asset(
        svgImage,
        height: height ?? 24.h,
        width: width ?? 24.w,
        color: color ?? null,
      ),
    );
  }
  Widget svgTempIcon(String asset){
    return SvgPicture.asset(asset,height: 24,width: 24,);
  }
}
