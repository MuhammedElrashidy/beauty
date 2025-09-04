import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/feedback_form_widget.dart';

class CommentAndFeedbackPage extends StatefulWidget {
  const CommentAndFeedbackPage({super.key});

  @override
  State<CommentAndFeedbackPage> createState() => _CommentAndFeedbackPageState();
}

class _CommentAndFeedbackPageState extends State<CommentAndFeedbackPage> {
  final GlobalKey<FeedbackFormWidgetState> _formKey =
      GlobalKey<FeedbackFormWidgetState>();

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
                  key: _formKey,
                  onSubmit: (feedback, selectedOptions) {
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
                onTap: () {
                  _formKey.currentState?.handleSubmit();
                },
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
