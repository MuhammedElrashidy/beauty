import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Shows the Saved Location context menu anchored to the provided global position.
void showSavedLocationMenu({
  required BuildContext context,
  required Offset globalPosition,
  VoidCallback? onEdit,
  VoidCallback? onRemove,
}) {
  final OverlayState overlayState = Overlay.of(context);
  late OverlayEntry entry;

  entry = OverlayEntry(
    builder: (ctx) {
      final Size screen = MediaQuery.of(ctx).size;
      final double menuWidth = 180.w;
      final double menuHeight = 116.h;
      double left = globalPosition.dx - menuWidth + 8.w;
      double top = globalPosition.dy + 8.h;
      if (left < 8.w) left = 8.w;
      if (left + menuWidth > screen.width - 8.w) {
        left = screen.width - menuWidth - 8.w;
      }
      if (top + menuHeight > screen.height - 8.h) {
        top = globalPosition.dy - menuHeight - 8.h;
      }

      return Stack(
        children: [
          Positioned.fill(child: GestureDetector(onTap: () => entry.remove())),
          Positioned(
            left: left,
            top: top,
            child: Material(
              color: Colors.white,
              elevation: 6,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: menuWidth,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 16,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _MenuRow(
                      iconAsset: AppAssets.editPen,
                      label: 'Edit',
                      onTap: () {
                        entry.remove();
                        onEdit?.call();
                      },
                    ),
                    SizedBox(height: 8.h),
                    _MenuRow(
                      iconAsset: AppAssets.trash,
                      label: 'Remove',
                      onTap: () {
                        entry.remove();
                        onRemove?.call();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    },
  );

  overlayState.insert(entry);
}

class _MenuRow extends StatelessWidget {
  const _MenuRow({required this.iconAsset, required this.label, this.onTap});

  final String iconAsset;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        children: [
          SvgIcon(
            svgImage: iconAsset,
            width: 18.w,
            height: 18.h,
            color: CustomColor.mainPinkColor.color,
          ),
          SizedBox(width: 12.w),
          Text(label, style: AppTextStyles.font16BlackW400TextStyle),
        ],
      ),
    );
  }
}
