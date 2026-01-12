import 'dart:async';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_room_viewmodel.dart';

class ChatRoomView extends ConsumerStatefulWidget {
  final String chatRoomId;
  const ChatRoomView({super.key, required this.chatRoomId});

  @override
  ConsumerState<ChatRoomView> createState() => _ChatRoomViewState();
}

class _ChatRoomViewState extends ConsumerState<ChatRoomView> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  Timer? _typingDebounceTimer;
  bool _isTyping = false;

  int get roomId => int.parse(widget.chatRoomId);

  @override
  void initState() {
    super.initState();
    _messageController.addListener(_onTextChanged);
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    _typingDebounceTimer?.cancel();
    super.dispose();
  }

  void _onTextChanged() {
    final isEmpty = _messageController.text.trim().isEmpty;

    if (!isEmpty && !_isTyping) {
      _isTyping = true;
      ref.read(chatRoomViewModelProvider(roomId).notifier).sendTypingIndicator();
    }

    _typingDebounceTimer?.cancel();
    _typingDebounceTimer = Timer(const Duration(milliseconds: 500), () {
      if (_isTyping) {
        _isTyping = false;
        ref
            .read(chatRoomViewModelProvider(roomId).notifier)
            .sendStoppedTypingIndicator();
      }
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(chatRoomViewModelProvider(roomId).notifier).loadMoreMessages();
    }
  }

  Future<void> _sendMessage() async {
    final message = _messageController.text.trim();
    if (message.isEmpty) return;

    _messageController.clear();
    _isTyping = false;

    final success = await ref
        .read(chatRoomViewModelProvider(roomId).notifier)
        .sendMessage(message);

    if (!success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('메시지 전송에 실패했습니다')),
      );
    }
  }

  Future<void> _pickAndSendImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1080,
      maxHeight: 1920,
      imageQuality: 80,
    );

    if (pickedFile != null) {
      final imageFile = File(pickedFile.path);
      final success = await ref
          .read(chatRoomViewModelProvider(roomId).notifier)
          .sendMessage('', imageFile: imageFile);

      if (!success && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('이미지 전송에 실패했습니다')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final chatRoomAsync = ref.watch(chatRoomViewModelProvider(roomId));

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: _buildAppBar(context, chatRoomAsync),
      body: chatRoomAsync.when(
        data: (chatRoom) => Column(
          children: [
            _ChatRoomTicketHeader(ticket: chatRoom.ticket),
            const SizedBox(height: AppSpacing.sm),
            const Divider(height: 1, color: Color(0xFFF1F5F9)),
            const SizedBox(height: AppSpacing.sm),
            Expanded(
              child: _ChatMessageList(
                messages: chatRoom.messages,
                scrollController: _scrollController,
              ),
            ),
            if (chatRoom.canRequestPayment ||
                chatRoom.canConfirmPurchase ||
                chatRoom.canCancelTransaction)
              _ChatRoomActionBar(
                chatRoom: chatRoom,
                onRequestPayment: () => _showRequestPaymentDialog(chatRoom),
                onConfirmPurchase: () => _showConfirmPurchaseDialog(chatRoom),
                onCancelTransaction: () => _showCancelTransactionDialog(chatRoom),
              ),
            _ChatInputBar(
              controller: _messageController,
              canSendMessage: chatRoom.canSendMessage,
              onSend: _sendMessage,
              onPickImage: _pickAndSendImage,
            ),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('오류가 발생했습니다',
                  style: AppTextStyles.body1
                      .copyWith(color: AppColors.textSecondary)),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => ref
                    .read(chatRoomViewModelProvider(roomId).notifier)
                    .refresh(),
                child: const Text('다시 시도'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(
      BuildContext context, AsyncValue<ChatRoomDetailUiModel> chatRoomAsync) {
    final title = chatRoomAsync.value?.seller.nickname ?? '채팅';

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
            title,
            style: AppTextStyles.heading3.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            chatRoomAsync.value?.statusName ?? '',
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

  void _showRequestPaymentDialog(ChatRoomDetailUiModel chatRoom) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('결제 요청'),
        content: Text('${chatRoom.ticket.price}의 결제를 요청하시겠습니까?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('취소'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              if (chatRoom.transaction != null) {
                await ref
                    .read(chatRoomViewModelProvider(roomId).notifier)
                    .requestPayment(chatRoom.transaction!.transactionId);
              }
            },
            child: const Text('요청'),
          ),
        ],
      ),
    );
  }

  void _showConfirmPurchaseDialog(ChatRoomDetailUiModel chatRoom) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('구매 확정'),
        content: const Text('구매를 확정하시겠습니까? 확정 후에는 취소할 수 없습니다.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('취소'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              if (chatRoom.transaction != null) {
                await ref
                    .read(chatRoomViewModelProvider(roomId).notifier)
                    .confirmPurchase(chatRoom.transaction!.transactionId);
              }
            },
            child: const Text('확정'),
          ),
        ],
      ),
    );
  }

  void _showCancelTransactionDialog(ChatRoomDetailUiModel chatRoom) {
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
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('닫기'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.destructive),
            onPressed: () async {
              Navigator.pop(context);
              if (chatRoom.transaction != null) {
                await ref
                    .read(chatRoomViewModelProvider(roomId).notifier)
                    .cancelTransaction(
                      chatRoom.transaction!.transactionId,
                      reasonController.text.trim(),
                    );
              }
            },
            child: const Text('취소'),
          ),
        ],
      ),
    );
  }
}

