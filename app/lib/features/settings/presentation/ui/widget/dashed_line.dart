import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        20,
        (index) => Expanded(
          child: Container(
            height: .6.h,
            color: Colors.grey.shade300,
            margin: EdgeInsets.only(right: index == 19 ? 0 : 2.w),
          ),
        ),
      ),
    );
  }
}
