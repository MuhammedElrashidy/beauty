import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'beauty_app.dart';

Future<void> main() async {
  await ScreenUtil.ensureScreenSize();

  // Enable device preview for development
  runApp(
    DevicePreview(
      enabled: true, // Set to false in production
      builder: (context) => const BeautyApp(),
    ),
  );
}
