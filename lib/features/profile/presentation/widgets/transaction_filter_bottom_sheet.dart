import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

/// 거래 내역 필터 선택을 위한 BottomSheet
/// Material Design 3 및 최신 모바일 트렌드를 따름
class TransactionFilterBottomSheet extends StatefulWidget {
  final String? selectedStatus;
  final String selectedPeriod;
  final String selectedSort;

  const TransactionFilterBottomSheet({
    super.key,
    this.selectedStatus,
    required this.selectedPeriod,
    required this.selectedSort,
  });

  /// BottomSheet를 표시하고 결과를 반환
  /// 반환값: {status: String?, period: String, sortBy: String} 또는 null (취소)
  static Future<Map<String, dynamic>?> show(
    BuildContext context, {
    String? selectedStatus,
    required String selectedPeriod,
    required String selectedSort,
  }) {
    return showModalBottomSheet<Map<String, dynamic>>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => TransactionFilterBottomSheet(
        selectedStatus: selectedStatus,
        selectedPeriod: selectedPeriod,
        selectedSort: selectedSort,
      ),
    );
  }

  @override
  State<TransactionFilterBottomSheet> createState() =>
      _TransactionFilterBottomSheetState();
}

class _TransactionFilterBottomSheetState
    extends State<TransactionFilterBottomSheet> {
  late String? _selectedStatus;
  late String _selectedPeriod;
  late String _selectedSort;

  @override
  void initState() {
    super.initState();
    _selectedStatus = widget.selectedStatus;
    _selectedPeriod = widget.selectedPeriod;
    _selectedSort = widget.selectedSort;
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, 50 * (1 - value)),
          child: Opacity(opacity: value, child: child),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(AppRadius.xl),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 20,
              offset: const Offset(0, -4),
            ),
            BoxShadow(
              color: AppColors.cardShadowTint,
              blurRadius: 40,
              offset: const Offset(0, -8),
            ),
          ],
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 핸들 바
              _buildHandle(),
              // 헤더
              _buildHeader(),
              const Divider(height: 1, color: AppColors.border),
              // 필터 내용 (스크롤 가능)
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSection(title: '거래 상태', child: _buildStatusChips()),
                      const SizedBox(height: AppSpacing.xl),
                      _buildSection(title: '조회 기간', child: _buildPeriodChips()),
                      const SizedBox(height: AppSpacing.xl),
                      _buildSection(title: '정렬', child: _buildSortChips()),
                    ],
                  ),
                ),
              ),
              // 하단 버튼
              _buildBottomButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHandle() {
    return Container(
      margin: const EdgeInsets.only(top: AppSpacing.sm),
      width: 40,
      height: 4,
      decoration: BoxDecoration(
        color: AppColors.muted,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      child: Row(
        children: [
          Text(
            '필터',
            style: AppTextStyles.heading3.copyWith(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          TextButton(
            onPressed: _resetFilters,
            child: Text(
              '초기화',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 3,
              height: 16,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.primary, AppColors.primaryHover],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(width: AppSpacing.xs),
            Text(
              title,
              style: AppTextStyles.body1.copyWith(
                fontWeight: FontWeight.w700,
                letterSpacing: -0.2,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        child,
      ],
    );
  }

  Widget _buildStatusChips() {
    final statuses = [
      {'value': null, 'label': '전체'},
      {'value': 'reserved,pending_payment,paid', 'label': '진행중'},
      {'value': 'confirmed,completed', 'label': '완료'},
      {'value': 'cancelled,refunded', 'label': '취소/환불'},
    ];

    return Wrap(
      spacing: AppSpacing.sm,
      runSpacing: AppSpacing.sm,
      children: statuses.map((status) {
        final isSelected = _selectedStatus == status['value'];
        return FilterChip(
          label: Text(
            status['label'] as String,
            style: AppTextStyles.body2.copyWith(
              color: isSelected ? AppColors.background : AppColors.textPrimary,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
          selected: isSelected,
          onSelected: (_) {
            setState(() {
              _selectedStatus = status['value'];
            });
          },
          selectedColor: AppColors.primary,
          backgroundColor: AppColors.muted,
          checkmarkColor: AppColors.background,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.pill),
            side: BorderSide(
              color: isSelected ? AppColors.primary : AppColors.border,
              width: isSelected ? 1.5 : 1,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildPeriodChips() {
    final periods = {
      'all': '전체',
      '1w': '1주일',
      '1m': '1개월',
      '3m': '3개월',
      '6m': '6개월',
    };

    return Wrap(
      spacing: AppSpacing.sm,
      runSpacing: AppSpacing.sm,
      children: periods.entries.map((entry) {
        final isSelected = _selectedPeriod == entry.key;
        return FilterChip(
          label: Text(
            entry.value,
            style: AppTextStyles.body2.copyWith(
              color: isSelected ? AppColors.background : AppColors.textPrimary,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
          selected: isSelected,
          onSelected: (_) {
            setState(() {
              _selectedPeriod = entry.key;
            });
          },
          selectedColor: AppColors.primary,
          backgroundColor: AppColors.muted,
          checkmarkColor: AppColors.background,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.pill),
            side: BorderSide(
              color: isSelected ? AppColors.primary : AppColors.border,
              width: isSelected ? 1.5 : 1,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildSortChips() {
    final sorts = {'latest': '최신순', 'oldest': '오래된순'};

    return Wrap(
      spacing: AppSpacing.sm,
      runSpacing: AppSpacing.sm,
      children: sorts.entries.map((entry) {
        final isSelected = _selectedSort == entry.key;
        return FilterChip(
          label: Text(
            entry.value,
            style: AppTextStyles.body2.copyWith(
              color: isSelected ? AppColors.background : AppColors.textPrimary,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
          selected: isSelected,
          onSelected: (_) {
            setState(() {
              _selectedSort = entry.key;
            });
          },
          selectedColor: AppColors.primary,
          backgroundColor: AppColors.muted,
          checkmarkColor: AppColors.background,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.pill),
            side: BorderSide(
              color: isSelected ? AppColors.primary : AppColors.border,
              width: isSelected ? 1.5 : 1,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildBottomButtons() {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.border, width: 1)),
      ),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () => Navigator.of(context).pop(),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                side: const BorderSide(color: AppColors.border),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
              ),
              child: Text(
                '취소',
                style: AppTextStyles.body1.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            flex: 2,
            child: ElevatedButton(
              onPressed: _applyFilters,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
              ),
              child: Text(
                '적용',
                style: AppTextStyles.body1.copyWith(
                  color: AppColors.background,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _resetFilters() {
    setState(() {
      _selectedStatus = null;
      _selectedPeriod = 'all';
      _selectedSort = 'latest';
    });
  }

  void _applyFilters() {
    Navigator.of(context).pop({
      'status': _selectedStatus,
      'period': _selectedPeriod,
      'sortBy': _selectedSort,
    });
  }
}
