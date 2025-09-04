import 'package:app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:flutter_svg/svg.dart';

class ProfileFieldWidget extends StatelessWidget {
  const ProfileFieldWidget({
    super.key,
    required this.icon,
    this.label,
    required this.value,
    this.onTap,
    this.isPhoneField = false,
    this.countryCode,
    this.phoneNumber,
    this.flagAsset,
    this.color,
  });

  final String icon;
  final String? label;
  final String value;
  final VoidCallback? onTap;
  final bool isPhoneField;
  final String? countryCode;
  final String? phoneNumber;
  final String? flagAsset;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: CustomColor.offWhiteColor.color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          if (isPhoneField && flagAsset != null)
            _buildFlagIcon()
          else
            SvgPicture.asset(icon, width: 24.sp, height: 24.sp, color: color),
          SizedBox(width: 12.w),
          Text(
            label ?? '',
            style: AppTextStyles.font14BlackW400TextStyle.copyWith(
              color: CustomColor.mainPinkColor.color,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child:
                isPhoneField
                    ? _buildPhoneContent()
                    : Text(
                      value,
                      style: AppTextStyles.font14BlackW400TextStyle.copyWith(
                        color: CustomColor.blackText.color,
                      ),
                    ),
          ),
        ],
      ),
    );
  }

  Widget _buildFlagIcon() {
    return Container(
      width: 24.sp,
      height: 24.sp,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: SvgPicture.asset(flagAsset!, fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildPhoneContent() {
    return Row(
      children: [
        Text(
          countryCode ?? '+20',
          style: AppTextStyles.font14BlackW400TextStyle.copyWith(
            color: CustomColor.mainPinkColor.color,
          ),
        ),
        SizedBox(width: 4.w),
        Icon(Icons.keyboard_arrow_down, size: 16.sp, color: Colors.black),
        SizedBox(width: 8.w),
        Text(
          phoneNumber ?? '1250879633',
          style: AppTextStyles.font14BlackW400TextStyle.copyWith(
            color: CustomColor.mainPinkColor.color,
          ),
        ),
      ],
    );
  }
}
