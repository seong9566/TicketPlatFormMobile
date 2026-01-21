import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/chat/domain/events/chat_message_event.dart';

part 'chat_event_bus.g.dart';

/// 채팅 이벤트를 위한 Event Bus
///
/// **역할**:
/// - ChatRoomViewModel에서 메시지 전송 시 이벤트 발행
/// - ChatListViewModel에서 구독하여 목록 업데이트
///
/// **Clean Architecture 준수**:
/// - Data Layer (Event Bus) ← Presentation Layer (ViewModel)
/// - ViewModels 간 직접 의존성 없음
class ChatEventBus {
  final _messageController = StreamController<ChatMessageEvent>.broadcast();

  Stream<ChatMessageEvent> get onMessageSent => _messageController.stream;

  void publishMessageSent(ChatMessageEvent event) {
    _messageController.add(event);
  }

  void dispose() {
    _messageController.close();
  }
}

@Riverpod(keepAlive: true)
ChatEventBus chatEventBus(Ref ref) {
  final bus = ChatEventBus();
  ref.onDispose(() => bus.dispose());
  return bus;
}
