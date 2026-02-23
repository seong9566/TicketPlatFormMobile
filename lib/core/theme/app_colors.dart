import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  // Primary - 민트 (톤다운)
  static const primary = Color(0xFF00B874);
  static const primaryForeground = Color(0xFFFFFFFF);
  static const primaryHover = Color(0xFF00A867);
  static const primaryLight = Color(0xFFDFF7EF);

  // Secondary - 다크 네이비
  static const secondary = Color(0xFF1E293B);
  static const secondaryForeground = Color(0xFFFFFFFF);

  // Accent
  static const accent = Color(0xFF00B874);
  static const accentForeground = Color(0xFF1E293B);

  // Text
  static const textPrimary = Color(0xFF1E293B);
  static const textSecondary = Color(0xFF64748B);
  static const textTertiary = Color(0xFF94A3B8);

  // Surfaces
  static const background = Color(0xFFFFFFFF);
  static const card = Color(0xFFFFFFFF);
  static const muted = Color(0xFFF1F5F9);
  static const inputBackground = Color(0xFFF4F4F5);

  // Status
  static const success = Color(0xFF00B874);
  static const warning = Color(0xFFF59E0B);
  static const info = Color(0xFF3B82F6);
  static const destructive = Color(0xFFEF4444);

  // Badges
  static const badgeSoldOutBackground = Color(0xFFFFEBEB);
  static const badgeSoldOutText = Color(0xFFFF5252);
  static const badgeHotBackground = Color(0xFFE8FCF5);
  static const badgeWaitingBackground = Color(0xFFFFE082); // 입금 대기 배경
  static const badgeWaitingText = Color(0xFF6F4C00); // 입금 대기 텍스트

  // Borders
  static const border = Color(0xFFE2E8F0);
  static const borderHover = Color(0xFFCBD5E1);

  // Categories
  static const categoryConcert = Color(0xFF9333EA);
  static const categoryConcertBg = Color(0xFFF3E8FF);
  static const categoryMusical = Color(0xFFE11D48);
  static const categoryMusicalBg = Color(0xFFFFF1F2);
  static const categorySports = Color(0xFF2563EB);
  static const categorySportsBg = Color(0xFFEFF6FF);
  static const categoryExhibition = Color(0xFFEA580C);
  static const categoryExhibitionBg = Color(0xFFFFF7ED);

  // Misc
  static const transparent = Color(0x00000000);
  static const scaffoldBackground = Color(0xFFF8F8F8);

  // Enhanced backgrounds for transactions
  static const scaffoldGradientStart = Color(0xFFFAFAF8);
  static const scaffoldGradientEnd = Color(0xFFF5F5F3);
  static const cardShadowTint = Color(0x0A00B874); // primary with 4% opacity

  // Chat
  static const chatHighlightBackground = Color(0xFFE8F5E9);
  static const chatAvatarDefault = Color(0xFFE6C39C);
  static const chatEmptyIconBackground = Color(0xFF9E9E9E);

  // Ticket
  static const ticketThumbnailBackground = Color(0xFF111827);
  static const deadlineBadgeDday = Color(0xFFEF4444);
  static const deadlineBadgeD1 = Color(0xFFF97316);
  static const deadlineBadgeD2 = Color(0xFFEAB308);
  static const deadlineBadgeD3 = Color(0xFF3B82F6);

  // Disabled
  static const disabled = Color(0xFFD1D5DB);

  // Grayscale
  static const gray50 = Color(0xFFF9FAFB);
  static const gray100 = Color(0xFFF3F4F6);

  // Aliases for compatibility
  static const error = destructive;
  static const textDisabled = disabled;
}
