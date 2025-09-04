import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/theme/custom_color.dart';
import 'package:app/core/widgets/app_button.dart';
import 'package:app/core/widgets/app_text_form.dart';
import 'package:app/core/widgets/custom_app_bar.dart' show CustomAppBar;
import 'package:app/features/settings/presentation/ui/widget/circle_profile_image.dart';
import 'package:app/features/settings/presentation/ui/widget/profile_field_widget.dart';
import 'package:app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditMyProfile extends StatelessWidget {
  const EditMyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              CustomAppBar(title: AppLocalizations.of(context)!.editMyProfile),
              SizedBox(height: 19.h),
              CircleProfileImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=860&auto=format&fit=crop',
                ),
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: SingleChildScrollView(
              
                  child: Column(
                    spacing: 12.h,
                    children: [
                      ProfileFieldWidget(
                        icon: AppAssets.person,
                        label: 'First Name:',
                        value: 'Basant',
                      ),
                      ProfileFieldWidget(
                        icon: AppAssets.person,
                        label: 'Middle Name:',
                        value: 'Ahmed',
                      ),
                      ProfileFieldWidget(
                        icon: AppAssets.person,
                        label: 'Last Name:',
                        value: 'Ali',
                      ),
                      ProfileFieldWidget(
                        icon: AppAssets.email,
                        label: 'Email:',
                        value: 'Basant@gmail.com',
                      ),
                      ProfileFieldWidget(
                        icon: AppAssets.phone,

                        value: '',
                        isPhoneField: true,
                        countryCode: '+20',
                        phoneNumber: '1250879633',
                        flagAsset: 'assets/icons/eg.svg',
                      ),

                      ProfileFieldWidget(
                        icon: AppAssets.calendar,
                        label: 'Birthday:',
                        value: '7/8/1998',
                        color: CustomColor.mainPinkColor.lightColor,
                      ),
                      ProfileFieldWidget(
                        icon: AppAssets.gender,
                        label: 'Gender:',
                        value: 'Male',
                        color: CustomColor.mainPinkColor.lightColor,
                      ),

                      ProfileFieldWidget(
                        icon: AppAssets.natoionality,
                        label: 'Nationality:',
                        value: 'Egyptian',
                        color: CustomColor.mainPinkColor.lightColor,
                      ),

                      ProfileFieldWidget(
                        icon: AppAssets.country,
                        label: 'Country:',
                        value: 'Egypt',
                        color: CustomColor.mainPinkColor.lightColor,
                      ),

                      ProfileFieldWidget(
                        icon: AppAssets.location,
                        label: 'Location:',
                        value: 'Cairo, Egypt',
                        color: CustomColor.mainPinkColor.lightColor,
                      ),
                      SizedBox(height: 76.h),
                      AppButton(
                        title: 'Save',
                        onTap: () {},
                        backgroundColor: CustomColor.mainPinkColor.color,
                      ),
                      SizedBox(height: 40.h),
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
}
