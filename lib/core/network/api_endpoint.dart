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

  static const String login = '/api/v1/auth/login';
  static const String signup = '/api/v1/auth/signup';
  static const String logout = '/api/v1/auth/logout';

  // Ticketing
  static const String ticketingInfo = '/api/v1/ticketing/info';
  static const String ticketListings = '/api/v1/ticketing/listings';
  static const String ticketDetail = '/api/tickets/detail';

  static const String eventTickets = '/api/events/tickets';
}
