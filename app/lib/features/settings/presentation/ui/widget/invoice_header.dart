import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:app/features/settings/presentation/ui/widget/export_button.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceHeader extends StatelessWidget {
  const InvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Salon Logo and Name
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                AppAssets.beautySalonLogo,
                width: 83.w,
                height: 83.h,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              AppLocalizations.of(context)!.bellaSalon,
              style: AppTextStyles.font14BlackW500TextStyle.copyWith(
                color: CustomColor.mainPinkColor.color,
                fontWeight: FontWeight.w600,
              ),
            ),
           
          ],
        ),

        // Order Number
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              AppLocalizations.of(context)!.orderNumber,
              style: AppTextStyles.font16GreyW400TextStyle,
            ),
            SizedBox(height: 4.h),
            Text(
              '#215',
              style: AppTextStyles.font20BlackW600TextStyle.copyWith(
                color: CustomColor.mainPinkColor.color,
              ),
            ),
          ],
        ),

        const ExportButton(),
      ],
    );
  }
}
