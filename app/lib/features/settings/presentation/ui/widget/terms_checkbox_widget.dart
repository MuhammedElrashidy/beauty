import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsCheckboxWidget extends StatelessWidget {
  const TermsCheckboxWidget({
    super.key,
    required this.isAccepted,
    required this.onChanged,
    this.textStyle,
    this.checkboxSize = 24.0,
    this.spacing = 12.0,
    this.termsText = 'terms',
    this.conditionsText = ' and conditions',
    this.prefixText = 'I have read and accepted the ',
    this.middleText,
    this.onTap,
  });

  final bool isAccepted;
  final ValueChanged<bool> onChanged;
  final TextStyle? textStyle;
  final double checkboxSize;
  final double spacing;
  final String termsText;
  final String conditionsText;
  final String prefixText;
  final String? middleText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => onChanged(!isAccepted),
          child: SvgIcon(
            svgImage:
                isAccepted ? AppAssets.checkBoxFill : AppAssets.checkBoxEmpty,
            width: checkboxSize.sp,
            height: checkboxSize.sp,
          ),
        ),
        SizedBox(width: spacing.w),
        Expanded(
          child: GestureDetector(
            onTap: () => onTap,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: prefixText,
                    style: textStyle ?? AppTextStyles.font14BlackW400TextStyle,
                  ),
                  TextSpan(
                    text: termsText,
                    style: (textStyle ?? AppTextStyles.font14BlackW500TextStyle)
                        .copyWith(color: CustomColor.mainPinkColor.color),
                  ),
                  TextSpan(
                    text: middleText,
                    style: textStyle ?? AppTextStyles.font14BlackW400TextStyle,
                  ),
                  TextSpan(
                    text: conditionsText,
                    style: (textStyle ?? AppTextStyles.font14BlackW500TextStyle)
                        .copyWith(color: CustomColor.mainPinkColor.color),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
