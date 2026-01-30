import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'chat_bubble.dart';

class ChatMessageList extends StatelessWidget {
  final List<MessageUiModel> messages;
  final ScrollController scrollController;
  final ChatRoomDetailUiModel chatRoom;
  final VoidCallback onBuyerPayment;
  final VoidCallback onCancelTransaction;

  const ChatMessageList({
    super.key,
    required this.messages,
    required this.scrollController,
    required this.chatRoom,
    required this.onBuyerPayment,
    required this.onCancelTransaction,
  });

  @override
  Widget build(BuildContext context) {
    if (messages.isEmpty) {
      return const Center(
        child: Text(
          '메시지가 없습니다',
          style: TextStyle(color: AppColors.textSecondary),
        ),
      );
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: ListView.builder(
        controller: scrollController,
        reverse: true,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.md,
        ),
        itemBuilder: (context, index) {
          final message = messages[index];
          final showSeparator = _shouldShowSeparator(index);

          return Column(
            children: [
              if (showSeparator) _buildDateSeparator(message.createdAt),
              const SizedBox(height: AppSpacing.sm),
              ChatBubble(
                message: message,
                onBuyerPayment: onBuyerPayment,
                onCancelTransaction: onCancelTransaction,
              ),
            ],
          );
        },
        itemCount: messages.length,
      ),
    );
  }

  bool _shouldShowSeparator(int index) {
    // 가장 오래된 메시지(마지막 인덱스)이면 구분선 표시
    if (index == messages.length - 1) return true;

    final currentMessage = messages[index];
    final nextMessage =
        messages[index + 1]; // reverse: true이므로 index+1이 더 과거 메시지

    // 현재 메시지와 이전 메시지(더 과거)의 날짜가 다르면 구분선 표시
    final currentDate = DateTime(
      currentMessage.createdAt.year,
      currentMessage.createdAt.month,
      currentMessage.createdAt.day,
    );
    final nextDate = DateTime(
      nextMessage.createdAt.year,
      nextMessage.createdAt.month,
      nextMessage.createdAt.day,
    );

    return currentDate != nextDate;
  }

  Widget _buildDateSeparator(DateTime dateTime) {
    final dateText = DateFormatUtil.formatSeparatorDate(dateTime);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
      child: Row(
        children: [
          const Expanded(child: Divider(color: AppColors.muted)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
            child: Text(
              dateText,
              style: AppTextStyles.caption.copyWith(
                color: AppColors.textTertiary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Expanded(child: Divider(color: AppColors.muted)),
        ],
      ),
    );
  }
}
