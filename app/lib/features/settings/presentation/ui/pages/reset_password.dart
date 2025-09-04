import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/extensions/navigation_extensions.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/app_text_form.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:app/features/settings/presentation/ui/widget/password_requirement_widget.dart';
import 'package:app/features/settings/presentation/ui/widget/terms_checkbox_widget.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _acceptTerms = false;

  // Password requirement states
  bool _hasMinLength = false;
  bool _hasUppercase = false;
  bool _hasNumber = false;
  bool _hasSpecialChar = false;
  bool _noSpacing = false;

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(_validatePassword);
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _validatePassword() {
    final password = _passwordController.text;
    setState(() {
      _hasMinLength = password.length >= 8;
      _hasUppercase = password.contains(RegExp(r'[A-Z]'));
      _hasNumber = password.contains(RegExp(r'[0-9]'));
      _hasSpecialChar = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
      _noSpacing = !password.contains(' ');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              CustomAppBar(title: AppLocalizations.of(context)!.resetPassword),
              SizedBox(height: 80.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Password Input Fields
                      _buildPasswordField(
                        controller: _passwordController,
                        hint: 'Create Password',
                        isVisible: _isPasswordVisible,
                        onToggleVisibility:
                            () => setState(
                              () => _isPasswordVisible = !_isPasswordVisible,
                            ),
                      ),
                      SizedBox(height: 16.h),
                      _buildPasswordField(
                        controller: _confirmPasswordController,
                        hint: 'Confirm Password',
                        isVisible: _isConfirmPasswordVisible,
                        onToggleVisibility:
                            () => setState(
                              () =>
                                  _isConfirmPasswordVisible =
                                      !_isConfirmPasswordVisible,
                            ),
                      ),
                      SizedBox(height: 16.h),

                      // Password Requirements using reusable widget
                      PasswordRequirementsList(
                        requirements: [
                          PasswordRequirement(
                            text: 'Password must be at least 8 characters.',
                            isMet: _hasMinLength,
                          ),
                          PasswordRequirement(
                            text:
                                'Password must contains at least one uppercase letter.',
                            isMet: _hasUppercase,
                          ),
                          PasswordRequirement(
                            text: 'Password must contains at least one number.',
                            isMet: _hasNumber,
                          ),
                          PasswordRequirement(
                            text:
                                'Password must contains at least one special characters.',
                            isMet: _hasSpecialChar,
                          ),
                          PasswordRequirement(
                            text: 'Password must not contains Spacing.',
                            isMet: _noSpacing,
                          ),
                        ],
                      ),
                      SizedBox(height: 180.h),

                      // Terms and Conditions using reusable widget
                      TermsCheckboxWidget(
                        isAccepted: _acceptTerms,
                        onTap:
                            () => context.navigateTo(
                              Routes.termsAndConditions,
                              arguments: {},
                            ),
                        onChanged:
                            (value) => setState(() => _acceptTerms = value),
                      ),
                      SizedBox(height: 24.h),

                      // Save Button
                      AppButton(
                        title: 'Save',
                        onTap: _canSave() ? _onSave : null,
                        backgroundColor: CustomColor.mainPinkColor.color,
                      ),
                      SizedBox(height: 48.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField({
    required TextEditingController controller,
    required String hint,
    required bool isVisible,
    required VoidCallback onToggleVisibility,
  }) {
    return AppTextField(
      controller: controller,
      hint: hint,
      isPassword: !isVisible,
      prefix: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SvgIcon(svgImage: AppAssets.lock, width: 24, height: 24),
      ),
      prefixConstraints: const BoxConstraints(minWidth: 24, minHeight: 24),
      suffix: GestureDetector(
        onTap: onToggleVisibility,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SvgIcon(svgImage: AppAssets.eye, width: 24, height: 24),
        ),
      ),
      suffixConstraints: const BoxConstraints(minWidth: 24, minHeight: 24),
      fillColor: CustomColor.offWhiteColor.color,
      borderRadius: 8,
    );
  }

  bool _canSave() {
    return _hasMinLength &&
        _hasUppercase &&
        _hasNumber &&
        _hasSpecialChar &&
        _noSpacing &&
        _acceptTerms &&
        _passwordController.text.isNotEmpty &&
        _confirmPasswordController.text.isNotEmpty &&
        _passwordController.text == _confirmPasswordController.text;
  }

  void _onSave() {
    // Handle save logic
    print('Password reset successful!');
    Navigator.pop(context);
  }
}
