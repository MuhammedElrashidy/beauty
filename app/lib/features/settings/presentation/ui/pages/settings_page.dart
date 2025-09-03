/// ************************* FILE INFO *************************** ///
/// File Name: settings_page.dart
/// Purpose: Contains the settings page.
/// Author: Mohand Adel
/// Created At: 2/9/2025

import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/extensions/navigation_extensions.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/theme/cubit/theme_cubit.dart';
import 'package:app/core/theme/cubit/theme_state.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:app/features/settings/presentation/ui/widget/settings_language_item.dart';
import 'package:app/features/settings/presentation/ui/widget/settings_navigation_item.dart';
import 'package:app/features/settings/presentation/ui/widget/settings_switch_item.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widget/circle_profile_image.dart';
import '../widget/settings_account_switch_button.dart';
import '../widget/logout_dialog.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBar(title: AppLocalizations.of(context)!.settings),
                SizedBox(height: 19.h),
                // Profile Section
                Center(
                  child: Column(
                    children: [
                      CircleProfileImage(
                        image: const NetworkImage(
                          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=860&auto=format&fit=crop',
                        ),
                        size: 96,
                        onEdit: () {
                          // TODO: open image picker
                        },
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'Basant Ahmed',
                        style: AppTextStyles.font20BlackW500TextStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                SettingsAccountSwitchButton(
                  onSelectionChanged: (isSettingsSelected) {
                    // TODO: Handle selection change
                  },
                ),
                SizedBox(height: 16.h),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: CustomColor.offWhiteColor.color,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      SettingsSwitchItem(
                        title: AppLocalizations.of(context)!.biometric,
                        value: true,
                        onChanged: (value) {
                          // TODO: Handle value change
                        },
                      ),
                      SizedBox(height: 24.h),
                      SettingsSwitchItem(
                        title: AppLocalizations.of(context)!.animation,
                        value: true,
                        onChanged: (value) {
                          // TODO: Handle value change
                        },
                      ),
                      SizedBox(height: 24.h),
                      BlocBuilder<ThemeCubit, ThemeState>(
                        builder: (context, state) {
                          return SettingsSwitchItem(
                            title: AppLocalizations.of(context)!.darkMode,
                            value: state.themeMode == ThemeMode.dark,
                            onChanged: (value) {
                              context.read<ThemeCubit>().setTheme(
                                value ? ThemeMode.dark : ThemeMode.light,
                              );
                            },
                          );
                        },
                      ),
                      SizedBox(height: 24.h),
                      SettingsSwitchItem(
                        title: AppLocalizations.of(context)!.notifications,
                        value: true,
                        onChanged: (value) {
                          // TODO: Handle value change
                        },
                      ),
                      SizedBox(height: 24.h),
                      BlocBuilder<ThemeCubit, ThemeState>(
                        builder: (context, state) {
                          return SettingsLanguageItem(
                            title: AppLocalizations.of(context)!.language,
                            isEnglishSelected:
                                state.locale.languageCode == 'en',
                            onLanguageChanged: (value) {
                              context.read<ThemeCubit>().setLocale(
                                value ? const Locale('en') : const Locale('ar'),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: CustomColor.offWhiteColor.color,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: Column(
                      children: [
                        SettingsNavigationItem(
                          title:
                              AppLocalizations.of(context)!.commentAndFeedback,
                          onTap: () {
                            context.navigateTo(
                              Routes.commentAndFeedback,
                              arguments: {},
                            );
                          },
                        ),
                        SizedBox(height: 24.h),
                        SettingsNavigationItem(
                          title: AppLocalizations.of(context)!.aboutThisApp,
                          onTap: () {
                            context.navigateTo(
                              Routes.aboutThisApp,
                              arguments: {},
                            );
                          },
                        ),
                        SizedBox(height: 24.h),
                        SettingsNavigationItem(
                          title: AppLocalizations.of(context)!.privacyStatement,
                          onTap: () {
                            context.navigateTo(
                              Routes.privacyStatement,
                              arguments: {},
                            );
                          },
                        ),
                        SizedBox(height: 24.h),
                        SettingsNavigationItem(
                          title:
                              AppLocalizations.of(context)!.termsAndConditions,
                          onTap: () {
                            context.navigateTo(
                              Routes.termsAndConditions,
                              arguments: {},
                            );
                          },
                        ),
                        SizedBox(height: 14.h),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => const LogoutDialog(),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: CustomColor.offWhiteColor.color,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 12.h,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppAssets.logout,
                            width: 24.5.sp,
                            height: 24.5.sp,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            AppLocalizations.of(context)!.logout,
                            style: AppTextStyles.font14BlackW400TextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
