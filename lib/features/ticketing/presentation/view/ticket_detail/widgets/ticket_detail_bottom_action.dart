import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/create_or_get_chat_room_usecase.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/view/ticket_detail/viewmodels/ticket_detail_viewmodel.dart';

class TicketDetailBottomAction extends ConsumerWidget {
  final int ticketId;
  final bool isMine;
  final bool isFavorited;

  const TicketDetailBottomAction({
    super.key,
    required this.ticketId,
    required this.isMine,
    required this.isFavorited,
  });

  Future<void> _onChatPressed(BuildContext context, WidgetRef ref) async {
    // 로딩 다이얼로그 표시
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      // 1. 먼저 기존 채팅방이 있는지 확인 (생성하지 않음)
      final chatRepository = ref.read(chatRepositoryProvider);
      final existingRoom = await chatRepository.getChatRoomByTicket(ticketId);

      int roomIdToNavigate;

      if (existingRoom != null) {
        // 2-1. 기존 방 있음 → 해당 방으로
        roomIdToNavigate = existingRoom.roomId;
      } else {
        // 2-2. 기존 방 없음 → 즉시 생성
        final newRoom = await ref
            .read(createOrGetChatRoomUsecaseProvider)
            .call(ticketId);
        roomIdToNavigate = newRoom.roomId;
      }

      // 로딩 다이얼로그 닫기
      if (context.mounted) {
        context.pop();

        // 3. 채팅방으로 이동
        context.pushNamed(
          AppRouterPath.chatRoom.name,
          pathParameters: {'id': roomIdToNavigate.toString()},
          extra: {'fromTicketDetail': true},
        );
      }
    } catch (e) {
      // 로딩 다이얼로그 닫기
      if (context.mounted) {
        context.pop();

        // 에러 메시지 표시
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('채팅방을 불러오는데 실패했습니다: ${e.toString()}'),
            backgroundColor: AppColors.destructive,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        children: [
          if (!isMine) ...[
            IconButton(
              onPressed: () => ref
                  .read(ticketDetailViewModelProvider(ticketId).notifier)
                  .toggleLike(),
              icon: Icon(
                isFavorited ? Icons.favorite : Icons.favorite_border,
                color: isFavorited
                    ? AppColors.destructive
                    : AppColors.textPrimary,
                size: 28,
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
          ],
          Expanded(
            child: SizedBox(
              height: 52,
              child: ElevatedButton(
                onPressed: isMine
                    ? () => context.pushNamed(
                        AppRouterPath.transactionHistory.name,
                        pathParameters: {'initialIndex': '0'},
                      )
                    : () => _onChatPressed(context, ref),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isMine ? AppColors.primary : Colors.white,
                  foregroundColor: isMine
                      ? Colors.white
                      : AppColors.textPrimary,
                  side: isMine
                      ? BorderSide.none
                      : const BorderSide(color: Color(0xFFE2E8F0)),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.lg),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (!isMine) ...[
                      const Icon(Icons.chat_bubble_outline, size: 20),
                      const SizedBox(width: 8),
                    ],
                    Text(
                      isMine ? '채팅 내역' : '채팅하기',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
