import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceItem extends StatelessWidget {
  const InvoiceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColor.offWhiteColor.color,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 24.r,
                backgroundImage: const NetworkImage(
                  'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?w=128',
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Liza Salon',
                      style: AppTextStyles.font14BlackW400TextStyle,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "Woman's Salon",
                      style: AppTextStyles.font10GreyW400TextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              IconWithText(icon: AppAssets.fluentCalendar, text: '#1215'),
              IconWithText(icon: AppAssets.calendar, text: '24/4/2024'),
              IconWithText(icon: AppAssets.dollar, text: '1200 EGP'),
            ],
          ),
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  const IconWithText({super.key, required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgIcon(
          svgImage: icon,
          width: 20.w,
          height: 20.h,
          color: CustomColor.mainPinkColor.color,
        ),
        SizedBox(width: 8.w),
        Text(text, style: AppTextStyles.font14BlackW400TextStyle),
      ],
    );
  }
}
