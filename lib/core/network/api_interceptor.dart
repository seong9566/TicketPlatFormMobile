import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/token_refresh_service.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

class ApiInterceptor extends Interceptor {
  ApiInterceptor({
    required this.tokenStorage,
    required this.tokenRefreshService,
    required this.onTokenExpired,
  });

  final TokenStorage tokenStorage;
  final TokenRefreshService tokenRefreshService;
  final Future<void> Function() onTokenExpired;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await tokenStorage.getAccessToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Access Token 만료 시 (401 Unauthorized)
    if (err.response?.statusCode == 401) {
      final path = err.requestOptions.path;

      // 로그인이나 토큰 갱신 요청 자체에서 401이 발생한 경우, 갱신을 시도하지 않음 (무한 루프 방지)
      if (path.contains(ApiEndpoint.tokenRefresh) ||
          path.contains(ApiEndpoint.login)) {
        return handler.next(err);
      }

      // TokenRefreshService를 통해 중앙화된 토큰 갱신
      final refreshSuccess = await tokenRefreshService.refresh();

      if (refreshSuccess) {
        // 갱신 성공 → 최신 토큰으로 요청 재시도
        return _retryRequest(err.requestOptions, handler);
      } else {
        // 갱신 실패 → 세션 만료 처리
        AppLogger.w('⚠️ [ApiInterceptor] 토큰 갱신 실패, 세션 만료 처리');
        await onTokenExpired();
        return handler.next(err);
      }
    }
    handler.next(err);
  }

  Future<void> _retryRequest(
    RequestOptions options,
    ErrorInterceptorHandler handler,
  ) async {
    final dio = Dio(BaseOptions(baseUrl: options.baseUrl));
    final token = await tokenStorage.getAccessToken();

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    } else {
      options.headers.remove('Authorization');
    }

    try {
      final response = await dio.request(
        options.path,
        options: Options(
          method: options.method,
          headers: options.headers,
          contentType: options.contentType,
          responseType: options.responseType,
          receiveTimeout: options.receiveTimeout,
          sendTimeout: options.sendTimeout,
          validateStatus: options.validateStatus,
          extra: options.extra,
        ),
        data: options.data,
        queryParameters: options.queryParameters,
      );
      return handler.resolve(response);
    } on DioException catch (e) {
      return handler.next(e);
    }
  }
}
