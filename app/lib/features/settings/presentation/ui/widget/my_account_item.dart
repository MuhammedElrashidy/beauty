import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAccountItemData {
  MyAccountItemData({
    required this.title,
    required this.iconAsset,
    required this.onTap,
  });

  final String title;
  final String iconAsset;
  final VoidCallback onTap;
}

class MyAccountCard extends StatelessWidget {
  const MyAccountCard({super.key, required this.items});

  final List<MyAccountItemData> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: CustomColor.offWhiteColor.color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Column(
          children: [
            for (int i = 0; i < items.length; i++) ...[
              MyAccountItem(
                title: items[i].title,
                iconAsset: items[i].iconAsset,
                onTap: items[i].onTap,
              ),
              if (i != items.length - 1) SizedBox(height: 24.h),
            ],
          ],
        ),
      ),
    );
  }
}

class MyAccountItem extends StatelessWidget {
  const MyAccountItem({
    super.key,
    required this.title,
    required this.iconAsset,
    this.onTap,
    this.iconSize,
    this.trailing,
  });

  final String title;
  final String iconAsset;
  final VoidCallback? onTap;
  final double? iconSize;
  final Widget? trailing;

  bool get _isSvg => iconAsset.toLowerCase().endsWith('.svg');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  _buildLeadingIcon(),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Text(
                      title,
                      style: AppTextStyles.font14BlackW400TextStyle,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.w),
            trailing ??
                Icon(
                  Icons.arrow_forward_ios,
                  size: 17.5.sp,
                  color: CustomColor.mainPinkColor.lightColor,
                ),
          ],
        ),
      ),
    );
  }

  Widget _buildLeadingIcon() {
    final double size = iconSize ?? 24.sp;
    if (_isSvg) {
      return SvgPicture.asset(
        iconAsset,
        width: size,
        height: size,
        
      );
    }
    return Image.asset(
      iconAsset,
      width: size,
      height: size,
      color: CustomColor.mainPinkColor.lightColor,
    );
  }
}
