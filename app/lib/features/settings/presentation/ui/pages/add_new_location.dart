import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/app_text_form.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/core/widgets/svg_icon.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewLocation extends StatefulWidget {
  const AddNewLocation({super.key});

  @override
  State<AddNewLocation> createState() => _AddNewLocationState();
}

class _AddNewLocationState extends State<AddNewLocation> {
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
              CustomAppBar(title: AppLocalizations.of(context)!.addNewLocation),
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
                  svgImage: AppAssets.faceAdd,
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
                  final result = await Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SelectOnMapPage()),
                  );
                  if (!mounted) return;
                  if (result is Map<String, double>) {
                    setState(() {
                      _selectedLatLng = result;
                      _mapController.text =
                          '${result['lat']!.toStringAsFixed(6)}, ${result['lng']!.toStringAsFixed(6)}';
                    });
                  }
                },
              ),
              const Spacer(),
              AppButton(
                title: 'Confirm Location',
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

// TO
/// Lightweight map selection placeholder.
/// Replace with a real map implementation (e.g., google_maps_flutter) later.
class SelectOnMapPage extends StatefulWidget {
  const SelectOnMapPage({super.key});

  @override
  State<SelectOnMapPage> createState() => _SelectOnMapPageState();
}

class _SelectOnMapPageState extends State<SelectOnMapPage> {
  // Simulated coordinates; in a real map, update on tap/drag.
  double _lat = 30.0444; // Cairo
  double _lng = 31.2357;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select on Map')),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onPanUpdate: (d) {
                setState(() {
                  _lat += d.delta.dy * -0.0001;
                  _lng += d.delta.dx * 0.0001;
                });
              },
              child: Container(
                color: Colors.grey.shade300,
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.location_on, size: 48, color: Colors.red),
                    SizedBox(height: 8.h),
                    Text(
                      '${_lat.toStringAsFixed(6)}, ${_lng.toStringAsFixed(6)}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8.h),
                    const Text('Drag anywhere to change coordinates (demo)'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.w),
            child: SizedBox(
              width: double.infinity,
              height: 44.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop({'lat': _lat, 'lng': _lng});
                },
                child: const Text('Confirm'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
