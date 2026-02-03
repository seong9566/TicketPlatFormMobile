import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_list_viewmodel.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_empty_state.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_room_card.dart';

class ChatView extends ConsumerStatefulWidget {
  const ChatView({super.key});

  @override
  ConsumerState<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends ConsumerState<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  /// 앱바 빌드
  PreferredSizeWidget? _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        '채팅',
        style: AppTextStyles.heading2.copyWith(color: AppColors.textPrimary),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(color: AppColors.border, height: 1),
      ),
    );
  }

  /// 바디 빌드
  Widget _buildBody() {
    final chatRoomsAsync = ref.watch(chatListViewModelProvider);

    return Column(
      children: [
        Expanded(
          child: chatRoomsAsync.when(
            data: (chatRooms) {
              if (chatRooms.isEmpty) {
                return const ChatEmptyState();
              }

              return RefreshIndicator(
                onRefresh: () =>
                    ref.read(chatListViewModelProvider.notifier).refresh(),
                child: ListView.builder(
                  itemCount: chatRooms.length,
                  itemBuilder: (context, index) {
                    final chatRoom = chatRooms[index];

                    if (index == chatRooms.length - 1) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        ref.read(chatListViewModelProvider.notifier).loadMore();
                      });
                    }

                    return Dismissible(
                      key: ValueKey('chat-room-${chatRoom.roomId}'),
                      direction: DismissDirection.endToStart,
                      confirmDismiss: (_) => _handleLeaveRoom(chatRoom),
                      background: Container(),
                      secondaryBackground: _buildSwipeBackground(
                        alignment: Alignment.centerRight,
                      ),
                      child: ChatRoomCard(
                        chatRoom: chatRoom,
                        onTap: () {
                          context.pushNamed(
                            'chatRoom',
                            pathParameters: {'id': chatRoom.roomId.toString()},
                          );
                        },
                      ),
                    );
                  },
                ),
              );
            },
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
                    onPressed: () =>
                        ref.read(chatListViewModelProvider.notifier).refresh(),
                    child: const Text('다시 시도'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSwipeBackground({required Alignment alignment}) {
    return Container(
      alignment: alignment,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: AppColors.destructive,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.exit_to_app, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            '나가기',
            style: AppTextStyles.body1.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> _handleLeaveRoom(ChatRoomListUiModel chatRoom) async {
    final confirmed = await _showLeaveRoomDialog(chatRoom);
    if (!confirmed) return false;
    if (!mounted) return false;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      ),
    );

    final success = await ref
        .read(chatListViewModelProvider.notifier)
        .leaveRoom(chatRoom.roomId);

    if (!mounted) return false;
    Navigator.of(context, rootNavigator: true).pop();

    if (!success) {
      _showSnackBar('채팅방 나가기에 실패했습니다. 잠시 후 다시 시도해주세요.');
      return false;
    }

    _showSnackBar('채팅방을 나갔어요');
    return true;
  }

  Future<bool> _showLeaveRoomDialog(ChatRoomListUiModel chatRoom) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('채팅방 나가기'),
        content: const Text('채팅방을 나가면 대화 내역을 다시 볼 수 없습니다. 나가시겠어요?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(
              '취소',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(
              '나가기',
              style: AppTextStyles.body2.copyWith(color: AppColors.destructive),
            ),
          ),
        ],
      ),
    );

    return result ?? false;
  }

  void _showSnackBar(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}
