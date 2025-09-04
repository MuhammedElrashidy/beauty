import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:app/features/settings/presentation/ui/widget/saved_location_menu.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedLocationItem extends StatelessWidget {
  const SavedLocationItem({
    super.key,
    required this.title,
    this.onMenuTap,
    this.onEdit,
    this.onRemove,
  });

  final String title;
  final VoidCallback? onMenuTap;
  final VoidCallback? onEdit;
  final VoidCallback? onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        color: CustomColor.offWhiteColor.color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SvgIcon(svgImage: AppAssets.home, width: 20.w, height: 20.h),
          SizedBox(width: 16.w),
          Expanded(
            child: Text(
              title,
              style: AppTextStyles.font12BlackW400TextStyle,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          SizedBox(width: 12.w),
          GestureDetector(
            onTapDown: (details) {
             
              showSavedLocationMenu(
                context: context,
                globalPosition: details.globalPosition,
                onEdit: onEdit,
                onRemove: onRemove,
                
              );
            },
            child: SvgIcon(svgImage: AppAssets.more, width: 16.w, height: 16.h),
          ),
        ],
      ),
    );
  }
}
