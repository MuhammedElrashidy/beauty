import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountChip extends StatelessWidget {
  const CountChip({
    super.key,
    required this.count,
    required this.label,
    this.selected = false,
  });

  final int count;
  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          decoration: BoxDecoration(
            color:
                selected
                    ? CustomColor.mainPinkColor.color
                    : CustomColor.offWhiteColor.color,
            borderRadius: BorderRadius.circular(4.r),
            shape: BoxShape.rectangle,
          ),
          child: Text(
            '$count',
            style: AppTextStyles.font12BlackW400TextStyle.copyWith(
              color: selected ? Colors.white : Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          label,
          style: AppTextStyles.font16BlackW400TextStyle.copyWith(
            color: selected ? Colors.black : Colors.grey,
            fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
