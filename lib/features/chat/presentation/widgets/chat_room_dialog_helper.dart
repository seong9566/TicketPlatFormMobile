import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_room_viewmodel.dart';
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
    if (!isBuyer) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Consumer(
          builder: (context, ref, child) {
            final isLoading = ref.watch(
              paymentViewModelProvider.select((s) => s.isLoading),
            );

            return AlertDialog(
              title: const Text('결제하기'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '티켓 금액: ${chatRoom.ticket.price}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text('위 금액으로 결제를 진행하시겠습니까?'),
                  if (isLoading) ...[
                    const SizedBox(height: 16),
                    const Center(child: CircularProgressIndicator()),
                  ],
                ],
              ),
              actions: [
                TextButton(
                  onPressed: isLoading
                      ? null
                      : () => Navigator.of(context).pop(),
                  child: const Text('취소'),
                ),
                ElevatedButton(
                  onPressed: isLoading
                      ? null
                      : () async {
                          final transaction = chatRoom.transaction;
                          if (transaction == null) return;

                          final profile = ref
                              .read(profileViewModelProvider)
                              .value
                              ?.profile;
                          final paymentViewModel = ref.read(
                            paymentViewModelProvider.notifier,
                          );

                          await paymentViewModel.requestPayment(
                            transactionId: transaction.transactionId,
                            amount: chatRoom.ticket.priceValue,
                            orderName: chatRoom.ticket.title,
                            customerName: profile?.nickname ?? '구매자',
                            customerEmail: 'customer@example.com',
                          );

                          final paymentState = ref.read(
                            paymentViewModelProvider,
                          );
                          if (paymentState.errorMessage != null) {
                            if (!context.mounted) return;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(paymentState.errorMessage!),
                                backgroundColor: AppColors.destructive,
                              ),
                            );
                            return;
                          }

                          if (paymentState.paymentRequest != null) {
                            if (!context.mounted) return;
                            Navigator.of(context).pop(); // 다이얼로그 닫기

                            final success = await context.push<bool>(
                              AppRouterPath.payment.path,
                              extra: paymentState.paymentRequest,
                            );

                            if (success == true) {
                              await viewModel.refresh();
                            }
                          }
                        },
                  child: const Text('결제'),
                ),
              ],
            );
          },
        );
      },
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
