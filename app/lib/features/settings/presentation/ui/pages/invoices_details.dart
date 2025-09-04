import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/features/settings/presentation/ui/widget/invoice_header.dart';
import 'package:app/features/settings/presentation/ui/widget/invoice_summary_section.dart';
import 'package:app/features/settings/presentation/ui/widget/itemized_list_section.dart';
import 'package:app/features/settings/presentation/ui/widget/sender_recipient_section.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoicesDetails extends StatelessWidget {
  const InvoicesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              // App Bar with Export Button
              CustomAppBar(title: AppLocalizations.of(context)!.invoices),
              SizedBox(height: 24.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Invoice Header
                      const InvoiceHeader(),
                      SizedBox(height: 14.h),
                      Divider(color: Colors.grey.shade300),
                      SizedBox(height: 24.h),

                      // Sender and Recipient Details
                      const SenderRecipientSection(),
                      SizedBox(height: 24.h),

                      // Itemized List
                      const ItemizedListSection(),
                      SizedBox(height: 24.h),

                      // Invoice Summary
                      const InvoiceSummarySection(),
                      SizedBox(height: 40.h),
                    ],
                  ),
                ),
              ),

              // Pay Now Button
              AppButton(
                title: AppLocalizations.of(context)!.payNow,
                onTap: () {
                  // Handle payment
                },
                backgroundColor: CustomColor.mainPinkColor.color,
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
