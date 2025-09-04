import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/app_dialog.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteLocationDialog extends StatelessWidget {
  final VoidCallback? onDelete;
  final VoidCallback? onCancel;

  const DeleteLocationDialog({super.key, this.onDelete, this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      titleIcon: SvgIcon(
        svgImage: AppAssets.trash,
        width: 24.sp,
        height: 24.sp,
        color: CustomColor.mainPinkColor.color,
      ),
      title: AppLocalizations.of(context)!.deleteYourLocation,
      message: AppLocalizations.of(context)!.areYouSureToDeleteYourLocation,

      actions: [
        AppDialogButton(
          text: AppLocalizations.of(context)!.cancel,
          onTap: onCancel ?? () => Navigator.of(context).pop(),
          isPrimary: false,
        ),
        AppDialogButton(
          text: AppLocalizations.of(context)!.delete,
          onTap: onDelete ?? () => Navigator.of(context).pop(),
          isPrimary: true,
        ),
      ],
    );
  }

  static void show({
    required BuildContext context,
    VoidCallback? onDelete,
    VoidCallback? onCancel,
  }) {
    showDialog(
      context: context,
      builder:
          (context) =>
              DeleteLocationDialog(onDelete: onDelete, onCancel: onCancel),
    );
  }
}
