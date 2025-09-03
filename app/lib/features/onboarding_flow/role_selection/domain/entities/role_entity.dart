/******************** FILE INFO ********************/
/// FILE NAME: role_entity.dart
/// Purpose: Entity model for role selection
/// Author: Fairouz Khalaf
/// Date: 2/9/2025
library;

import 'package:app/core/enums/user_enum.dart';

class RoleEntity {
  final UserRole role;
  final String title;
  final String subTitle;
  final String svgAsset;

  const RoleEntity({
    required this.role,
    required this.title,
    required this.subTitle,
    required this.svgAsset,
  });
}
