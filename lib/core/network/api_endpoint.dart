import 'dart:io';

class ApiEndpoint {
  const ApiEndpoint._();

  static String get baseUrl {
    // 5244는 서버 실행 포트
    // 에뮬레이터 : 10.0.2.2:5224
    // 시뮬레이터 : 127.0.0.1:5244
    if (Platform.isAndroid) return 'http://192.168.10.16:5224';
    return 'http://localhost:5224';
  }

  // Home
  static const String home = '/api/home';
  static const String events = '/api/events';

  // Auth

  static const String login = '/auth/login';
  static const String signup = '/auth/sign';
  static const String logout = '/auth/logout';
  static const String tokenRefresh = '/auth/refresh';

  // Ticketing
  static const String ticketingInfo = '/api/ticketing/info';
  static const String ticketListings = '/api/ticketing/listings';
  static const String ticketDetail = '/api/tickets/detail';

  static const String eventTickets = '/api/events/tickets';

  // Favorites
  static const String favoriteTickets = '/api/favorites/tickets';

  // Chat
  static const String chatRooms = '/api/chat/rooms';
  static const String chatMessages = '/api/chat/messages';
  static const String chatRoomDetail = '/api/chat/rooms/detail';
  static const String chatRoomRead = '/api/chat/rooms/read';
  static const String requestPayment = '/api/chat/rooms/request-payment';
  static const String confirmPurchase = '/api/chat/rooms/confirm-purchase';
  static const String cancelTransaction = '/api/chat/rooms/cancel';
  static const String chatMessageImageUrl = '/api/chat/messages/image-url';

  // Sell
  // Categories는 로컬에서 Enum으로 관리 중
  static const String sellCategories = '/api/sell/categories';
  static const String sellEvents = '/api/sell/events';
  static const String sellEventSchedules = '/api/sell/events/schedules';
  static const String sellSeatOptions = '/api/sell/events/seat-options';
  static const String sellTickets = '/api/sell/tickets';
  static const String sellMyTickets = '/api/sell/my-tickets';

  // SignalR Hub
  static String get chatHub => '$baseUrl/hubs/chat';
}
