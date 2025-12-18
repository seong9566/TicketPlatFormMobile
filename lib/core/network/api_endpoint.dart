class ApiEndpoint {
  const ApiEndpoint._();

  static const String baseUrl = 'http://localhost:5224'; // 맥 기준 로컬 호스트

  // Home
  static const String home = '/api/home';

  // Auth

  static const String login = '/api/v1/auth/login';
  static const String signup = '/api/v1/auth/signup';
  static const String logout = '/api/v1/auth/logout';

  // Ticketing
  static const String ticketingInfo = '/api/v1/ticketing/info';
  static const String ticketListings = '/api/v1/ticketing/listings';
  static const String ticketDetail = '/api/v1/ticketing/detail';
}
