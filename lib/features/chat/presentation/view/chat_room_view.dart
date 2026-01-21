import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_room_viewmodel.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_message_list.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_room_action_bar.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_room_ticket_header.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_input_bar.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_room_menu_bottom_sheet.dart';

import 'package:go_router/go_router.dart';

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
      ref
          .read(chatRoomViewModelProvider(roomId).notifier)
          .sendTypingIndicator();
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
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('메시지 전송에 실패했습니다')));
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
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('이미지 전송에 실패했습니다')));
      }
    }
  }

  void _showRequestPaymentDialog(ChatRoomDetailUiModel chatRoom) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('결제 요청'),
        content: Text('${chatRoom.ticket.price}의 결제를 요청하시겠습니까?'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('취소')),
          ElevatedButton(
            onPressed: () async {
              context.pop();
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
          TextButton(onPressed: () => context.pop(), child: const Text('취소')),
          ElevatedButton(
            onPressed: () async {
              context.pop();
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
          TextButton(onPressed: () => context.pop(), child: const Text('닫기')),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.destructive,
            ),
            onPressed: () async {
              context.pop();
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

  @override
  Widget build(BuildContext context) {
    final chatRoomAsync = ref.watch(chatRoomViewModelProvider(roomId));

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: _buildAppBar(context, chatRoomAsync),
      body: chatRoomAsync.when(
        data: (chatRoom) => Column(
          children: [
            ChatRoomTicketHeader(ticket: chatRoom.ticket),
            const SizedBox(height: AppSpacing.sm),
            const Divider(height: 1, color: AppColors.muted),
            const SizedBox(height: AppSpacing.sm),
            Expanded(
              child: ChatMessageList(
                messages: chatRoom.messages,
                scrollController: _scrollController,
              ),
            ),
            if (chatRoom.canRequestPayment ||
                chatRoom.canConfirmPurchase ||
                chatRoom.canCancelTransaction)
              ChatRoomActionBar(
                chatRoom: chatRoom,
                onRequestPayment: () => _showRequestPaymentDialog(chatRoom),
                onConfirmPurchase: () => _showConfirmPurchaseDialog(chatRoom),
                onCancelTransaction: () =>
                    _showCancelTransactionDialog(chatRoom),
              ),
            ChatInputBar(
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
              Text(
                '오류가 발생했습니다',
                style: AppTextStyles.body1.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
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
    BuildContext context,
    AsyncValue<ChatRoomDetailUiModel> chatRoomAsync,
  ) {
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
          onPressed: () {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              builder: (context) => ChatRoomMenuBottomSheet(
                onLeaveRoom: () {
                  // TODO: Implement leave room functionality
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('채팅방 나가기 기능은 준비 중입니다')),
                  );
                },
              ),
            );
          },
        ),
      ],
      centerTitle: true,
    );
  }
}
