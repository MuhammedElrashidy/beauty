import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/features/settings/presentation/ui/widget/dashed_line.dart';
import 'package:app/features/settings/presentation/ui/widget/invoice_item_row.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemizedListSection extends StatelessWidget {
  const ItemizedListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dashed line
        const DashedLine(),
        SizedBox(height: 16.h),

        // Column headers
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                AppLocalizations.of(context)!.item,
                style: AppTextStyles.font16GreyW500TextStyle,
              ),
            ),
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.cost,
                style: AppTextStyles.font16GreyW500TextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.qty,
                style: AppTextStyles.font16GreyW500TextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.total,
                style: AppTextStyles.font16GreyW500TextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Divider(color: Colors.grey.shade300),
        SizedBox(height: 16.h),

        // Invoice items
        InvoiceItemRow(
          itemName: AppLocalizations.of(context)!.dermapen,
          itemSubtitle: AppLocalizations.of(context)!.initialFee,
          cost: '2,000 ${AppLocalizations.of(context)!.egp}',
          quantity: '1',
          total: '2,000 ${AppLocalizations.of(context)!.egp}',
        ),
        SizedBox(height: 12.h),
        InvoiceItemRow(
          itemName: AppLocalizations.of(context)!.dermapen,
          itemSubtitle: AppLocalizations.of(context)!.initialFee,
          cost: '2,000 ${AppLocalizations.of(context)!.egp}',
          quantity: '1',
          total: '2,000 ${AppLocalizations.of(context)!.egp}',
        ),

        SizedBox(height: 16.h),
        const DashedLine(),
      ],
    );
  }
}
