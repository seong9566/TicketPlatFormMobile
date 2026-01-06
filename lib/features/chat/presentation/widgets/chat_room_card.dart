import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';

class ChatRoomCard extends StatelessWidget {
  final ChatRoomUiModel chatRoom;
  final VoidCallback onTap;

  const ChatRoomCard({super.key, required this.chatRoom, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: chatRoom.isHighlighted
              ? AppColors.chatHighlightBackground
              : Colors.white,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.md,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAvatar(),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chatRoom.userName,
                        style: AppTextStyles.body1.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        chatRoom.timeDisplay,
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.textTertiary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          chatRoom.lastMessage,
                          style: AppTextStyles.body2.copyWith(
                            color: chatRoom.isHighlighted
                                ? AppColors.primary
                                : AppColors.textSecondary,
                            fontWeight: chatRoom.isHighlighted
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (chatRoom.unreadCount > 0) ...[
                        const SizedBox(width: 8),
                        _buildUnreadBadge(),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return CircleAvatar(
      radius: 30,
      backgroundColor: AppColors.chatAvatarDefault,
      backgroundImage: chatRoom.userProfileImageUrl != null
          ? CachedNetworkImageProvider(chatRoom.userProfileImageUrl!)
          : null,
      child: chatRoom.userProfileImageUrl == null
          ? const Icon(Icons.person, color: Colors.white, size: 32)
          : null,
    );
  }

  Widget _buildUnreadBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Text(
        '${chatRoom.unreadCount}',
        style: AppTextStyles.caption.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 11,
        ),
      ),
    );
  }
}
