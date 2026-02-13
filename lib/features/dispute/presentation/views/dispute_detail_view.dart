import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/viewmodels/dispute_detail_viewmodel.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/widgets/dispute_status_badge.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/widgets/dispute_timeline.dart';

class DisputeDetailView extends ConsumerWidget {
  final String disputeId;

  const DisputeDetailView({super.key, required this.disputeId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = int.tryParse(disputeId) ?? 0;
    final stateAsync = ref.watch(disputeDetailViewModelProvider(id));

    Future<void> addEvidence() async {
      final picker = ImagePicker();
      final image = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
        maxWidth: 1920,
        maxHeight: 1920,
      );

      if (image == null) {
        return;
      }

      final message = await ref
          .read(disputeDetailViewModelProvider(id).notifier)
          .addEvidence(file: File(image.path));

      if (message != null && context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(message)));
      }
    }

    Future<void> cancelDispute() async {
      final message = await ref
          .read(disputeDetailViewModelProvider(id).notifier)
          .cancelDispute();
      if (message != null && context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(message)));
      }
    }

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(title: const Text('신고 상세')),
      body: stateAsync.when(
        data: (detail) {
          return ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(detail.typeName, style: AppTextStyles.heading2),
                  ),
                  DisputeStatusBadge(
                    status: detail.statusCode,
                    label: detail.statusName,
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                detail.createdAtText,
                style: AppTextStyles.caption.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              if (detail.transaction != null)
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('거래 정보', style: AppTextStyles.body1),
                      const SizedBox(height: 6),
                      Text(detail.transaction!.ticketTitle),
                      Text(detail.transaction!.amountText),
                      Text(
                        '구매자: ${detail.transaction!.buyerNickname} / 판매자: ${detail.transaction!.sellerNickname}',
                        style: AppTextStyles.caption,
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: AppSpacing.md),
              Text('신고 내용', style: AppTextStyles.body1),
              const SizedBox(height: 6),
              Text(detail.description, style: AppTextStyles.body2),
              const SizedBox(height: AppSpacing.lg),
              Text('증거 이미지', style: AppTextStyles.body1),
              const SizedBox(height: AppSpacing.sm),
              Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.sm,
                children: detail.evidences.map((e) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: e.imageUrl,
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  );
                }).toList(),
              ),
              if (detail.canAddEvidence) ...[
                const SizedBox(height: AppSpacing.md),
                OutlinedButton.icon(
                  onPressed: addEvidence,
                  icon: const Icon(Icons.add_photo_alternate_outlined),
                  label: const Text('증거 추가'),
                ),
              ],
              const SizedBox(height: AppSpacing.lg),
              DisputeTimeline(detail: detail),
              if (detail.canCancel) ...[
                const SizedBox(height: AppSpacing.xl),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.destructive,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: cancelDispute,
                  child: const Text('신고 취소'),
                ),
              ],
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('오류: $error')),
      ),
    );
  }
}
