import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SenderRecipientSection extends StatelessWidget {
  const SenderRecipientSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // From Salon
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.from,
                style: AppTextStyles.font16GreyW400TextStyle,
              ),
              SizedBox(height: 4.h),
              Text(
                AppLocalizations.of(context)!.salon,
                style: AppTextStyles.font16BlackW400TextStyle,
              ),
              SizedBox(height: 16.h),
              Text(
                AppLocalizations.of(context)!.issuedDate,
                style: AppTextStyles.font16GreyW400TextStyle,
              ),
              SizedBox(height: 4.h),
              Text(
                '15 Apr, 2024',
                style: AppTextStyles.font16BlackW400TextStyle,
              ),
            ],
          ),
        ),

        // To Recipient
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.to,
                style: AppTextStyles.font16GreyW400TextStyle,
              ),
              SizedBox(height: 4.h),
              Text(
                AppLocalizations.of(context)!.suhailaAhmed,
                style: AppTextStyles.font16BlackW400TextStyle,
              ),
              SizedBox(height: 16.h),
              Text(
                AppLocalizations.of(context)!.dueDate,
                style: AppTextStyles.font16GreyW400TextStyle,
              ),
              SizedBox(height: 4.h),
              Text(
                '18 Apr, 2024',
                style: AppTextStyles.font16BlackW400TextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
