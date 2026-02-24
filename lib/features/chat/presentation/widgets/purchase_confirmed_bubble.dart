import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';

class PurchaseConfirmedBubble extends StatelessWidget {
  final MessageUiModel message;
  final TicketInfoUiModel ticket;
  final TransactionUiModel? transaction;
  final bool isBuyer;
  final bool canWriteReview;
  final bool hasReviewedSeller;
  final VoidCallback? onWriteReview;

  const PurchaseConfirmedBubble({
    super.key,
    required this.message,
    required this.ticket,
    this.transaction,
    required this.isBuyer,
    this.canWriteReview = false,
    this.hasReviewedSeller = false,
    this.onWriteReview,
  });

  @override
  Widget build(BuildContext context) {
    const title = '구매확정';
    final description = isBuyer
        ? '구매 확정이 완료되었습니다.\n정산이 진행됩니다.'
        : '구매자가 구매를 확정했습니다.\n정산이 진행됩니다.';
    final amountText = transaction?.formattedAmount ?? ticket.price;
    final ticketCountText = _buildTicketCountText();
    final seatInfoText = _buildSeatInfoText();

    return Container(
      width: 270,
      margin: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: const BoxDecoration(
              color: Color(0xFFF3E5F5),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTextStyles.heading2.copyWith(
                    fontSize: 22,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.handshake,
                    color: Colors.purple,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: AppTextStyles.body1.copyWith(
                    color: AppColors.textPrimary,
                    fontSize: 15,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 16),
                _buildInfoItem('상품명', ticket.title),
                _buildInfoItem('결제 금액', amountText),
                _buildInfoItem('티켓 개수', ticketCountText),
                _buildInfoItem('좌석 정보', seatInfoText),
                if (isBuyer) ...[
                  const SizedBox(height: AppSpacing.md),
                  if (canWriteReview && !hasReviewedSeller)
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: onWriteReview,
                        icon: const Icon(Icons.rate_review_outlined, size: 18),
                        label: Text(
                          '리뷰 작성하기',
                          style: AppTextStyles.body2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    )
                  else if (hasReviewedSeller)
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '리뷰 완료 ✓',
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.textSecondary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _buildTicketCountText() {
    final transactionAmount = transaction?.amount;
    final unitPrice = ticket.priceValue;

    if (transactionAmount != null && transactionAmount > 0 && unitPrice > 0) {
      final count = transactionAmount ~/ unitPrice;
      if (count > 0 && count * unitPrice == transactionAmount) {
        return '$count매';
      }
    }

    final totalQuantity = ticket.totalQuantity;
    if (totalQuantity != null && totalQuantity > 0) {
      return '$totalQuantity매';
    }

    return '-';
  }

  String _buildSeatInfoText() {
    final seatInfo = ticket.seatInfo?.trim();
    if (seatInfo == null || seatInfo.isEmpty) {
      return '-';
    }

    return seatInfo;
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6),
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: AppColors.textPrimary,
              shape: BoxShape.rectangle,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.textPrimary,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: '$label: ',
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(text: value),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
