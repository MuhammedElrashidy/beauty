import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



// Alternative simpler checkbox widget
class CheckboxSelectorWidget extends StatelessWidget {
  const CheckboxSelectorWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onChanged,
    this.subtitle,
    this.isEnabled = true,
  });

  final String title;
  final String? subtitle;
  final bool isSelected;
  final ValueChanged<bool> onChanged;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? () => onChanged(!isSelected) : null,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? CustomColor.mainPinkColor.color.withOpacity(0.1)
                  : CustomColor.offWhiteColor.color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            // SVG Checkbox
            SvgIcon(
              svgImage:
                  isSelected ? AppAssets.checkBoxFill : AppAssets.checkBoxEmpty,
              width: 24.sp,
              height: 24.sp,
             
            ),
            SizedBox(width: 12.w),

            // Text content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.font14BlackW400TextStyle.copyWith(
                      color:
                          isSelected
                              ? CustomColor.mainPinkColor.color
                              : CustomColor.blackText.color,
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.w400,
                    ),
                  ),
                  if (subtitle != null) ...[
                    SizedBox(height: 2.h),
                    Text(
                      subtitle!,
                      style: AppTextStyles.font12GreyW400TextStyle
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
