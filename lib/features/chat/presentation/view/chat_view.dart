import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_empty_state.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/widgets/chat_room_card.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Replace with actual ViewModel data
    final chatRooms = ChatRoomUiModel.mockData();
    final isEmpty = chatRooms.isEmpty;

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
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
            onPressed: () {
              // TODO: Implement search functionality
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: AppColors.border, height: 1),
        ),
      ),
      body: isEmpty
          ? const ChatEmptyState()
          : ListView.builder(
              itemCount: chatRooms.length,
              itemBuilder: (context, index) {
                final chatRoom = chatRooms[index];
                return ChatRoomCard(
                  chatRoom: chatRoom,
                  onTap: () {
                    // TODO: Navigate to chat detail
                  },
                );
              },
            ),
    );
  }
}
