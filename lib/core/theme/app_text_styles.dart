import 'package:flutter/material.dart';

import 'package:ticket_platform_mobile/core/constants/app_constants.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';

class AppTextStyles {
  const AppTextStyles._();

  static const heading1 = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 32,
    color: AppColors.textPrimary,
  );

  static const heading2 = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: AppColors.textPrimary,
  );

  static const body1 = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.textPrimary,
  );

  static const body2 = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColors.textSecondary,
  );
}

