import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDialog extends StatelessWidget {
  final String? title;
  final Widget? titleIcon;
  final String? message;
  final Widget? content;
  final List<Widget>? actions;
  final bool showDivider;
  final Widget? dividerContent;
  final EdgeInsetsGeometry? contentPadding;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final VoidCallback? onClose;

  const AppDialog({
    super.key,
    this.title,
    this.titleIcon,
    this.message,
    this.content,
    this.actions,
    this.showDivider = false,
    this.dividerContent,
    this.contentPadding,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderRadius,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(12),
      ),
      child: Container(
        width: width,
        height: height,
        padding: contentPadding ?? EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: borderRadius ?? BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header section
            if (title != null || titleIcon != null) ...[
              Row(
                children: [
                  if (titleIcon != null) ...[titleIcon!, SizedBox(width: 12.w)],
                  if (title != null)
                    Expanded(
                      child: Text(
                        title!,
                        style: AppTextStyles.font16BlackW600TextStyle,
                      ),
                    ),
                  if (onClose != null)
                    GestureDetector(
                      onTap: onClose,
                      child: Icon(
                        Icons.close,
                        size: 20.sp,
                        color: Colors.grey.shade600,
                      ),
                    ),
                ],
              ),
              SizedBox(height: 16.h),
            ],

            // Message section
            if (message != null) ...[
              Text(
                message!,
                style: AppTextStyles.font14GreyW400TextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
            ],

            // Custom content section
            if (content != null) ...[content!, SizedBox(height: 20.h)],

            // Divider section
            if (showDivider) ...[_buildDivider(), SizedBox(height: 20.h)],

            // Actions section
            if (actions != null && actions!.isNotEmpty) ...[
              Row(
                children:
                    actions!
                        .map((action) => Expanded(child: action))
                        .toList()
                        .expand((widget) => [widget, SizedBox(width: 12.w)])
                        .toList()
                      ..removeLast(), // Remove the last SizedBox
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
        ),
        if (dividerContent != null) ...[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            child: dividerContent!,
          ),
        ],
        Expanded(
          child: Container(
            height: 1,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Predefined dialog button styles
class AppDialogButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final bool isPrimary;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double? height;
  final double? borderRadius;

  const AppDialogButton({
    super.key,
    required this.text,
    this.onTap,
    this.isPrimary = false,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveBackgroundColor =
        backgroundColor ??
        (isPrimary
            ? CustomColor.mainPinkColor.lightColor
            : CustomColor.offWhiteColor.lightColor);

    final effectiveTextColor =
        textColor ??
        (isPrimary
            ? CustomColor.offWhiteColor.lightColor
            : CustomColor.mainPinkColor.lightColor);

    final effectiveBorderColor =
        borderColor ?? CustomColor.lightGreyColor.lightColor;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 44.h,
        decoration: BoxDecoration(
          color: effectiveBackgroundColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.font14BlackW500TextStyle.copyWith(
              color: effectiveTextColor,
            ),
          ),
        ),
      ),
    );
  }
}

// Convenience methods for common dialog types
class AppDialogHelper {
  static void showConfirmationDialog({
    required BuildContext context,
    required String title,
    required String message,
    Widget? titleIcon,
    String? confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    bool showDivider = true,
    Widget? dividerContent,
  }) {
    showDialog(
      context: context,
      builder:
          (context) => AppDialog(
            title: title,
            titleIcon: titleIcon,
            message: message,
            showDivider: showDivider,
            dividerContent: dividerContent,
            actions: [
              AppDialogButton(
                text: cancelText ?? 'Cancel',
                onTap: onCancel ?? () => Navigator.of(context).pop(),
                isPrimary: false,
              ),
              AppDialogButton(
                text: confirmText ?? 'Confirm',
                onTap:
                    onCancel ??
                    () {
                      Navigator.of(context).pop();
                      onConfirm?.call();
                    },
                isPrimary: true,
              ),
            ],
          ),
    );
  }

  static void showInfoDialog({
    required BuildContext context,
    required String title,
    required String message,
    Widget? titleIcon,
    String? buttonText,
    VoidCallback? onButtonTap,
  }) {
    showDialog(
      context: context,
      builder:
          (context) => AppDialog(
            title: title,
            titleIcon: titleIcon,
            message: message,
            actions: [
              AppDialogButton(
                text: buttonText ?? 'OK',
                onTap: onButtonTap ?? () => Navigator.of(context).pop(),
                isPrimary: true,
              ),
            ],
          ),
    );
  }
}
