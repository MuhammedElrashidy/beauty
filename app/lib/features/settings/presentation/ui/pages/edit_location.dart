import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/app_text_form.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditLocation extends StatefulWidget {
  const EditLocation({super.key});

  @override
  State<EditLocation> createState() => _EditLocationState();
}

class _EditLocationState extends State<EditLocation> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mapController = TextEditingController();

  Map<String, double>? _selectedLatLng;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              CustomAppBar(title: AppLocalizations.of(context)!.editLocation),
              SizedBox(height: 24.h),
              // Centered circular icon button (decorative)
              Container(
                width: 44.w,
                height: 44.h,

                decoration: BoxDecoration(
                  color: CustomColor.mainPinkColor.color,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: SvgIcon(
                  svgImage: AppAssets.home,
                  width: 24.w,
                  height: 24.h,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 24.h),
              // Location name field
              AppTextField(
                controller: _nameController,
                hint: 'Location Name',
                fillColor: CustomColor.offWhiteColor.color,
                borderRadius: 8,
                prefixConstraints: BoxConstraints(minWidth: 40.w),
                prefix: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SvgIcon(
                    svgImage: AppAssets.location,
                    width: 24.w,
                    height: 24.h,
                    color: CustomColor.mainPinkColor.color,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              // Choose on map field (read-only)
              AppTextField(
                controller: _mapController,
                hint: 'Choose on Map',
                isClickable: true,
                fillColor: CustomColor.offWhiteColor.color,
                borderRadius: 8,
                prefixConstraints: BoxConstraints(minWidth: 40.w),

                prefix: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SvgIcon(
                    svgImage: AppAssets.outlineMap,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                suffixConstraints: BoxConstraints(minWidth: 40.w),
                suffix: Padding(
                  padding: EdgeInsetsDirectional.only(end: 16.w),
                  child: SvgIcon(
                    svgImage: AppAssets.map,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                onTap: () async {
                  // final result = await Navigator.of(context).push(
                  // MaterialPageRoute(builder: (_) => const SelectOnMapPage()),
                  // );
                  if (!mounted) return;
                  // if (result is Map<String, double>) {
                  //   setState(() {
                  //     _selectedLatLng = result;
                  //     _mapController.text =
                  //         '${result['lat']!.toStringAsFixed(6)}, ${result['lng']!.toStringAsFixed(6)}';
                  //   });
                  // }
                },
              ),
              const Spacer(),
              AppButton(
                title: AppLocalizations.of(context)!.save,
                onTap: () {
                  // TODO: submit to backend or state
                  Navigator.of(context).pop({
                    'name': _nameController.text,
                    'latLng': _selectedLatLng,
                  });
                },
                backgroundColor: CustomColor.mainPinkColor.color,
              ),
              SizedBox(height: 48.h),
            ],
          ),
        ),
      ),
    );
  }
}
