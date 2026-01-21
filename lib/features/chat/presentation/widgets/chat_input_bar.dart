import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';

class ChatInputBar extends StatelessWidget {
  final TextEditingController controller;
  final bool canSendMessage;
  final VoidCallback onSend;
  final VoidCallback onPickImage;

  const ChatInputBar({
    super.key,
    required this.controller,
    required this.canSendMessage,
    required this.onSend,
    required this.onPickImage,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.sm,
        ),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.add_circle_outline,
                color: AppColors.textSecondary,
              ),
              onPressed: canSendMessage ? onPickImage : null,
            ),
            const SizedBox(width: AppSpacing.xs),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                decoration: BoxDecoration(
                  color: AppColors.inputBackground,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: TextField(
                  controller: controller,
                  enabled: canSendMessage,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: AppSpacing.sm),
                    border: InputBorder.none,
                    hintText: canSendMessage ? '메시지를 입력하세요' : '메시지를 보낼 수 없습니다',
                  ),
                  minLines: 1,
                  maxLines: 3,
                  onSubmitted: (_) => onSend(),
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.xs),
            IconButton(
              icon: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: canSendMessage
                      ? AppColors.primary
                      : AppColors.textTertiary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_upward,
                  color: AppColors.primaryForeground,
                  size: 22,
                ),
              ),
              onPressed: canSendMessage ? onSend : null,
            ),
          ],
        ),
      ),
    );
  }
}
