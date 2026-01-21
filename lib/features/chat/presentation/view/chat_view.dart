import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/viewmodels/chat_list_viewmodel.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_empty_state.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_room_card.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_search_bar.dart';

class ChatView extends ConsumerStatefulWidget {
  const ChatView({super.key});

  @override
  ConsumerState<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends ConsumerState<ChatView> {
  bool _isSearching = false;

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
    });
    if (!_isSearching) {
      ref.read(chatListViewModelProvider.notifier).updateSearchQuery('');
    }
  }

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
    if (_isSearching) return null;

    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        '채팅',
        style: AppTextStyles.heading2.copyWith(color: AppColors.textPrimary),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: AppColors.textPrimary),
          onPressed: _toggleSearch,
        ),
      ],
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
        if (_isSearching)
          ChatSearchBar(
            onChanged: (query) {
              ref
                  .read(chatListViewModelProvider.notifier)
                  .updateSearchQuery(query);
            },
            onClose: _toggleSearch,
          ),
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

                    return ChatRoomCard(
                      chatRoom: chatRoom,
                      onTap: () {
                        context.pushNamed(
                          'chatRoom',
                          pathParameters: {'id': chatRoom.roomId.toString()},
                        );
                      },
                      key: ValueKey(chatRoom.roomId),
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
}
