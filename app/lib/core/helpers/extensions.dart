import 'package:app/beauty_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';


extension Translation on String {
  String get translate {
    BuildContext context = appMainNavigatorKey.currentContext!;
    return this.getString(context);

  }
  }