import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              CustomAppBar(
                title: AppLocalizations.of(context)!.termsAndConditions,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h),

                    // First paragraph with bullet point
                    _buildParagraphWithBullet(
                      'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                    ),

                    SizedBox(height: 24.h),

                    // Second paragraph with bullet point
                    _buildParagraphWithBullet(
                      'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                    ),

                    // SizedBox(height: 32.h),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              // Download PDF Button
              _buildDownloadButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildParagraphWithBullet(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Bullet point
        Container(
          margin: EdgeInsets.only(top: 6.h, right: 12.w),
          width: 4.w,
          height: 4.h,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
        // Text content
        Expanded(
          child: Text(
            text,
            style: AppTextStyles.font12BlackW400TextStyle.copyWith(height: 1.5),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }

  Widget _buildDownloadButton() {
    return Builder(
      builder: (context) {
        return GestureDetector(
          onTap: () {
            // Handle PDF download
            print('Downloading PDF of Terms and Conditions...');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Download icon
              SvgPicture.asset(AppAssets.download, width: 24.sp, height: 24.sp),
              SizedBox(width: 2.w),
              // Text
              Text(
                AppLocalizations.of(context)!.downloadPdfOfTerms,
                style: AppTextStyles.font11BlackW500TextStyle.copyWith(
                  color: CustomColor.mainPinkColor.lightColor,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
