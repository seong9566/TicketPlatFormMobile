import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/transaction_entity.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_list_viewmodel.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_room_viewmodel.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_message_list.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_room_action_bar.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_viewmodel.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_room_ticket_header.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_input_bar.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_room_menu_bottom_sheet.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_room_dialog_helper.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
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
  final List<File> _selectedImages = [];

  int get roomId => int.parse(widget.chatRoomId);

  @override
  void initState() {
    super.initState();

    // 채팅방 입장: 현재 보고 있는 방 설정 + 읽음 처리
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final notifier = ref.read(chatListViewModelProvider.notifier);
      notifier.setCurrentRoomId(roomId); // 해당 방 메시지는 unread 증가 안함
      notifier.resetUnreadCount(roomId); // 기존 unread 초기화
    });

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
    final images = List<File>.from(_selectedImages);

    if (message.isEmpty && images.isEmpty) return;

    _messageController.clear();
    setState(() => _selectedImages.clear());
    _isTyping = false;

    await ref
        .read(chatRoomViewModelProvider(roomId).notifier)
        .sendMessage(message, imageFiles: images.isNotEmpty ? images : null);
  }

  Future<void> _pickImage() async {
    final remainingSlots = 3 - _selectedImages.length;
    if (remainingSlots <= 0) {
      _showErrorSnackBar('사진은 최대 3장까지 첨부할 수 있습니다');
      return;
    }

    final picker = ImagePicker();
    final pickedFiles = await picker.pickMultiImage(
      maxWidth: 1080,
      maxHeight: 1920,
      imageQuality: 80,
    );

    if (pickedFiles.isNotEmpty) {
      final newImages = pickedFiles
          .take(remainingSlots)
          .map((xFile) => File(xFile.path))
          .toList();

      if (pickedFiles.length > remainingSlots) {
        _showErrorSnackBar(
          '최대 3장까지만 선택됩니다 (${pickedFiles.length - remainingSlots}장 제외됨)',
        );
      }

      setState(() => _selectedImages.addAll(newImages));
    }
  }

  Future<void> _takePhoto() async {
    if (_selectedImages.length >= 3) {
      _showErrorSnackBar('사진은 최대 3장까지 첨부할 수 있습니다');
      return;
    }

    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(
        source: ImageSource.camera,
        maxWidth: 1080,
        maxHeight: 1920,
        imageQuality: 80,
      );

      if (pickedFile != null) {
        setState(() => _selectedImages.add(File(pickedFile.path)));
      }
    } catch (e) {
      _showErrorSnackBar('카메라를 실행할 수 없습니다. 권한을 확인해주세요.');
    }
  }

  void _removeImage(int index) {
    setState(() => _selectedImages.removeAt(index));
  }

  void _showErrorSnackBar(String message) {
    if (mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final chatRoomAsync = ref.watch(chatRoomViewModelProvider(roomId));

    return PopScope(
      onPopInvokedWithResult: (result, didPop) {
        if (result) {
          // 채팅방 퇴장: 현재 보고 있는 방 해제 (state 수정 없으므로 안전)
          ref.read(chatListViewModelProvider.notifier).setCurrentRoomId(null);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackground,
        appBar: _buildAppBar(context, chatRoomAsync),
        body: chatRoomAsync.when(
          data: (chatRoom) => Column(
            children: [
              // 이벤트 + 티켓 정보
              ChatRoomTicketHeader(
                ticket: chatRoom.ticket,
                canRequestPayment: chatRoom.canRequestPayment,
                buttonText:
                    (ref
                            .watch(profileViewModelProvider)
                            .value
                            ?.profile
                            ?.userId ==
                        chatRoom.buyer.userId)
                    ? '결제하기'
                    : '결제 요청',
                onRequestPayment: () async {
                  final myUserId = ref
                      .read(profileViewModelProvider)
                      .value
                      ?.profile
                      ?.userId;
                  final isBuyer = myUserId == chatRoom.buyer.userId;

                  if (isBuyer) {
                    ChatRoomDialogHelper.showRequestPaymentDialog(
                      context: context,
                      ref: ref,
                      chatRoom: chatRoom,
                      isBuyer: true,
                      viewModel: ref.read(
                        chatRoomViewModelProvider(roomId).notifier,
                      ),
                    );
                  } else {
                    // 판매자: 다이얼로그 없이 즉시 결제 요청 (채팅 카드로 전송됨)
                    await ref
                        .read(chatRoomViewModelProvider(roomId).notifier)
                        .requestPayment();
                  }
                },
                onViewTicketDetail: () => context.push(
                  '${AppRouterPath.ticketDetail.path}/${chatRoom.ticket.ticketId}',
                ),
              ),
              const SizedBox(height: AppSpacing.xs),
              const Divider(height: 1, color: AppColors.muted),

              // 채팅 메세지
              Expanded(
                child: ChatMessageList(
                  messages: chatRoom.messages,
                  scrollController: _scrollController,
                ),
              ),

              // 하단 입력 필드
              // 결제 대기(pending_payment) 상태에서는 구매 확정 버튼이 의미가 없으므로 노출하지 않음
              if ((chatRoom.canConfirmPurchase ||
                      chatRoom.canCancelTransaction) &&
                  chatRoom.transaction?.status !=
                      TransactionStatus.pendingPayment)
                ChatRoomActionBar(
                  chatRoom: chatRoom,
                  onConfirmPurchase: () =>
                      ChatRoomDialogHelper.showConfirmPurchaseDialog(
                        context: context,
                        chatRoom: chatRoom,
                        viewModel: ref.read(
                          chatRoomViewModelProvider(roomId).notifier,
                        ),
                      ),
                  onCancelTransaction: () =>
                      ChatRoomDialogHelper.showCancelTransactionDialog(
                        context: context,
                        chatRoom: chatRoom,
                        viewModel: ref.read(
                          chatRoomViewModelProvider(roomId).notifier,
                        ),
                      ),
                ),
              ChatInputBar(
                controller: _messageController,
                canSendMessage: chatRoom.canSendMessage,
                onSend: _sendMessage,
                onPickImage: _pickImage,
                onTakePhoto: _takePhoto,
                selectedImages: _selectedImages,
                onRemoveImage: _removeImage,
              ),
            ],
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => _buildErrorState(),
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
        onPressed: () => context.pop(),
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
          onPressed: () => _showMenuBottomSheet(),
        ),
      ],
      centerTitle: true,
    );
  }

  Widget _buildErrorState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '오류가 발생했습니다',
            style: AppTextStyles.body1.copyWith(color: AppColors.textSecondary),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () =>
                ref.read(chatRoomViewModelProvider(roomId).notifier).refresh(),
            child: const Text('다시 시도'),
          ),
        ],
      ),
    );
  }

  void _showMenuBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => ChatRoomMenuBottomSheet(
        onLeaveRoom: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('채팅방 나가기 기능은 준비 중입니다')));
        },
      ),
    );
  }
}
