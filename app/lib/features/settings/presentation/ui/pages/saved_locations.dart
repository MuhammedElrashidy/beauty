import 'package:app/core/extensions/navigation_extensions.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/features/settings/presentation/ui/widget/add_new_location_button.dart';
import 'package:app/features/settings/presentation/ui/widget/delete_location_dialog.dart';
import 'package:app/features/settings/presentation/ui/widget/saved_location_item.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedLocations extends StatelessWidget {
  const SavedLocations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              CustomAppBar(title: AppLocalizations.of(context)!.savedLocations),
              SizedBox(height: 32.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SavedLocationItem(
                            title: 'My Home1',
                            onEdit:
                                () => context.navigateTo(
                                  Routes.editLocation,
                                  arguments: {},
                                ),
                            onRemove:
                                () => _showDeleteLocationDialog(
                                  context,
                                  'My Home1',
                                ),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Expanded(
                          child: SavedLocationItem(
                            title: 'My Home2',
                            onEdit:
                                () => context.navigateTo(
                                  Routes.editLocation,
                                  arguments: {},
                                ),
                            onRemove:
                                () => _showDeleteLocationDialog(
                                  context,
                                  'My Home2',
                                ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18.h),
                    AddNewLocationButton(
                      onTap:
                          () => context.navigateTo(
                            Routes.addNewLocation,
                            arguments: {},
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDeleteLocationDialog(BuildContext context, String locationName) {
    DeleteLocationDialog.show(
      context: context,
      onDelete: () {
        // TODO: Implement actual delete logic here
        print('Deleting location: $locationName');
        Navigator.of(context).pop(); // Close the dialog
        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Location "$locationName" deleted successfully'),
            backgroundColor: Colors.green,
          ),
        );
      },
      onCancel: () {
        Navigator.of(context).pop(); // Close the dialog
      },
    );
  }
}
