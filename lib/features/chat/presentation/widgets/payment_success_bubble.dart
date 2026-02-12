import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/transaction_entity.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_room_viewmodel.dart';

class PaymentSuccessBubble extends ConsumerWidget {
  final MessageUiModel message;
  final TicketInfoUiModel ticket;
  final bool isBuyer;
  final VoidCallback onConfirmPurchase;
  final VoidCallback onCancelTransaction;

  const PaymentSuccessBubble({
    super.key,
    required this.message,
    required this.ticket,
    required this.isBuyer,
    required this.onConfirmPurchase,
    required this.onCancelTransaction,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 실시간 거래 상태 확인
    final chatRoom = ref.watch(chatRoomViewModelProvider(message.roomId)).value;
    final transaction = chatRoom?.transaction;
    final canConfirm = chatRoom?.canConfirmPurchase ?? false;
    final canCancel = chatRoom?.canCancelTransaction ?? false;
    final isPaid = transaction?.status == TransactionStatus.paid;
    final isConfirmed = transaction?.status == TransactionStatus.confirmed;
    final isCompleted = transaction?.status == TransactionStatus.completed;
    final hasPurchaseConfirmedMessage =
        chatRoom?.messages.any((msg) => msg.type.name == 'purchaseConfirmed') ??
        false;
    final isPurchaseFinalized =
        isConfirmed || isCompleted || hasPurchaseConfirmedMessage;
    final amountText = transaction?.formattedAmount ?? ticket.price;
    final ticketCountText = _buildTicketCountText(transaction);
    final seatInfoText = _buildSeatInfoText();

    // 역할별 메시지
    final String displayMessage = isPurchaseFinalized
        ? '구매 확정이 완료되었습니다.\n정산이 진행됩니다.'
        : isBuyer
        ? '물건을 받으셨다면 구매 확정을 눌러주세요.'
        : '구매자가 결제를 완료했습니다. 물건을 전송해주세요.';

    // 버튼 텍스트 및 상태
    final String buttonText = canConfirm ? '구매 확정하기' : '구매 확정 대기중';

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
          // Header Section
          Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5E9),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '결제 완료',
                      style: AppTextStyles.heading2.copyWith(
                        fontSize: 22,
                        color: Colors.green,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.5),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),

          // Content Section
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  displayMessage,
                  style: AppTextStyles.body1.copyWith(
                    color: AppColors.textPrimary,
                    fontSize: 15,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 16),

                // Info List
                _buildInfoItem('상품명', ticket.title),
                _buildInfoItem('결제 금액', amountText),
                _buildInfoItem('티켓 개수', ticketCountText),
                _buildInfoItem('좌석 정보', seatInfoText),

                const SizedBox(height: 24),

                // Action Buttons (구매자만 표시)
                if (isBuyer && !isPurchaseFinalized) ...[
                  // 구매 확정 버튼
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: canConfirm ? onConfirmPurchase : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: canConfirm
                            ? AppColors.primary
                            : const Color(0xFFF2F3F5),
                        foregroundColor: canConfirm
                            ? Colors.white
                            : AppColors.textSecondary,
                        elevation: 0,
                        disabledBackgroundColor: const Color(0xFFF2F3F5),
                        disabledForegroundColor: AppColors.textSecondary,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            buttonText,
                            style: AppTextStyles.body1.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // 거래 취소 버튼 (구매 확정 전에만 표시)
                  if (canCancel) ...[
                    const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: onCancelTransaction,
                        style: TextButton.styleFrom(
                          foregroundColor: AppColors.destructive,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                        ),
                        child: const Text(
                          '거래 취소',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ],

                // 판매자용 안내 메시지
                if (!isBuyer && isPaid && !isPurchaseFinalized) ...[
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF9E6),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xFFFFD54F).withValues(alpha: 0.3),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.info_outline,
                          size: 18,
                          color: Color(0xFFF57C00),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            '구매자의 확정을 기다리는 중입니다',
                            style: AppTextStyles.body2.copyWith(
                              fontSize: 13,
                              color: const Color(0xFFF57C00),
                            ),
                          ),
                        ),
                      ],
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

  String _buildTicketCountText(TransactionUiModel? transaction) {
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
