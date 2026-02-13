import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/ui_models/dispute_ui_model.dart';

class DisputeTimeline extends StatelessWidget {
  final DisputeDetailUiModel detail;

  const DisputeTimeline({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    final stages = <({String title, bool done})>[
      (title: '신고 접수', done: true),
      (title: '검토 중', done: detail.statusCode != DisputeStatusCode.pending),
      (
        title: '처리 완료',
        done:
            detail.statusCode == DisputeStatusCode.resolvedBuyer ||
            detail.statusCode == DisputeStatusCode.resolvedSeller ||
            detail.statusCode == DisputeStatusCode.rejected ||
            detail.statusCode == DisputeStatusCode.cancelled,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '진행 상황',
          style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: AppSpacing.sm),
        ...stages.map((stage) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Icon(
                  stage.done
                      ? Icons.check_circle
                      : Icons.radio_button_unchecked,
                  size: 18,
                  color: stage.done
                      ? AppColors.primary
                      : AppColors.textTertiary,
                ),
                const SizedBox(width: 8),
                Text(
                  stage.title,
                  style: AppTextStyles.body2.copyWith(
                    color: stage.done
                        ? AppColors.textPrimary
                        : AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
