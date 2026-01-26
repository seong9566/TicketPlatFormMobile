import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_room_viewmodel.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/request/payment_request_req_dto.dart';
import 'package:ticket_platform_mobile/features/payment/presentation/viewmodels/payment_viewmodel.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_viewmodel.dart';

/// 채팅방에서 사용되는 다이얼로그 도우미 클래스
class ChatRoomDialogHelper {
  static void showRequestPaymentDialog({
    required BuildContext context,
    required WidgetRef ref,
    required ChatRoomDetailUiModel chatRoom,
    required ChatRoomViewModel viewModel,
    required bool isBuyer,
  }) {
    final title = isBuyer ? '결제하기' : '결제 요청';
    final content = isBuyer
        ? '${chatRoom.ticket.price}를 결제하시겠습니까?'
        : '${chatRoom.ticket.price}의 결제를 요청하시겠습니까?';
    final buttonText = isBuyer ? '결제' : '요청';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('취소'),
          ),
          ElevatedButton(
            onPressed: () async {
              // 다이얼로그 닫기
              Navigator.of(context).pop();

              if (chatRoom.transaction == null) return;

              if (isBuyer) {
                // 구매자: 실제 결제 프로세스 시작
                final profile = ref
                    .read(profileViewModelProvider)
                    .value
                    ?.profile;
                final paymentViewModel = ref.read(
                  paymentViewModelProvider.notifier,
                );

                await paymentViewModel.requestPayment(
                  PaymentRequestReqDto(
                    transactionId: chatRoom.transaction!.transactionId,
                    amount: chatRoom.transaction!.amountValue,
                    orderName: chatRoom.ticket.title,
                    customerName: profile?.nickname ?? '구매자',
                    customerEmail: 'customer@example.com', // TODO: 실제 이메일 연동
                  ),
                );

                final paymentState = ref.read(paymentViewModelProvider);
                if (paymentState.paymentRequest != null) {
                  // context.mounted 체크 (다이얼로그가 닫힌 후이므로 context가 여전히 유효한지 확인)
                  if (!context.mounted) return;

                  final success = await context.push<bool>(
                    AppRouterPath.payment.path,
                    extra: paymentState.paymentRequest,
                  );

                  if (success == true) {
                    await viewModel.refresh();
                  }
                }
              } else {
                // 판매자: 채팅방에 결제 요청 시스템 메시지 전송
                await viewModel.requestPayment(
                  chatRoom.transaction!.transactionId,
                );
              }
            },
            child: Text(buttonText),
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
