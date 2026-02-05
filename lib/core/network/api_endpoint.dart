import 'dart:io';

class ApiEndpoint {
  const ApiEndpoint._();

  static String get baseUrl {
    const int port = 5224;

    if (Platform.isIOS) {
      // iOS USB 인터넷 공유: Mac의 bridge100 IP 사용
      return 'http://192.168.2.1:$port';
    }

    // Android Wi-Fi: Mac의 유선 네트워크 IP 사용
    return 'http://123.2.156.230:$port';
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
  static const String chatRoomByTicket = '/api/chat/rooms/by-ticket';
  static const String chatRoomRead = '/api/chat/rooms/read';
  static const String requestPayment = '/api/chat/rooms/request-payment';
  static const String confirmPurchase = '/api/chat/rooms/confirm-purchase';
  static const String cancelTransaction = '/api/chat/rooms/cancel';
  static const String chatRoomLeave = '/api/chat/rooms/leave';
  static const String chatMessageImageUrl = '/api/chat/messages/image-url';

  // Sell
  // Categories는 로컬에서 Enum으로 관리 중
  static const String sellCategories = '/api/sell/categories';
  static const String sellEvents = '/api/sell/events';
  static const String sellEventSchedules = '/api/sell/events/schedules';
  static const String sellSeatOptions = '/api/sell/events/seat-options';
  static const String sellOriginalPrice = '/api/sell/events/original-price';
  static const String tradeMethods = '/api/sell/trade-methods';
  static const String sellFeatures = '/api/sell/features';
  static const String sellTickets = '/api/sell/tickets';
  static const String sellMyTickets = '/api/sell/my-tickets';
  static const String sellTicketImageRefresh =
      '/api/sell/tickets/images/refresh';

  // Transactions
  static const String salesHistory = '/api/transactions/sales';
  static const String purchasesHistory = '/api/transactions/purchases';

  // Profile
  static const String myProfile = '/api/users/profile';
  static String userProfile(int userId) => '/api/users/profile/user';
  static const String profileImageRefresh = '/api/users/profile/image-refresh';

  // Payment
  static const String paymentReq = '/api/payment/request';
  static const String paymentConfirm = '/api/payment/confirm';
  static const String paymentCancel = '/api/payment/cancel';

  // SignalR Hub
  static String get chatHub => '$baseUrl/hubs/chat';
}