class _ChatRoomTicketHeader extends StatelessWidget {
  final TicketInfoUiModel ticket;

  const _ChatRoomTicketHeader({required this.ticket});

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
              image: ticket.thumbnailUrl != null
                  ? DecorationImage(
                      image: CachedNetworkImageProvider(ticket.thumbnailUrl!),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ticket.title,
                  style: AppTextStyles.body1.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                ticket.price,
                style: AppTextStyles.heading3.copyWith(
                  color: AppColors.success,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              const Icon(Icons.keyboard_arrow_down,
                  color: AppColors.textTertiary),
            ],
          ),
        ],
      ),
    );
  }
}

class _ChatMessageList extends StatelessWidget {
  final List<MessageUiModel> messages;
  final ScrollController scrollController;

  const _ChatMessageList({
    required this.messages,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    if (messages.isEmpty) {
      return const Center(
        child: Text('메시지가 없습니다', style: TextStyle(color: AppColors.textSecondary)),
      );
    }

    return ListView.separated(
      controller: scrollController,
      reverse: true,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      itemBuilder: (context, index) {
        final message = messages[index];
        return _ChatBubble(message: message);
      },
      separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.sm),
      itemCount: messages.length,
    );
  }
}

class _ChatBubble extends StatelessWidget {
  final MessageUiModel message;

  const _ChatBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    final isMine = message.isMyMessage;
    final bubbleColor = isMine ? AppColors.primary : Colors.white;
    final textColor =
        isMine ? AppColors.primaryForeground : AppColors.textPrimary;

    return Row(
      mainAxisAlignment:
          isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
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
            crossAxisAlignment:
                isMine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              if (message.imageUrl != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    imageUrl: message.imageUrl!,
                    width: 200,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      width: 200,
                      height: 150,
                      color: Colors.grey[300],
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) => Container(
                      width: 200,
                      height: 150,
                      color: Colors.grey[300],
                      child: const Icon(Icons.error),
                    ),
                  ),
                ),
              if (message.message != null && message.message!.isNotEmpty)
                Container(
                  margin: message.imageUrl != null
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
                      bottomLeft: isMine
                          ? const Radius.circular(16)
                          : const Radius.circular(4),
                      bottomRight: isMine
                          ? const Radius.circular(4)
                          : const Radius.circular(16),
                    ),
                  ),
                  child: Text(
                    message.message!,
                    style: AppTextStyles.body2.copyWith(
                      color: textColor,
                      height: 1.4,
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 6),
        Text(
          message.timeDisplay,
          style: AppTextStyles.caption.copyWith(
            fontSize: 11,
            color: AppColors.textTertiary,
          ),
        ),
      ],
    );
  }
}

class _ChatRoomActionBar extends StatelessWidget {
  final ChatRoomDetailUiModel chatRoom;
  final VoidCallback onRequestPayment;
  final VoidCallback onConfirmPurchase;
  final VoidCallback onCancelTransaction;

  const _ChatRoomActionBar({
    required this.chatRoom,
    required this.onRequestPayment,
    required this.onConfirmPurchase,
    required this.onCancelTransaction,
  });

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
          if (chatRoom.canRequestPayment)
            Expanded(
              child: OutlinedButton(
                onPressed: onRequestPayment,
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  side: const BorderSide(color: Color(0xFFE2E8F0)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  '결제 요청',
                  style: AppTextStyles.body2.copyWith(fontSize: 13),
                ),
              ),
            ),
          if (chatRoom.canRequestPayment &&
              (chatRoom.canConfirmPurchase || chatRoom.canCancelTransaction))
            const SizedBox(width: AppSpacing.sm),
          if (chatRoom.canConfirmPurchase)
            Expanded(
              child: OutlinedButton(
                onPressed: onConfirmPurchase,
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
          if (chatRoom.canConfirmPurchase && chatRoom.canCancelTransaction)
            const SizedBox(width: AppSpacing.sm),
          if (chatRoom.canCancelTransaction)
            Expanded(
              child: OutlinedButton(
                onPressed: onCancelTransaction,
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

class _ChatInputBar extends StatelessWidget {
  final TextEditingController controller;
  final bool canSendMessage;
  final VoidCallback onSend;
  final VoidCallback onPickImage;

  const _ChatInputBar({
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
              icon: const Icon(Icons.add_circle_outline,
                  color: AppColors.textSecondary),
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
                    hintText:
                        canSendMessage ? '메시지를 입력하세요' : '메시지를 보낼 수 없습니다',
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
                child: const Icon(Icons.arrow_upward,
                    color: AppColors.primaryForeground, size: 22),
              ),
              onPressed: canSendMessage ? onSend : null,
            ),
          ],
        ),
      ),
    );
  }
}
