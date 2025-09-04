import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsLanguageItem extends StatefulWidget {
  final String title;
  final bool isEnglishSelected;
  final ValueChanged<bool> onLanguageChanged;

  const SettingsLanguageItem({
    super.key,
    required this.title,
    required this.isEnglishSelected,
    required this.onLanguageChanged,
  });

  @override
  State<SettingsLanguageItem> createState() => _SettingsLanguageItemState();
}

class _SettingsLanguageItemState extends State<SettingsLanguageItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Title
          Expanded(
            child: Text(
              widget.title,
              style: AppTextStyles.font14BlackW400TextStyle,
            ),
          ),
          SizedBox(width: 16.w),
          // Language Selector
          Container(
            height: 32.h,
            width: 110.w,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Arabic Option
                GestureDetector(
                  onTap: () => widget.onLanguageChanged(false),
                  child: Container(
                    height: 28.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      color:
                          !widget.isEnglishSelected
                              ? CustomColor.mainPinkColor.lightColor
                              : CustomColor.whiteText.lightColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'AR',
                        style: AppTextStyles.font12GreyW400TextStyle.copyWith(
                          color:
                              !widget.isEnglishSelected
                                  ? CustomColor.whiteText.lightColor
                                  : CustomColor.mainPinkColor.lightColor,
                        ),
                      ),
                    ),
                  ),
                ),
                // English Option
                GestureDetector(
                  onTap: () => widget.onLanguageChanged(true),
                  child: Container(
                    height: 28.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      color:
                          widget.isEnglishSelected
                              ? CustomColor.mainPinkColor.lightColor
                              : CustomColor.whiteText.lightColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'ENG',
                        style: AppTextStyles.font12GreyW400TextStyle.copyWith(
                          color:
                              widget.isEnglishSelected
                                  ? CustomColor.whiteText.lightColor
                                  : CustomColor.mainPinkColor.lightColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
