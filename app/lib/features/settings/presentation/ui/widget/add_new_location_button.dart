import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewLocationButton extends StatelessWidget {
  const AddNewLocationButton({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 44.h,
        decoration: BoxDecoration(
          color: CustomColor.mainPinkColor.color.withOpacity(0.08),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: CustomColor.mainPinkColor.color,
              size: 24.sp,
            ),
            SizedBox(width: 8.w),
            Text(
              AppLocalizations.of(context)!.addNewLocation,
              style: AppTextStyles.font12BlackW400TextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
