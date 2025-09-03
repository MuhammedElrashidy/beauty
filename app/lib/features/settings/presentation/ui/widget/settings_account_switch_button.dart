import 'package:app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsAccountSwitchButton extends StatefulWidget {
  final Function(bool isSettingsSelected) onSelectionChanged;
  final bool initialSelection;

  const SettingsAccountSwitchButton({
    super.key,
    required this.onSelectionChanged,
    this.initialSelection = true,
  });

  @override
  State<SettingsAccountSwitchButton> createState() =>
      _SettingsAccountSwitchButtonState();
}

class _SettingsAccountSwitchButtonState
    extends State<SettingsAccountSwitchButton> {
  late bool _isSettingsSelected;

  @override
  void initState() {
    super.initState();
    _isSettingsSelected = widget.initialSelection;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 343.w,
      decoration: BoxDecoration(
        color: CustomColor.offWhiteColor.color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
        child: Row(
          children: [
            // Settings Button
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isSettingsSelected = true;
                  });
                  widget.onSelectionChanged(true);
                },
                child: Container(
                  height: 29.5.h,
                  width: 157.5.w,
                  decoration: BoxDecoration(
                    color:
                        _isSettingsSelected
                            ? CustomColor.mainPinkColor.lightColor
                            : Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      'Settings',
                      style: AppTextStyles.font14GreyW500TextStyle.copyWith(
                        color:
                            _isSettingsSelected
                                ? CustomColor.whiteText.lightColor
                                : CustomColor.greyText.lightColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // My Account Button
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isSettingsSelected = false;
                  });
                  widget.onSelectionChanged(false);
                },
                child: Container(
                  height: 29.5.h,
                  width: 157.5.w,
                  decoration: BoxDecoration(
                    color:
                        !_isSettingsSelected
                            ? CustomColor.mainPinkColor.lightColor
                            : Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      'My Account',
                      style: AppTextStyles.font14GreyW500TextStyle.copyWith(
                        color:
                            !_isSettingsSelected
                                ? CustomColor.whiteText.lightColor
                                : CustomColor.greyText.lightColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
