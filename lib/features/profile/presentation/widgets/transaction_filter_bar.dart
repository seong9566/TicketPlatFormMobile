import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class TransactionFilterBar extends StatelessWidget {
  final String? selectedStatus;
  final String selectedPeriod;
  final String selectedSort;
  final Function(String?) onStatusChanged;
  final Function(String) onPeriodChanged;
  final Function(String) onSortChanged;

  const TransactionFilterBar({
    super.key,
    this.selectedStatus,
    required this.selectedPeriod,
    required this.selectedSort,
    required this.onStatusChanged,
    required this.onPeriodChanged,
    required this.onSortChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 상태 필터
          _buildSection(title: '거래 상태', child: _buildStatusChips()),
          const SizedBox(height: AppSpacing.md),
          // 기간/정렬
          Row(
            children: [
              Expanded(
                child: _buildSection(
                  title: '기간',
                  child: _buildPeriodDropdown(context),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: _buildSection(
                  title: '정렬',
                  child: _buildSortDropdown(context),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.caption.copyWith(
            color: AppColors.textSecondary,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
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
      spacing: AppSpacing.xs,
      runSpacing: AppSpacing.xs,
      children: statuses.map((status) {
        final isSelected = selectedStatus == status['value'];
        return FilterChip(
          label: Text(
            status['label'] as String,
            style: AppTextStyles.caption.copyWith(
              color: isSelected ? AppColors.background : AppColors.textPrimary,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          selected: isSelected,
          onSelected: (_) => onStatusChanged(status['value'] as String?),
          selectedColor: AppColors.primary,
          backgroundColor: AppColors.muted,
          checkmarkColor: AppColors.background,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.sm,
            vertical: AppSpacing.xs,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: isSelected ? AppColors.primary : AppColors.border,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildPeriodDropdown(BuildContext context) {
    final periods = {
      'all': '전체',
      '1w': '1주일',
      '1m': '1개월',
      '3m': '3개월',
      '6m': '6개월',
    };

    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedPeriod,
          isExpanded: true,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
          style: AppTextStyles.body2.copyWith(color: AppColors.textPrimary),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: AppColors.textSecondary,
          ),
          items: periods.entries.map((entry) {
            return DropdownMenuItem(value: entry.key, child: Text(entry.value));
          }).toList(),
          onChanged: (value) {
            if (value != null) onPeriodChanged(value);
          },
        ),
      ),
    );
  }

  Widget _buildSortDropdown(BuildContext context) {
    final sorts = {'latest': '최신순', 'oldest': '오래된순'};

    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedSort,
          isExpanded: true,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
          style: AppTextStyles.body2.copyWith(color: AppColors.textPrimary),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: AppColors.textSecondary,
          ),
          items: sorts.entries.map((entry) {
            return DropdownMenuItem(value: entry.key, child: Text(entry.value));
          }).toList(),
          onChanged: (value) {
            if (value != null) onSortChanged(value);
          },
        ),
      ),
    );
  }
}
