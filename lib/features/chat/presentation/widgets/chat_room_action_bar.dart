import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';

class ChatRoomActionBar extends StatelessWidget {
  final ChatRoomDetailUiModel chatRoom;
  final VoidCallback onRequestPayment;
  final VoidCallback onConfirmPurchase;
  final VoidCallback onCancelTransaction;

  const ChatRoomActionBar({
    super.key,
    required this.chatRoom,
    required this.onRequestPayment,
    required this.onConfirmPurchase,
    required this.onCancelTransaction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.lg,
        AppSpacing.sm,
        AppSpacing.lg,
        0,
      ),
      child: Row(
        children: [
          if (chatRoom.canRequestPayment)
            Expanded(
              child: OutlinedButton(
                onPressed: onRequestPayment,
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  side: const BorderSide(color: AppColors.border),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  '결제 요청',
                  style: AppTextStyles.body2.copyWith(fontSize: 13),
                ),
              ),
            ),
          if (chatRoom.canRequestPayment &&
              (chatRoom.canConfirmPurchase || chatRoom.canCancelTransaction))
            const SizedBox(width: AppSpacing.sm),
          if (chatRoom.canConfirmPurchase)
            Expanded(
              child: OutlinedButton(
                onPressed: onConfirmPurchase,
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  side: const BorderSide(color: AppColors.border),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  '구매 확정',
                  style: AppTextStyles.body2.copyWith(fontSize: 13),
                ),
              ),
            ),
          if (chatRoom.canConfirmPurchase && chatRoom.canCancelTransaction)
            const SizedBox(width: AppSpacing.sm),
          if (chatRoom.canCancelTransaction)
            Expanded(
              child: OutlinedButton(
                onPressed: onCancelTransaction,
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  side: const BorderSide(color: AppColors.border),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  '거래 취소',
                  style: AppTextStyles.body2.copyWith(fontSize: 13),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
