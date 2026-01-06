class ChatRoomUiModel {
  final String id;
  final String userName;
  final String? userProfileImageUrl;
  final String lastMessage;
  final String timeDisplay;
  final int unreadCount;
  final bool isHighlighted;

  ChatRoomUiModel({
    required this.id,
    required this.userName,
    this.userProfileImageUrl,
    required this.lastMessage,
    required this.timeDisplay,
    this.unreadCount = 0,
    this.isHighlighted = false,
  });

  // Mock data for UI demonstration
  static List<ChatRoomUiModel> mockData() {
    return [
      ChatRoomUiModel(
        id: '1',
        userName: '티켓판매자123',
        lastMessage: '네, 거래 가능합니다. 어디서 만날까요?',
        timeDisplay: '오후 2:15',
        unreadCount: 2,
        isHighlighted: true,
      ),
      ChatRoomUiModel(
        id: '2',
        userName: '콘서트러버',
        lastMessage: '축시다른 날짜 티켓은 없으신가요?',
        timeDisplay: '어제',
        unreadCount: 0,
      ),
      ChatRoomUiModel(
        id: '3',
        userName: '뮤지컬팬',
        lastMessage: '감사합니다! 좋은 거래였어요.',
        timeDisplay: '5월10일',
        unreadCount: 0,
      ),
      ChatRoomUiModel(
        id: '4',
        userName: '스포츠팬',
        lastMessage: '확인했습니다.',
        timeDisplay: '5월9일',
        unreadCount: 0,
      ),
    ];
  }
}
