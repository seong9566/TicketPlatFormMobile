import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_room_viewmodel.dart';

/// 채팅방에서 사용되는 다이얼로그 도우미 클래스
class ChatRoomDialogHelper {
  static void showRequestPaymentDialog({
    required BuildContext context,
    required ChatRoomDetailUiModel chatRoom,
    required ChatRoomViewModel viewModel,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('결제 요청'),
        content: Text('${chatRoom.ticket.price}의 결제를 요청하시겠습니까?'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('취소')),
          ElevatedButton(
            onPressed: () async {
              context.pop();
              if (chatRoom.transaction != null) {
                await viewModel.requestPayment(
                  chatRoom.transaction!.transactionId,
                );
              }
            },
            child: const Text('요청'),
          ),
        ],
      ),
    );
  }

  static void showConfirmPurchaseDialog({
    required BuildContext context,
    required ChatRoomDetailUiModel chatRoom,
    required ChatRoomViewModel viewModel,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('구매 확정'),
        content: const Text('구매를 확정하시겠습니까? 확정 후에는 취소할 수 없습니다.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('취소')),
          ElevatedButton(
            onPressed: () async {
              context.pop();
              if (chatRoom.transaction != null) {
                await viewModel.confirmPurchase(
                  chatRoom.transaction!.transactionId,
                );
              }
            },
            child: const Text('확정'),
          ),
        ],
      ),
    );
  }

  static void showCancelTransactionDialog({
    required BuildContext context,
    required ChatRoomDetailUiModel chatRoom,
    required ChatRoomViewModel viewModel,
  }) {
    final reasonController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('거래 취소'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('거래를 취소하시겠습니까?'),
            const SizedBox(height: 16),
            TextField(
              controller: reasonController,
              decoration: const InputDecoration(
                labelText: '취소 사유',
                hintText: '취소 사유를 입력해주세요',
                border: OutlineInputBorder(),
              ),
              maxLines: 2,
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('닫기')),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.destructive,
            ),
            onPressed: () async {
              final reason = reasonController.text.trim();
              context.pop();
              if (chatRoom.transaction != null) {
                await viewModel.cancelTransaction(
                  chatRoom.transaction!.transactionId,
                  reason,
                );
              }
            },
            child: const Text('취소'),
          ),
        ],
      ),
    ).then((_) => reasonController.dispose());
  }
}
