import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/app_dialog.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoutDialog extends StatelessWidget {
  final VoidCallback? onCancel;
  final VoidCallback? onLogout;

  const LogoutDialog({super.key, this.onCancel, this.onLogout});

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      title: AppLocalizations.of(context)!.logoutYourAccount,
      titleIcon: SvgPicture.asset(AppAssets.logoutSvg, width: 24.w, height: 24.h),
      message: AppLocalizations.of(context)!.logoutConfirmation,
      //showDivider: true,
      // dividerContent: Icon(
      //   Icons.close,
      //   size: 16.sp,
      //   color: Colors.blue.shade300,
      // ),
      actions: [
        AppDialogButton(
          text: AppLocalizations.of(context)!.cancel,
          onTap: onCancel ?? () => Navigator.of(context).pop(),
          isPrimary: false,
        ),
        AppDialogButton(
          text: AppLocalizations.of(context)!.logout,
          onTap:
              onLogout ??
              () {
                Navigator.of(context).pop();
                // TODO: Handle logout logic
               
              },
          isPrimary: true,
        ),
      ],
    );
  }
}
