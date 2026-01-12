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
}
