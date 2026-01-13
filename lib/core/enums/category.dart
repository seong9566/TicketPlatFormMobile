import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';

enum Category {
  concert(
    'concert',
    '콘서트',
    1,
    AppColors.categoryConcert,
    AppColors.categoryConcertBg,
  ),
  sports(
    'sports',
    '스포츠',
    2,
    AppColors.categorySports,
    AppColors.categorySportsBg,
  ),
  musical(
    'musical',
    '뮤지컬/연극',
    3,
    AppColors.categoryMusical,
    AppColors.categoryMusicalBg,
  ),
  classic(
    'classic',
    '클래식/무용',
    4,
    AppColors.categoryExhibition,
    AppColors.categoryExhibitionBg,
  ),
  etc(
    'etc',
    '기타',
    5,
    AppColors.categoryExhibition,
    AppColors.categoryExhibitionBg,
  );

  final String code;
  final String label;
  final int categoryId;
  final Color color;
  final Color backgroundColor;
  const Category(
    this.code,
    this.label,
    this.categoryId,
    this.color,
    this.backgroundColor,
  );

  static Category fromCode(String code) {
    return Category.values.firstWhere(
      (e) => e.code == code,
      orElse: () => Category.etc,
    );
  }

  static Category fromLabel(String label) {
    return Category.values.firstWhere(
      (e) => e.label == label,
      orElse: () => Category.etc,
    );
  }

  static Category fromId(int id) {
    return Category.values.firstWhere(
      (e) => e.categoryId == id,
      orElse: () => Category.etc,
    );
  }
}
