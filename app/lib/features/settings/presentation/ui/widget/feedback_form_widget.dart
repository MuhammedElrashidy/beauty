import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedbackFormWidget extends StatefulWidget {
  final Function(String feedback, List<String> selectedOptions) onSubmit;

  const FeedbackFormWidget({super.key, required this.onSubmit});

  @override
  State<FeedbackFormWidget> createState() => _FeedbackFormWidgetState();
}

class _FeedbackFormWidgetState extends State<FeedbackFormWidget> {
  final TextEditingController _bugReportController = TextEditingController();
  final TextEditingController _improvementsController = TextEditingController();

  bool _reportBugs = false;
  bool _suggestImprovements = false;
  bool _requestFeatures = false;

  @override
  void dispose() {
    _bugReportController.dispose();
    _improvementsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 812.h,
      color: Colors.white,
      child: Column(
        children: [
          // Feedback Sections
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20.h),

                  // Report Bugs Section
                  _buildFeedbackSection(
                    title: AppLocalizations.of(context)!.reportBugs,
                    isSelected: _reportBugs,
                    onChanged: (value) {
                      setState(() {
                        _reportBugs = value;
                      });
                    },
                    controller: _bugReportController,
                    showTextField: _reportBugs,
                  ),

                  SizedBox(height: 16.h),

                  // Suggest Improvements Section
                  _buildFeedbackSection(
                    title: AppLocalizations.of(context)!.suggestImprovements,
                    isSelected: _suggestImprovements,
                    onChanged: (value) {
                      setState(() {
                        _suggestImprovements = value;
                      });
                    },
                    controller: _improvementsController,
                    showTextField: _suggestImprovements,
                  ),

                  SizedBox(height: 16.h),

                  // Request New Features Section
                  _buildCheckboxOnlySection(
                    title: AppLocalizations.of(context)!.requestNewFeatures,
                    isSelected: _requestFeatures,
                    onChanged: (value) {
                      setState(() {
                        _requestFeatures = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeedbackSection({
    required String title,
    required bool isSelected,
    required ValueChanged<bool> onChanged,
    required TextEditingController controller,
    required bool showTextField,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: CustomColor.offWhiteColor.color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildCheckbox(isSelected, onChanged),
              SizedBox(width: 12.w),
              Text(
                title,
                style: AppTextStyles.font14BlackW400TextStyle.copyWith(
                  color:
                      isSelected
                          ? CustomColor.mainPinkColor.lightColor
                          : CustomColor.blackText.color,
                ),
              ),
            ],
          ),
          if (showTextField) ...[
            SizedBox(height: 16.h),
            Container(
              width: double.infinity,
              height: 120.h,
              decoration: BoxDecoration(
                color: CustomColor.offWhiteColor.color,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade200, width: 1),
              ),
              child: TextField(
                controller: controller,
                maxLines: null,
                maxLength: 500,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.typeHere,
                  hintStyle: AppTextStyles.font14GreyW400TextStyle,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(12.w),
                  counterStyle: AppTextStyles.font12GreyW400TextStyle,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildCheckboxOnlySection({
    required String title,
    required bool isSelected,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: CustomColor.offWhiteColor.color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200, width: 1),
      ),
      child: Row(
        children: [
          _buildCheckbox(isSelected, onChanged),
          SizedBox(width: 12.w),
          Text(
            title,
            style: AppTextStyles.font14BlackW500TextStyle.copyWith(
              color: CustomColor.blackText.color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCheckbox(bool isSelected, ValueChanged<bool> onChanged) {
    return GestureDetector(
      onTap: () => onChanged(!isSelected),
      child: Container(
        width: 20.w,
        height: 20.h,
        decoration: BoxDecoration(
          color:
              isSelected ? CustomColor.mainPinkColor.lightColor : Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color:
                isSelected
                    ? CustomColor.mainPinkColor.lightColor
                    : CustomColor.greyText.color,
            width: 1,
          ),
        ),
        child:
            isSelected
                ? Icon(
                  Icons.check,
                  color: CustomColor.whiteText.color,
                  size: 14.sp,
                )
                : null,
      ),
    );
  }

  bool _canSubmit() {
    return _reportBugs || _suggestImprovements || _requestFeatures;
  }

  void _handleSubmit() {
    List<String> selectedOptions = [];
    if (_reportBugs) selectedOptions.add('Report Bugs');
    if (_suggestImprovements) selectedOptions.add('Suggest Improvements');
    if (_requestFeatures) selectedOptions.add('Request new features');

    String feedback = '';
    if (_reportBugs && _bugReportController.text.isNotEmpty) {
      feedback += 'Bug Report: ${_bugReportController.text}\n\n';
    }
    if (_suggestImprovements && _improvementsController.text.isNotEmpty) {
      feedback += 'Improvements: ${_improvementsController.text}\n\n';
    }

    widget.onSubmit(feedback, selectedOptions);
  }
}
