import 'package:app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/core/theme/cubit/theme_cubit.dart';
import 'package:app/core/theme/cubit/theme_state.dart';
import 'package:app/core/theme/custom_color.dart';

import 'l10n/app_localizations.dart';

GlobalKey<NavigatorState> appMainNavigatorKey = GlobalKey<NavigatorState>();
class BeautyApp extends StatelessWidget {
  const BeautyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit()..toggleTheme(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        buildWhen: (_,state){
          return state is ThemeState;
        },
        builder: (context, state) {
          return MaterialApp(
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
            home: const MyHomePage(title: 'Beauty App'),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

/* <<<<<<<<<<<<<<  ✨ Windsurf Command ⭐ >>>>>>>>>>>>>>>> */
  /// Increment the counter by one.
  ///
  /// This method is called when the user presses the floating action button.
  /// It increments the [_counter] field by one and triggers a rebuild of the
  /// widget tree by calling `setState`.
/* <<<<<<<<<<  e5451816-2b3f-44b9-b9c0-cae563351ee7  >>>>>>>>>>> */
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String _getThemeModeName(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.system:
        return AppLocalizations.of(context)!.systemDefault;
      case ThemeMode.light:
        return AppLocalizations.of(context)!.lightMode;
      case ThemeMode.dark:
        return AppLocalizations.of(context)!.darkMode;
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<ThemeCubit>();
    final themeState = themeCubit.state;
    
    return Directionality(
      textDirection: themeState.locale.languageCode == 'ar' 
          ? TextDirection.rtl 
          : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: CustomColor.bigContainerColors.color,
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            // Language Toggle Button
            IconButton(
              icon: const Icon(Icons.language),
              onPressed: () => themeCubit.toggleLocale(),
              tooltip: AppLocalizations.of(context)!.testing,
            ),
            // Theme Toggle Button
            IconButton(
              icon: Icon(themeState.themeMode == ThemeMode.dark 
                  ? Icons.light_mode 
                  : Icons.dark_mode),
              onPressed: () => themeCubit.toggleTheme(),
              tooltip: _getThemeModeName(themeState.themeMode),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.welcome,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              '${AppLocalizations.of(context)!.counter}: $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 40),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(""),
                    const SizedBox(height: 10),
                    ListTile(
                      leading: const Icon(Icons.language),
                      title: Text(AppLocalizations.of(context)!.language),
                      trailing: Text(
                        themeState.locale.languageCode == 'ar' 
                            ? AppLocalizations.of(context)!.arabic 
                            : AppLocalizations.of(context)!.english,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.brightness_6),
                      title: Text(AppLocalizations.of(context)!.theme),
                      trailing: Text(_getThemeModeName(themeState.themeMode)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    ),);
  }
}
