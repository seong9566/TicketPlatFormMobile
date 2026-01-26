import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_room_viewmodel.dart';

class ChatBubble extends ConsumerWidget {
  final MessageUiModel message;

  const ChatBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMine = message.isMyMessage;
    final bubbleColor = isMine ? AppColors.primary : Colors.white;
    final textColor = isMine
        ? AppColors.primaryForeground
        : AppColors.textPrimary;

    final hasImages = message.images != null && message.images!.isNotEmpty;
    final hasText = message.message != null && message.message!.isNotEmpty;

    return Row(
      mainAxisAlignment: isMine
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (!isMine) ...[
          CircleAvatar(
            radius: 16,
            backgroundColor: AppColors.chatAvatarDefault,
            backgroundImage: message.senderProfileImage != null
                ? CachedNetworkImageProvider(message.senderProfileImage!)
                : null,
            child: message.senderProfileImage == null
                ? const Icon(Icons.person, color: Colors.white, size: 18)
                : null,
          ),
          const SizedBox(width: AppSpacing.xs),
        ],
        Flexible(
          child: Column(
            crossAxisAlignment: isMine
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              if (hasImages && hasText) _buildImageGrid(ref),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: isMine
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (isMine) _buildTimeText(),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: isMine
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        if (hasImages && !hasText) _buildImageGrid(ref),
                        if (hasText) _buildTextBubble(bubbleColor, textColor),
                      ],
                    ),
                  ),
                  if (!isMine) _buildTimeText(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTextBubble(Color bubbleColor, Color textColor) {
    return Container(
      margin: (message.images != null && message.images!.isNotEmpty)
          ? const EdgeInsets.only(top: 4)
          : EdgeInsets.zero,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: bubbleColor,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(16),
          topRight: const Radius.circular(16),
          bottomLeft: message.isMyMessage
              ? const Radius.circular(16)
              : const Radius.circular(4),
          bottomRight: message.isMyMessage
              ? const Radius.circular(4)
              : const Radius.circular(16),
        ),
      ),
      child: Text(
        message.message!,
        style: AppTextStyles.body2.copyWith(color: textColor, height: 1.4),
      ),
    );
  }

  Widget _buildTimeText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Text(
        message.timeDisplay,
        style: AppTextStyles.caption.copyWith(
          fontSize: 11,
          color: AppColors.textTertiary,
        ),
      ),
    );
  }

  Widget _buildImageGrid(WidgetRef ref) {
    final images = message.images!;
    final imageUrls = images.map((img) => img.url).toList();
    return Wrap(
      spacing: 4,
      runSpacing: 4,
      alignment: message.isMyMessage ? WrapAlignment.end : WrapAlignment.start,
      children: List.generate(
        images.length,
        (index) => _buildSingleImage(ref, imageUrls, index),
      ),
    );
  }

  Widget _buildSingleImage(WidgetRef ref, List<String> imageUrls, int index) {
    final imageUrl = imageUrls[index];
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Hero(
        tag: imageUrl,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: 120,
          height: 120,
          fit: BoxFit.cover,
          imageBuilder: (context, imageProvider) => GestureDetector(
            onTap: () => context.pushNamed(
              AppRouterPath.imageViewer.name,
              extra: {'imageUrls': imageUrls, 'initialIndex': index},
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
          ),
          placeholder: (context, url) => Container(
            width: 120,
            height: 120,
            color: Colors.grey[300],
            child: const Center(child: CircularProgressIndicator()),
          ),
          errorWidget: (context, url, error) => GestureDetector(
            onTap: () async {
              // Refresh image URL when user taps the error widget
              final newUrl = await ref
                  .read(chatRoomViewModelProvider(message.roomId).notifier)
                  .refreshImageUrl(message.messageId);
              if (newUrl != null) {
                // Force CachedNetworkImage to reload with new URL
                await CachedNetworkImage.evictFromCache(url);
              }
            },
            child: Container(
              width: 120,
              height: 120,
              color: Colors.grey[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.broken_image,
                    size: 32,
                    color: AppColors.textSecondary,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '이미지를 불러올 수 없습니다',
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '탭하여 다시 시도',
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.primary,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
