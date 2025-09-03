/******************** FILE INFO ********************/
/// FILE NAME: role_selection_page.dart
/// Purpose: Screen for selecting role
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

import 'package:app/core/enums/user_enum.dart';
import 'package:app/core/extensions/navigation_extensions.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/features/onboarding_flow/role_selection/presentation/ui/widgets/role_card.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoleSelectionPage extends StatefulWidget {
  const RoleSelectionPage({super.key});

  @override
  State<RoleSelectionPage> createState() => _RoleSelectionPageState();
}

class _RoleSelectionPageState extends State<RoleSelectionPage> {
  UserRole? selected;

  late final List<UserRole> roles = UserRole.values;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: locale.createAccount),
              76.verticalSpace,
              ...roles.map(
                (role) => Padding(
                  padding: EdgeInsets.only(bottom: 32.h),
                  child: RoleCard(
                    role: role,
                    isSelected: selected == role,
                    onTap: () => setState(() => selected = role),
                  ),
                ),
              ),
              const Spacer(),
              AppButton(
                onTap:
                    selected == null
                        ? null
                        : () {
                          context.navigateTo(
                            Routes.onboardingScreen,
                            arguments: selected,
                          );
                        },
                borderRadius: 10.r,
                width: double.infinity,
                height: 40.h,
                buttonColor: AppTheme.primarySelectedColor,
                textStyle: AppTextStyles.font16WhiteW500TextStyle,
                title: locale.next,
              ),
              96.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
