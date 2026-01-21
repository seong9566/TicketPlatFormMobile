import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';

/// 채팅 메시지 전송 이벤트
/// - ChatRoomViewModel에서 메시지 전송 완료 시 발행
/// - ChatListViewModel에서 구독하여 목록 실시간 업데이트
class ChatMessageEvent {
  final MessageEntity message;

  ChatMessageEvent(this.message);
}
