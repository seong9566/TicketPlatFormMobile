import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/settlement/domain/entities/settlement_entity.dart';
import 'package:ticket_platform_mobile/features/settlement/presentation/viewmodels/settlement_detail_viewmodel.dart';
import 'package:ticket_platform_mobile/features/settlement/presentation/widgets/settlement_status_badge.dart';

class SettlementDetailView extends ConsumerWidget {
  final int settlementId;

  const SettlementDetailView({super.key, required this.settlementId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(
      settlementDetailViewModelProvider(settlementId),
    );

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(title: const Text('정산 상세')),
      body: stateAsync.when(
        data: (detail) => _DetailContent(
          detail: detail,
          onRefresh: () => ref
              .read(settlementDetailViewModelProvider(settlementId).notifier)
              .refresh(),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline, size: 48, color: AppColors.error),
                const SizedBox(height: AppSpacing.md),
                Text(
                  '정보를 불러오지 못했습니다.',
                  style: AppTextStyles.body1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  '$error',
                  style: AppTextStyles.caption,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSpacing.lg),
                ElevatedButton.icon(
                  onPressed: () => ref
                      .read(
                        settlementDetailViewModelProvider(
                          settlementId,
                        ).notifier,
                      )
                      .refresh(),
                  icon: const Icon(Icons.refresh),
                  label: const Text('다시 시도'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DetailContent extends StatelessWidget {
  final SettlementDetailEntity detail;
  final VoidCallback onRefresh;

  const _DetailContent({required this.detail, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      children: [
        // Top section: status badge + status name
        _StatusSection(detail: detail),
        const SizedBox(height: AppSpacing.md),

        // Transaction info section
        _InfoCard(
          title: '거래 정보',
          children: [
            _InfoRow(label: '공연명', value: detail.eventTitle ?? '-'),
            _InfoRow(label: '구매자', value: detail.buyerNickname ?? '-'),
            _InfoRow(label: '거래 번호', value: '#${detail.transactionId}'),
          ],
        ),
        const SizedBox(height: AppSpacing.md),

        // Settlement amount section
        _AmountCard(detail: detail),
        const SizedBox(height: AppSpacing.md),

        // Schedule section
        _InfoCard(
          title: '정산 일정',
          children: [
            _InfoRow(
              label: '정산 예정일',
              value: DateFormatUtil.formatCompactDate(detail.scheduledAt),
            ),
            _InfoRow(
              label: '완료일',
              value: detail.processedAt != null
                  ? DateFormatUtil.formatCompactDate(detail.processedAt!)
                  : '-',
            ),
          ],
        ),

        // Failed info section (only if statusCode == 'failed')
        if (detail.statusCode == 'failed') ...[
          const SizedBox(height: AppSpacing.md),
          _InfoCard(
            title: '실패 정보',
            children: [
              _InfoRow(label: '실패 사유', value: detail.failureReason ?? '-'),
              _InfoRow(label: '재시도 횟수', value: '${detail.retryCount ?? 0}회'),
            ],
          ),
        ],

        const SizedBox(height: AppSpacing.xl),
      ],
    );
  }
}

class _StatusSection extends StatelessWidget {
  final SettlementDetailEntity detail;

  const _StatusSection({required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.lg,
        horizontal: AppSpacing.md,
      ),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          SettlementStatusBadge(
            statusCode: detail.statusCode,
            statusName: detail.statusName,
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(detail.statusName, style: AppTextStyles.heading3),
        ],
      ),
    );
  }
}

class _AmountCard extends StatelessWidget {
  final SettlementDetailEntity detail;

  const _AmountCard({required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('정산 금액', style: AppTextStyles.body1),
          const SizedBox(height: AppSpacing.sm),
          _AmountRow(
            label: '총 금액',
            value: NumberFormatUtil.formatPrice(detail.amount),
          ),
          const SizedBox(height: AppSpacing.xs),
          _AmountRow(
            label: '수수료',
            value: NumberFormatUtil.formatPrice(detail.fee),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: AppSpacing.sm),
            child: Divider(color: AppColors.border, height: 1),
          ),
          _AmountRow(
            label: '순 정산 금액',
            value: NumberFormatUtil.formatPrice(detail.netAmount),
            isHighlighted: true,
          ),
        ],
      ),
    );
  }
}

class _AmountRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isHighlighted;

  const _AmountRow({
    required this.label,
    required this.value,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: isHighlighted
              ? AppTextStyles.body1.copyWith(fontWeight: FontWeight.w700)
              : AppTextStyles.body2,
        ),
        Text(
          value,
          style: isHighlighted
              ? AppTextStyles.body1.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                )
              : AppTextStyles.body1,
        ),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _InfoCard({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.body1),
          const SizedBox(height: AppSpacing.sm),
          ...children,
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xs),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 88, child: Text(label, style: AppTextStyles.body2)),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Text(
              value,
              style: AppTextStyles.body2.copyWith(color: AppColors.textPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
