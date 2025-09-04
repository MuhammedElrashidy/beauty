import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceSummarySection extends StatelessWidget {
  const InvoiceSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Labels
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.subtotal,
                style: AppTextStyles.font14BlackW400TextStyle,
              ),
              SizedBox(height: 12.h),
              Text(
                '${AppLocalizations.of(context)!.tax} 10%',
                style: AppTextStyles.font14BlackW400TextStyle,
              ),
              SizedBox(height: 12.h),
              Text(
                '${AppLocalizations.of(context)!.discount} 25%',
                style: AppTextStyles.font14BlackW400TextStyle,
              ),
              SizedBox(height: 12.h),
              Text(
                AppLocalizations.of(context)!.total,
                style: AppTextStyles.font16BlackW400TextStyle.copyWith(
                  color: CustomColor.mainPinkColor.color,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        // Amounts
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '250 ${AppLocalizations.of(context)!.egp}',
                style: AppTextStyles.font14BlackW400TextStyle,
              ),
              SizedBox(height: 12.h),
              Text(
                '300 ${AppLocalizations.of(context)!.egp}',
                style: AppTextStyles.font14BlackW400TextStyle,
              ),
              SizedBox(height: 12.h),
              Text(
                '-200 ${AppLocalizations.of(context)!.egp}',
                style: AppTextStyles.font14BlackW400TextStyle.copyWith(
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                '1800 ${AppLocalizations.of(context)!.egp}',
                style: AppTextStyles.font16BlackW400TextStyle.copyWith(
                  color: CustomColor.mainPinkColor.color,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
