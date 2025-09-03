import 'package:app/core/extensions/navigation_extensions.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/app_button.dart';

class TempHomePage extends StatelessWidget {
  const TempHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: SafeArea(
          child: Column(
            spacing: 30.sp,
            children: [
              
              CustomAppBar(title:AppLocalizations.of(context)!.welcome),
              SizedBox(height: 100.sp,),
              AppButton(
                title: 'Faiyrouz Start',
                onTap: (){},
              ),
              AppButton(
                title: 'Mohand Start',
                onTap: (){
                  context.navigateTo(Routes.settings,arguments: {});
                },
              ),
            ],
          ),
        ),
      ));
  }
}
