import 'package:app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'settings_arrow_icon.dart';

class SettingsNavigationItem extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final TextStyle? titleStyle;

  const SettingsNavigationItem({
    super.key,
    required this.title,
    this.onTap,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Title
            Expanded(
              child: Text(
                title,
                style: titleStyle ?? AppTextStyles.font14BlackW400TextStyle,
              ),
            ),
            SizedBox(width: 16.w),
            // Arrow Icon
            SettingsArrowIcon(onTap: onTap),
          ],
        ),
      ),
    );
  }
}
