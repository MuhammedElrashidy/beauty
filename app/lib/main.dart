import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'beauty_app.dart';

Future<void> main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const BeautyApp());
}

