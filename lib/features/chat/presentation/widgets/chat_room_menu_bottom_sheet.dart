import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class ChatRoomMenuBottomSheet extends StatelessWidget {
  final VoidCallback? onNotificationSettings;
  final VoidCallback? onReportUser;
  final VoidCallback onLeaveRoom;

  const ChatRoomMenuBottomSheet({
    super.key,
    this.onNotificationSettings,
    this.onReportUser,
    required this.onLeaveRoom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _MenuItem(
              icon: Icons.notifications_outlined,
              title: '알림 설정',
              onTap: () {
                Navigator.pop(context);
                if (onNotificationSettings != null) {
                  onNotificationSettings!();
                } else {
                  _showComingSoonDialog(context);
                }
              },
            ),
            const Divider(height: 1),
            _MenuItem(
              icon: Icons.report_outlined,
              title: '사용자 신고',
              onTap: () {
                Navigator.pop(context);
                if (onReportUser != null) {
                  onReportUser!();
                } else {
                  _showComingSoonDialog(context);
                }
              },
            ),
            const Divider(height: 1),
            _MenuItem(
              icon: Icons.exit_to_app_outlined,
              title: '채팅방 나가기',
              titleColor: AppColors.destructive,
              onTap: () {
                Navigator.pop(context);
                _showLeaveRoomDialog(context, onLeaveRoom);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showComingSoonDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('준비 중'),
        content: const Text('이 기능은 곧 제공될 예정입니다.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('확인'),
          ),
        ],
      ),
    );
  }

  void _showLeaveRoomDialog(BuildContext context, VoidCallback onConfirm) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('채팅방 나가기'),
        content: const Text('채팅방을 나가시겠습니까?\n나간 후에는 대화 내역을 확인할 수 없습니다.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              '취소',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              onConfirm();
            },
            child: Text(
              '나가기',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.destructive,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? titleColor;
  final VoidCallback onTap;

  const _MenuItem({
    required this.icon,
    required this.title,
    this.titleColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: titleColor ?? AppColors.textPrimary,
      ),
      title: Text(
        title,
        style: AppTextStyles.body1.copyWith(
          color: titleColor ?? AppColors.textPrimary,
        ),
      ),
      onTap: onTap,
    );
  }
}
