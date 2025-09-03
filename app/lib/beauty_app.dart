/******************** FILE INFO ********************/
/// FILE NAME: beauty_app.dart
/// Purpose: The main app widget
/// Author: Mohamed Elrashidy
/// Date: 2/9/2025

import 'package:app/core/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/core/theme/cubit/theme_cubit.dart';
import 'package:app/core/theme/cubit/theme_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'l10n/app_localizations.dart';

GlobalKey<NavigatorState> appMainNavigatorKey = GlobalKey<NavigatorState>();

class BeautyApp extends StatelessWidget {
  const BeautyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isTablet = MediaQuery.of(context).size.width > 600;
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()..toggleTheme()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        buildWhen: (_, state) {
          return state is ThemeState;
        },
        builder: (context, state) {
          return ScreenUtilInit(
            minTextAdapt: true,
            splitScreenMode: true,
            designSize:
                isTablet
                    ? (isLandscape
                        ? const Size(1024, 768)
                        : const Size(768, 1024))
                    : isLandscape
                    ? const Size(812, 375)
                    : const Size(375, 812),
            child: MaterialApp(
              navigatorKey: appMainNavigatorKey,
              title: 'Beauty App',
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: state.themeMode,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en'), // English
                Locale('ar'), // Arabic
              ],
              locale: state.locale,
              onGenerateRoute: AppRouting.generateRoute,
              debugShowCheckedModeBanner: false,
              useInheritedMediaQuery: true,
              builder: DevicePreview.appBuilder,
            ),
          );
        },
      ),
    );
  }
}
