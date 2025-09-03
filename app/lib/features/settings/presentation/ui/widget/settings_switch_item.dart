import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsSwitchItem extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;
  final bool enabled;

  const SettingsSwitchItem({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Title
          Expanded(
            child: Text(title, style: AppTextStyles.font14BlackW400TextStyle),
          ),
          SizedBox(width: 16.w),
          // Toggle Switch
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: value,
              onChanged: enabled ? onChanged : null,
              activeTrackColor: CustomColor.mainPinkColor.lightColor,
              trackColor: CustomColor.lightGreyColor.lightColor,
              thumbColor: CustomColor.whiteText.lightColor,
            ),
          ),
        ],
      ),
    );
  }
}
