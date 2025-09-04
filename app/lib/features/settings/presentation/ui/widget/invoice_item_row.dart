import 'package:app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceItemRow extends StatelessWidget {
  final String itemName;
  final String itemSubtitle;
  final String cost;
  final String quantity;
  final String total;

  const InvoiceItemRow({
    super.key,
    required this.itemName,
    required this.itemSubtitle,
    required this.cost,
    required this.quantity,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemName, style: AppTextStyles.font14BlackW500TextStyle),
              SizedBox(height: 2.h),
              Text(itemSubtitle, style: AppTextStyles.font10GreyW400TextStyle),
            ],
          ),
        ),
        Expanded(
          child: Text(
            cost,
            style: AppTextStyles.font12BlackW500TextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            quantity,
            style: AppTextStyles.font12BlackW500TextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            total,
            style: AppTextStyles.font12BlackW500TextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
