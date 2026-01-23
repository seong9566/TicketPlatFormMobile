import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class AppLogger {
  const AppLogger._();

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0, // 호출 스택 제외 (함수명을 직접 찍으므로)
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
  );

  static void d(String message) {
    _logger.d(message);
  }

  static void e(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  static void i(String message) {
    _logger.i(message);
  }

  static void w(String message) {
    _logger.w(message);
  }

  static void t(String message) {
    _logger.t(message);
  }
}

class ApiLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final method = options.method;
    final baseUrl = options.baseUrl;
    final apiPath = options.path;

    // FormData는 jsonEncode 불가하므로 별도 처리
    String data;
    if (options.data is FormData) {
      final formData = options.data as FormData;
      final fields = formData.fields
          .map((e) => '${e.key}: ${e.value}')
          .join(', ');
      final files = formData.files
          .map((e) => '${e.key}: ${e.value.filename}')
          .join(', ');
      data = 'FormData(fields: {$fields}, files: [$files])';
    } else if (options.data != null) {
      data = jsonEncode(options.data);
    } else {
      data = 'null';
    }

    final queryParams = options.queryParameters.isNotEmpty
        ? jsonEncode(options.queryParameters)
        : 'null';
    final apiName = options.extra['apiName'] ?? 'Unknown';

    AppLogger.i(
      '🚀 [REQUEST] function: [$apiName()], method: $method, url: $baseUrl, api: $apiPath, data: $data, queryParam: $queryParams',
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final baseUrl = response.requestOptions.baseUrl;
    final apiPath = response.requestOptions.path;
    final statusCode = response.statusCode;
    final data = response.data != null ? jsonEncode(response.data) : 'null';
    final apiName = response.requestOptions.extra['apiName'] ?? 'Unknown';

    AppLogger.i(
      '✅ [RESPONSE] function: [$apiName()], url: $baseUrl, api: $apiPath, statusCode: $statusCode\nResponse Data: $data',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final baseUrl = err.requestOptions.baseUrl;
    final apiPath = err.requestOptions.path;
    final statusCode = err.response?.statusCode;
    final apiName = err.requestOptions.extra['apiName'] ?? 'Unknown';

    // /api/chat/rooms/by-ticket의 404는 정상 케이스이므로 로그 제외
    final isGetChatRoomByTicket404 =
        apiPath == '/api/chat/rooms/by-ticket' && statusCode == 404;

    if (!isGetChatRoomByTicket404) {
      final message = err.message;
      final data = err.response?.data != null
          ? jsonEncode(err.response?.data)
          : 'null';

      AppLogger.e(
        '❌ [ERROR] function: [$apiName()], url: $baseUrl, api: $apiPath, statusCode: $statusCode, message: $message\nError Data: $data',
      );
    }

    super.onError(err, handler);
  }
}
