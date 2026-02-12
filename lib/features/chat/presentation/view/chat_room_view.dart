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
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/quantity_input_dialog.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/features/payment/presentation/viewmodels/payment_viewmodel.dart';

class ChatRoomView extends ConsumerStatefulWidget {
  final String chatRoomId;
  final bool fromTicketDetail;

  const ChatRoomView({
    super.key,
    required this.chatRoomId,
    this.fromTicketDetail = false,
  });

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

  /// 결제 로직 처리 및 결제 화면으로 이동 (구매자용)
  Future<void> _handleBuyerPaymentAction(ChatRoomDetailUiModel chatRoom) async {
    final transaction = chatRoom.transaction;
    if (transaction == null) return;

    final profile = ref.read(profileViewModelProvider).value?.profile;
    final paymentViewModel = ref.read(paymentViewModelProvider.notifier);
    final ticketInfo = chatRoom.ticket;
    // 결제 요청 정보 생성
    await paymentViewModel.requestPayment(
      transactionId: transaction.transactionId,
      amount: transaction.amount,
      orderName:
          "${ticketInfo.title} ${ticketInfo.location} ${ticketInfo.seatInfo} ${ticketInfo.dateTime}",
      customerName: profile?.nickname ?? '구매자',
      customerEmail: profile?.email ?? 'customer@example.com',
      eventTitle: ticketInfo.title,
      eventDate: ticketInfo.dateTime,
      seatInfo: ticketInfo.seatInfo,
      ticketImageUrl: ticketInfo.thumbnailUrl,
      venueName: ticketInfo.location,
      roomId: roomId,
    );
    final paymentState = ref.read(paymentViewModelProvider);

    // 에러 발생 시 처리
    if (paymentState.errorMessage != null) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(paymentState.errorMessage!),
          backgroundColor: AppColors.destructive,
        ),
      );
      return;
    }

    // 결제 화면으로 이동
    if (paymentState.paymentRequest != null) {
      if (!mounted) return;
      final success = await context.push<bool>(
        AppRouterPath.payment.path,
        extra: paymentState.paymentRequest,
      );

      if (success == true) {
        ref.read(chatRoomViewModelProvider(roomId).notifier).refresh();
      }
    }
  }

  Future<void> _handleSellerPaymentRequest(
    ChatRoomDetailUiModel chatRoom,
  ) async {
    final remainingQuantity = chatRoom.ticket.remainingQuantity;

    // Validation: Check if remaining quantity is available
    if (remainingQuantity == null || remainingQuantity <= 0) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('판매 가능한 티켓이 없습니다.'),
          backgroundColor: AppColors.destructive,
        ),
      );
      return;
    }

    final unitPrice = chatRoom.ticket.priceValue;

    final quantity = await showQuantityInputDialog(
      context: context,
      maxQuantity: remainingQuantity,
      unitPrice: unitPrice,
    );

    if (quantity == null) return; // User cancelled

    final success = await ref
        .read(chatRoomViewModelProvider(roomId).notifier)
        .requestPayment(quantity);

    if (!success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('결제 요청에 실패했습니다.'),
          backgroundColor: AppColors.destructive,
        ),
      );
    }
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
    showDialog(
      context: context,
      builder: (dialogContext) {
        // Dialog 내부에서 TextEditingController 생성
        final reasonController = TextEditingController();

        return AlertDialog(
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
              onPressed: () {
                reasonController.dispose();
                Navigator.of(dialogContext).pop();
              },
              child: const Text('닫기'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.destructive,
              ),
              onPressed: () async {
                final reason = reasonController.text.trim();
                reasonController.dispose();
                Navigator.of(dialogContext).pop();

                if (chatRoom.transaction != null) {
                  await ref
                      .read(chatRoomViewModelProvider(roomId).notifier)
                      .cancelTransaction(
                        chatRoom.transaction!.transactionId,
                        reason,
                      );
                }
              },
              child: const Text('취소'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final chatRoomAsync = ref.watch(chatRoomViewModelProvider(roomId));

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          return;
        }

        // 채팅방 퇴장 직전 읽음 동기화
        unawaited(
          ref
              .read(chatRoomViewModelProvider(roomId).notifier)
              .markCurrentRoomAsRead(),
        );

        // 채팅 목록의 unreadCount 즉시 반영
        final listNotifier = ref.read(chatListViewModelProvider.notifier);
        listNotifier.resetUnreadCount(roomId);

        // 현재 보고 있는 방 해제
        listNotifier.setCurrentRoomId(null);
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
                    await _handleBuyerPaymentAction(chatRoom);
                  } else {
                    // 판매자: 수량 입력 후 결제 요청
                    await _handleSellerPaymentRequest(chatRoom);
                  }
                },
                onViewTicketDetail: () {
                  if (widget.fromTicketDetail) {
                    context.pop();
                  } else {
                    context.push(
                      '${AppRouterPath.ticketDetail.path}/${chatRoom.ticket.ticketId}',
                    );
                  }
                },
              ),
              const SizedBox(height: AppSpacing.xs),
              const Divider(height: 1, color: AppColors.muted),

              // 채팅 메세지
              Expanded(
                child: ChatMessageList(
                  messages: chatRoom.messages,
                  scrollController: _scrollController,
                  chatRoom: chatRoom, // 정보 전달
                  onBuyerPayment: () => _handleBuyerPaymentAction(chatRoom),
                  onConfirmPurchase: () => _showConfirmPurchaseDialog(chatRoom),
                  onCancelTransaction: () =>
                      _showCancelTransactionDialog(chatRoom),
                ),
              ),

              // 하단 액션바
              // PaymentSuccessBubble이 구매 확정/거래 취소를 처리하므로,
              // paid 상태에서는 ActionBar를 숨김
              if ((chatRoom.canConfirmPurchase ||
                      chatRoom.canCancelTransaction) &&
                  chatRoom.transaction?.status !=
                      TransactionStatus.pendingPayment &&
                  chatRoom.transaction?.status != TransactionStatus.paid)
                ChatRoomActionBar(
                  chatRoom: chatRoom,
                  onConfirmPurchase: () => _showConfirmPurchaseDialog(chatRoom),
                  onCancelTransaction: () =>
                      _showCancelTransactionDialog(chatRoom),
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
      builder: (context) =>
          ChatRoomMenuBottomSheet(onLeaveRoom: _handleLeaveRoom),
    );
  }

  Future<void> _handleLeaveRoom() async {
    if (!mounted) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      ),
    );

    final success = await ref
        .read(chatRoomViewModelProvider(roomId).notifier)
        .leaveRoom();

    if (!mounted) return;

    Navigator.of(context, rootNavigator: true).pop();

    if (!success) {
      _showErrorSnackBar('채팅방 나가기에 실패했습니다. 잠시 후 다시 시도해주세요.');
      return;
    }

    await ref.read(chatListViewModelProvider.notifier).refresh();
    if (!mounted) return;
    context.pop(true);
  }
}
