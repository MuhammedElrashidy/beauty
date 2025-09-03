/******************** FILE INFO ********************/
/// FILE NAME: role_card.dart
/// Purpose: Selectable role card widget
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:app/features/onboarding_flow/role_selection/domain/entities/role_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoleCard extends StatelessWidget {
  final RoleEntity role;
  final bool isSelected;
  final VoidCallback onTap;

  const RoleCard({
    super.key,
    required this.role,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor =
        isSelected
            ? AppTheme.primarySelectedColor.withValues(alpha: .2)
            : AppTheme.lightGrey;
    final Color border =
        isSelected
            ? AppTheme.primarySelectedColor.withValues(alpha: .2)
            : AppTheme.lightGrey;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 94.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: border, width: 1.sp),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 50.sp,
              backgroundColor: AppTheme.whiteColor,
              child: SvgIcon(
                svgImage: role.svgAsset,
                height: 74.h,
                width: 74.w,
              ),
            ),
            16.horizontalSpace,
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 9.5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      role.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.font16DarkW500TextStyle,
                    ),
                    4.verticalSpace,
                    Padding(
                      padding: EdgeInsets.only(right: 5.0.w),
                      child: Text(
                        role.subTitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.font10GreyW400TextStyle.copyWith(
                          height: 1.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
