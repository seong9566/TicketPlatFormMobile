import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

/// 단일 채팅방 화면 UI
///
/// 현재는 더미 데이터로만 구성되어 있고
/// ViewModel 연동 및 실제 메시지 리스트는 이후에 연결하면 됩니다.
class ChatRoomView extends StatelessWidget {
  final String chatRoomId;
  const ChatRoomView({super.key, required this.chatRoomId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          const _ChatRoomTicketHeader(),
          const SizedBox(height: AppSpacing.sm),
          const Divider(height: 1, color: Color(0xFFF1F5F9)),
          const SizedBox(height: AppSpacing.sm),
          // 메시지 리스트
          const Expanded(
            child: _ChatMessageList(),
          ),
          const _ChatRoomActionBar(),
          const _ChatInputBar(),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '민초단',
            style: AppTextStyles.heading3.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '온라인',
            style: AppTextStyles.caption.copyWith(
              fontSize: 12,
              color: AppColors.textTertiary,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert, color: AppColors.textPrimary),
          onPressed: () {},
        ),
      ],
      centerTitle: true,
    );
  }
}

/// 상단 티켓 정보 요약 카드
class _ChatRoomTicketHeader extends StatelessWidget {
  const _ChatRoomTicketHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: const Color(0xFF111827),
              borderRadius: BorderRadius.circular(AppRadius.md),
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BTS Yet to Come 부산 콘서트 티켓',
                  style: AppTextStyles.body1.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  '플로어 A-5구역 1열',
                  style: AppTextStyles.caption.copyWith(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '150,000원',
                style: AppTextStyles.heading3.copyWith(
                  color: AppColors.success,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              const Icon(Icons.keyboard_arrow_down, color: AppColors.textTertiary),
            ],
          ),
        ],
      ),
    );
  }
}

/// 더미 메시지 리스트
class _ChatMessageList extends StatelessWidget {
  const _ChatMessageList();

  @override
  Widget build(BuildContext context) {
    final messages = [
      const _SystemMessage('거래가 시작되었습니다.'),
      const _ChatBubble(
        isMine: false,
        text: '안녕하세요! 티켓 아직 구매 가능한가요?',
        time: '오후 2:30',
      ),
      const _ChatBubble(
        isMine: true,
        text: '네, 가능합니다! 거래 진행하시겠어요?',
        time: '오후 2:31',
      ),
      const _SystemMessage('안전한 거래를 위해 좌석 번호를 다시 한번 확인해주세요.'),
      const _ChatBubble(
        isMine: false,
        text: '네 좋아요! 혹시 티켓 인증 사진 보내주실 수 있나요?',
        time: '오후 2:32',
      ),
    ];

    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      itemBuilder: (context, index) => messages[index],
      separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.sm),
      itemCount: messages.length,
    );
  }
}

class _SystemMessage extends StatelessWidget {
  final String text;
  const _SystemMessage(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.xs,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFF1F5F9),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: AppTextStyles.caption.copyWith(
            color: AppColors.textSecondary,
            fontSize: 11,
          ),
        ),
      ),
    );
  }
}

class _ChatBubble extends StatelessWidget {
  final bool isMine;
  final String text;
  final String time;

  const _ChatBubble({
    required this.isMine,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    final bubbleColor = isMine ? AppColors.primary : Colors.white;
    final textColor = isMine ? AppColors.primaryForeground : AppColors.textPrimary;

    return Row(
      mainAxisAlignment:
          isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (!isMine) ...[
          const CircleAvatar(
            radius: 16,
            backgroundColor: AppColors.chatAvatarDefault,
            child: Icon(Icons.person, color: Colors.white, size: 18),
          ),
          const SizedBox(width: AppSpacing.xs),
        ],
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.sm,
            ),
            decoration: BoxDecoration(
              color: bubbleColor,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(16),
                topRight: const Radius.circular(16),
                bottomLeft:
                    isMine ? const Radius.circular(16) : const Radius.circular(4),
                bottomRight:
                    isMine ? const Radius.circular(4) : const Radius.circular(16),
              ),
            ),
            child: Text(
              text,
              style: AppTextStyles.body2.copyWith(
                color: textColor,
                height: 1.4,
              ),
            ),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          time,
          style: AppTextStyles.caption.copyWith(
            fontSize: 11,
            color: AppColors.textTertiary,
          ),
        ),
      ],
    );
  }
}

/// 하단 거래 액션 버튼 영역
class _ChatRoomActionBar extends StatelessWidget {
  const _ChatRoomActionBar();

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
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10),
                side: const BorderSide(color: Color(0xFFE2E8F0)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text(
                '티켓 수령 확인',
                style: AppTextStyles.body2.copyWith(fontSize: 13),
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10),
                side: const BorderSide(color: Color(0xFFE2E8F0)),
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
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10),
                side: const BorderSide(color: Color(0xFFE2E8F0)),
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

/// 하단 입력창
class _ChatInputBar extends StatelessWidget {
  const _ChatInputBar();

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
            // 첨부 아이콘 버튼
            IconButton(
              icon: const Icon(Icons.add_circle_outline,
                  color: AppColors.textSecondary),
              onPressed: () {},
            ),
            const SizedBox(width: AppSpacing.xs),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                decoration: BoxDecoration(
                  color: AppColors.inputBackground,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: AppSpacing.sm),
                    border: InputBorder.none,
                    hintText: '메시지를 입력하세요',
                  ),
                  minLines: 1,
                  maxLines: 1,
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.xs),
            IconButton(
              icon: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_upward,
                    color: AppColors.primaryForeground, size: 22),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

