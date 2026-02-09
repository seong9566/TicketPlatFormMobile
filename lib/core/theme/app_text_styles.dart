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
  static const heading3 = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: AppColors.textPrimary,
  );

  static const caption = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColors.textSecondary,
  );

  // Transaction-specific styles
  static const priceDisplay = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontWeight: FontWeight.w800,
    fontSize: 18,
    letterSpacing: -0.5,
    color: AppColors.textPrimary,
  );

  static const ticketTitle = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 15,
    height: 1.3,
    color: AppColors.textPrimary,
  );
}
