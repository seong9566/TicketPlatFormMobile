import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/transaction_entity.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_room_viewmodel.dart';

class PaymentRequestBubble extends ConsumerWidget {
  final MessageUiModel message;
  final TicketInfoUiModel ticket;
  final bool isBuyer;
  final VoidCallback onPayment;
  final VoidCallback onCancel;

  const PaymentRequestBubble({
    super.key,
    required this.message,
    required this.ticket,
    required this.isBuyer,
    required this.onPayment,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 채팅방 정보를 watch하여 최신 트랜잭션 상태를 가져옴
    final chatRoom = ref.watch(chatRoomViewModelProvider(message.roomId)).value;
    final transaction = chatRoom?.transaction;

    final status = transaction?.status ?? TransactionStatus.reserved;
    final statusName = transaction?.statusName ?? '예약중';

    // 상태별 디자인 설정
    final config = _getStatusConfig(status);

    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
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
              color: config.headerBgColor,
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
                      config.title,
                      style: AppTextStyles.heading2.copyWith(
                        fontSize: 22,
                        color: AppColors.textPrimary,
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
                  child: Icon(config.icon, color: config.iconColor, size: 24),
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
                  config.message,
                  style: AppTextStyles.body1.copyWith(
                    color: AppColors.textPrimary,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 16),

                // Info List (당근페이 스타일)
                _buildInfoItem('상품명', ticket.title),
                _buildInfoItem('결제금액', ticket.price),
                _buildInfoItem('거래상태', statusName),

                const SizedBox(height: 24),

                // Action Button (상태에 따른 CTA)
                if (config.buttonText != null)
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed:
                          (isBuyer && config.isBuyerAction) ||
                              (!isBuyer && !config.isBuyerAction)
                          ? config.onPressed ?? (isBuyer ? onPayment : null)
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: config.buttonColor,
                        foregroundColor: config.buttonTextColor,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        config.buttonText!,
                        style: AppTextStyles.body1.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),

                if (isBuyer && status == TransactionStatus.pendingPayment) ...[
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: onCancel,
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.textSecondary,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                      ),
                      child: const Text('취소하기'),
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

  _StatusConfig _getStatusConfig(TransactionStatus status) {
    return switch (status) {
      TransactionStatus.reserved => _StatusConfig(
        title: '결제요청',
        message: '판매자가 결제를 요청했어요.',
        headerBgColor: const Color(0xFFFFF1EB),
        icon: Icons.payment,
        iconColor: const Color(0xFFFF8A65),
        buttonText: isBuyer ? '결제하기' : '상세보기',
        isBuyerAction: true,
      ),
      TransactionStatus.pendingPayment => _StatusConfig(
        title: '결제대기',
        message: isBuyer ? '결제를 완료해주세요!' : '구매자의 결제를 기다리고 있어요.',
        headerBgColor: const Color(0xFFE3F2FD),
        icon: Icons.hourglass_empty,
        iconColor: Colors.blue,
        buttonText: isBuyer ? '결제하기' : '결제 대기 중',
        isBuyerAction: true,
      ),
      TransactionStatus.paid => _StatusConfig(
        title: '결제완료',
        message: isBuyer
            ? '물건을 받으셨다면 구매 확정을 눌러주세요.'
            : '결제가 완료되었습니다. 물건을 전달해주세요.',
        headerBgColor: const Color(0xFFE8F5E9),
        icon: Icons.check_circle_outline,
        iconColor: Colors.green,
        buttonText: isBuyer ? '구매 확정하기' : '결제 완료됨',
        isBuyerAction: true,
      ),
      TransactionStatus.confirmed => _StatusConfig(
        title: '구매확정',
        message: '구매가 확정되었습니다. 거래가 곧 완료됩니다.',
        headerBgColor: const Color(0xFFF3E5F5),
        icon: Icons.handshake,
        iconColor: Colors.purple,
        buttonText: '상세보기',
        isBuyerAction: false,
      ),
      TransactionStatus.completed => _StatusConfig(
        title: '거래완료',
        message: '거래가 성공적으로 완료되었습니다!',
        headerBgColor: const Color(0xFFF9FBE7),
        icon: Icons.celebration,
        iconColor: Colors.lime,
        buttonText: '후기 남기기',
        isBuyerAction: true,
      ),
      TransactionStatus.cancelled => _StatusConfig(
        title: '거래취소',
        message: '거래가 취소되었습니다.',
        headerBgColor: const Color(0xFFFFEBEE),
        icon: Icons.cancel_outlined,
        iconColor: Colors.red,
        buttonText: '사유 확인',
        isBuyerAction: false,
      ),
      TransactionStatus.refunded => _StatusConfig(
        title: '환불완료',
        message: '환불 처리가 완료되었습니다.',
        headerBgColor: const Color(0xFFECEFF1),
        icon: Icons.refresh,
        iconColor: Colors.blueGrey,
        buttonText: '환불상세',
        isBuyerAction: false,
      ),
    };
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

class _StatusConfig {
  final String title;
  final String message;
  final Color headerBgColor;
  final IconData icon;
  final Color iconColor;
  final String? buttonText;
  final bool isBuyerAction;
  final Color buttonColor;
  final Color buttonTextColor;
  final VoidCallback? onPressed;

  _StatusConfig({
    required this.title,
    required this.message,
    required this.headerBgColor,
    required this.icon,
    required this.iconColor,
    this.buttonText,
    this.isBuyerAction = true,
    this.buttonColor = const Color(0xFFF2F3F5),
    this.buttonTextColor = AppColors.textPrimary,
    this.onPressed,
  });
}
