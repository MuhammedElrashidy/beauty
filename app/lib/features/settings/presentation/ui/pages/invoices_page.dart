import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/extensions/navigation_extensions.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/app_text_form.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:app/features/settings/presentation/ui/widget/count_chip.dart';
import 'package:app/features/settings/presentation/ui/widget/icon_square_button.dart';
import 'package:app/features/settings/presentation/ui/widget/invoice_item.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoicesPage extends StatelessWidget {
  const InvoicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: AppLocalizations.of(context)!.invoices),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CountChip(count: 20, label: 'All', selected: true),
                  SizedBox(width: 12),
                  CountChip(count: 20, label: 'Pending'),
                  SizedBox(width: 12),
                  CountChip(count: 20, label: 'Paid'),
                ],
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Expanded(
                    child: AppTextField(
                      hint: 'Search',
                      fillColor: CustomColor.offWhiteColor.color,
                      borderRadius: 8,
                      prefixConstraints: BoxConstraints(minWidth: 40.w),
                      prefix: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: SvgIcon(svgImage: AppAssets.search, width: 24.w, height: 24.h),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  const IconSquareButton(iconAsset: AppAssets.filter),
                  SizedBox(width: 8.w),
                  const IconSquareButton(iconAsset: AppAssets.swap),
                ],
              ),
              SizedBox(height: 24.h),
              Expanded(
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (_, __) => SizedBox(height: 8.h),
                  itemBuilder:
                      (context, index) => GestureDetector(
                        onTap: () {
                          context.navigateTo(
                            Routes.invoicesDetails,
                            arguments: {},
                          );
                        },
                        child: const InvoiceItem(),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
