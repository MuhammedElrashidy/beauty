import 'package:app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Color? enabledColor, fillColor, hintColor, focusColor, controllerColor;
  final double? tPadding, hintSize, bPadding;
  final double? borderRadius;
  final TextInputType? type;
  final Function()? onTap;
  final dynamic Function(dynamic)? onFieldSubmitted;
  final Function(String)? onChanged;
  final bool? isPassword;
  final int? maxLine, hintMaxLine;
  final String? Function(String?)? validate;
  final String? hint;
  final Widget? prefix;
  final Widget? suffix;
  final BoxConstraints? prefixConstraints;
  final BoxConstraints? suffixConstraints;
  final Function()? suffixPressed;
  final bool? isClickable;
  final bool? autocorrect, isFill;
  final TextStyle? textStyle;
  final FocusNode? focusNode;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final bool? enabled;
  final Function()? onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;
  final String? label; // Added label property

  const AppTextField({
    super.key,
    this.borderRadius,
    this.maxLine,
    this.textAlign,
    this.controller,
    this.type,
    this.focusNode,
    this.onChanged,
    this.onFieldSubmitted,
    this.onTap,
    this.textStyle,
    this.isPassword,
    this.validate,
    this.hint,
    this.prefix,
    this.suffix,
    this.prefixConstraints,
    this.suffixConstraints,
    this.suffixPressed,
    this.isClickable,
    this.autocorrect,
    this.focusColor,
    this.enabledColor,
    this.tPadding,
    this.enabled,
    this.isFill,
    this.inputFormatters,
    this.fillColor,
    this.hintColor,
    this.hintSize,
    this.bPadding,
    this.onEditingComplete,
    this.controllerColor,
    this.hintMaxLine,
    this.fontWeight,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final bool obscured = isPassword == true;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          onEditingComplete: onEditingComplete,
          cursorColor: AppTheme.primarySelectedColor,

          style: TextStyle(
            color: controllerColor ?? AppTheme.primarySelectedColor,
            fontSize: 14.sp,
            fontWeight: fontWeight ?? FontWeight.w400,
          ),
          textAlign: textAlign ?? TextAlign.start,
          decoration: InputDecoration(
            errorMaxLines: 5,
            filled: isFill ?? true,
            fillColor: fillColor ?? AppTheme.darkWhite,
            errorStyle: TextStyle(
              fontSize: 10.sp,
              color: AppTheme.primarySelectedColor,
            ),
            contentPadding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: tPadding ?? 8.h,
              bottom: bPadding ?? 8.h,
            ),
            focusedBorder:
                (enabled == true)
                    ? UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: focusColor ?? AppTheme.primarySelectedColor,
                      ),
                    )
                    : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
                      borderSide: BorderSide(
                        color: focusColor ?? AppTheme.primarySelectedColor,
                      ),
                    ),
            enabledBorder:
                (enabled == true)
                    ? UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: enabledColor ?? AppTheme.darkWhite,
                      ),
                    )
                    : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
                      borderSide: BorderSide(
                        color: enabledColor ?? AppTheme.darkWhite,
                      ),
                    ),
            border:
                (enabled == true)
                    ? const UnderlineInputBorder(borderSide: BorderSide())
                    : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
                      borderSide: const BorderSide(),
                    ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
              borderSide: BorderSide(color: AppTheme.darkWhite),
            ),
            hintText: hint,
            hintMaxLines: hintMaxLine ?? 1,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: hintSize ?? 14.sp,
              color: hintColor ?? AppTheme.hintTextColor,
            ),
            prefixIcon: prefix,
            prefixIconConstraints: prefixConstraints,
            suffixIcon: suffix,
            suffixIconConstraints: suffixConstraints,
          ),
          controller: controller,
          keyboardType: type,
          obscureText: isPassword ?? false,
          enabled: isClickable ?? true,
          focusNode: focusNode,
          onTap: onTap,
          validator: validate,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
          maxLines: obscured ? 1 : (maxLine ?? 1),
          inputFormatters: inputFormatters,
        ),
      ],
    );
  }
}
