class ApiEndpoint {
  const ApiEndpoint._();

  // Home
  static const String home = '/api/home';
  static const String events = '/api/events';

  // Auth

  static const String login = '/api/auth/login';
  static const String signup = '/api/auth/sign';
  static const String logout = '/api/auth/logout';
  static const String tokenRefresh = '/api/auth/refresh';
  static const String socialLogin = '/api/auth/social/login';

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

  // Sales Dashboard
  static const String salesDashboard = '/api/sell/sales-dashboard';
  static String salesDashboardEventTickets(int eventId) =>
      '/api/sell/sales-dashboard/$eventId';

  // Transactions
  static const String purchasesHistory = '/api/transactions/purchases';

  // Profile
  static const String myProfile = '/api/users/profile';
  static String userProfile(int userId) => '/api/users/profile/user';
  static const String profileImageRefresh = '/api/users/profile/image-refresh';
  static const String changePassword = '/api/users/password';

  // Payment
  static const String paymentReq = '/api/payment/request';
  static const String paymentConfirm = '/api/payment/confirm';
  static const String paymentCancel = '/api/payment/cancel';

  // Bank Account
  static const String bankAccount = '/api/bank-account';
  static const String bankAccountMe = '/api/bank-account/me';
  static const String bankAccountVerifyRequest =
      '/api/bank-account/verify/request';
  static const String bankAccountVerifyConfirm =
      '/api/bank-account/verify/confirm';

  // Notification
  static const String notificationToken = '/api/notifications/token';
  static const String notifications = '/api/notifications';
  static const String notificationsReadAll = '/api/notifications/read-all';
  static const String notificationsUnreadCount =
      '/api/notifications/unread-count';
  static String notificationRead(int id) => '/api/notifications/$id/read';

  // Dispute
  static const String disputes = '/api/disputes';
  static String disputeDetail(int disputeId) => '/api/disputes/$disputeId';
  static String disputeEvidence(int disputeId) =>
      '/api/disputes/$disputeId/evidence';
  static String disputeCancel(int disputeId) =>
      '/api/disputes/$disputeId/cancel';

  // Reputation
  static const String reputations = '/api/reputations';
  static String reputationCheck(int transactionId) =>
      '/api/reputations/check/$transactionId';
}
