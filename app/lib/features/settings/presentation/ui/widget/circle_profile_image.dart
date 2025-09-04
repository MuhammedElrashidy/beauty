/// ************************* FILE INFO *************************** ///
/// File Name: circle_profile_image.dart
/// Purpose: Contains the circle profile image widget.
/// Author: Mohand Adel
/// Created At: 2/9/2025

import 'package:app/core/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleProfileImage extends StatelessWidget {
  const CircleProfileImage({
    super.key,
    required this.image,
    this.size,
    this.onEdit,
    this.showEdit = true,
    this.ringColor,
  });

  final ImageProvider image;
  final double? size; // logical size; will be scaled with ScreenUtil
  final VoidCallback? onEdit;
  final bool showEdit;
  final Color? ringColor;

  @override
  Widget build(BuildContext context) {
    final double effectiveSize = (size ?? 96).r; // overall diameter
    final double outerBorder = 4.r; // outer pink ring width
    final double innerBorder = 3.r; // inner pink ring width

    return SizedBox(
      width: effectiveSize,
      height: effectiveSize,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Concentric rings + image
          Container(
            width: effectiveSize,
            height: effectiveSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ringColor ?? CustomColor.mainPinkColor.color,
                width: 2.2,
              ),
            ),
            alignment: Alignment.center,
            child: ClipOval(
              child: Image(
                image: image,
                width: 86.r,
                height: 86.r,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Edit button overlay
          if (showEdit)
            Positioned(
              right: 6.r,
              bottom: 6.r,
              child: GestureDetector(
                onTap: onEdit,
                child: Container(
                  width: 18.5.r,
                  height: 18.5.r,
                  decoration: BoxDecoration(
                    color: ringColor ?? CustomColor.mainPinkColor.color,
                    shape: BoxShape.circle,
                    //border: Border.all(color: Colors.white, width: 2.r),
                  ),
                  child: Icon(Icons.edit, size: 12.40.r, color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
