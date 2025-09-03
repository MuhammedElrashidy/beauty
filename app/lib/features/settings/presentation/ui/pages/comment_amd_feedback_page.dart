import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/feedback_form_widget.dart';

class CommentAndFeedbackPage extends StatelessWidget {
  const CommentAndFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              CustomAppBar(
                title: AppLocalizations.of(context)!.commentAndFeedback,
              ),
              Expanded(
                child: FeedbackFormWidget(
                  onSubmit: (feedback, selectedOptions) {
                    // Handle feedback submission
                    print('Selected options: $selectedOptions');
                    print('Feedback: $feedback');

                    // Show success message or navigate back
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          AppLocalizations.of(context)!.feedbackSubmitted,
                        ),
                        backgroundColor: Colors.green,
                      ),
                    );

                    // Navigate back after submission
                    Future.delayed(Duration(seconds: 2), () {
                      Navigator.of(context).pop();
                    });
                  },
                ),
              ),
              AppButton(
                title: AppLocalizations.of(context)!.send,
                onTap: () {},
                backgroundColor: CustomColor.mainPinkColor.color,
              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
