import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordRequirementWidget extends StatelessWidget {
  const PasswordRequirementWidget({
    super.key,
    required this.text,
    required this.isMet,
    this.textStyle,
    this.checkboxSize = 24.0,
    this.spacing = 12.0,
  });

  final String text;
  final bool isMet;
  final TextStyle? textStyle;
  final double checkboxSize;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgIcon(
          svgImage: isMet ? AppAssets.checkBoxFill : AppAssets.checkBoxEmpty,
          width: checkboxSize.sp,
          height: checkboxSize.sp,
        ),
        SizedBox(width: spacing.w),
        Expanded(
          child: Text(
            text,
            style:
                (textStyle ?? AppTextStyles.font14BlackW400TextStyle)
                   
          ),
        ),
      ],
    );
  }
}

class PasswordRequirementsList extends StatelessWidget {
  const PasswordRequirementsList({
    super.key,
    required this.requirements,

    this.titleStyle,
    this.spacing = 12.0,
    this.titleSpacing = 16.0,
  });

  final List<PasswordRequirement> requirements;

  final TextStyle? titleStyle;
  final double spacing;
  final double titleSpacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: titleSpacing.h),
        ...requirements.map(
          (req) => Column(
            children: [
              PasswordRequirementWidget(text: req.text, isMet: req.isMet),
              if (req != requirements.last) SizedBox(height: spacing.h),
            ],
          ),
        ),
      ],
    );
  }
}

class PasswordRequirement {
  const PasswordRequirement({required this.text, required this.isMet});

  final String text;
  final bool isMet;
}
