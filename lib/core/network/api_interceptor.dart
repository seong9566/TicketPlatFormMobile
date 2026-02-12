import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

class ApiInterceptor extends Interceptor {
  ApiInterceptor({
    required this.tokenStorage,
    required this.onTokenExpired,
    required this.baseUrl,
  });

  final TokenStorage tokenStorage;
  final Future<void> Function() onTokenExpired;
  final String baseUrl;

  // 동시 다발적인 401 에러 발생 시 토큰 갱신을 한 번만 수행하기 위한 Completer
  Completer<void>? _refreshCompleter;

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

      // 이미 토큰 갱신이 진행 중이라면 해당 Completer의 Future를 기다린 후 재시도
      if (_refreshCompleter != null) {
        try {
          await _refreshCompleter!.future;
          return _retryRequest(err.requestOptions, handler);
        } catch (_) {
          // 갱신 실패 시의 처리는 진행 중인 주체가 담당하므로 여기서는 원래 에러를 던짐
          return handler.next(err);
        }
      }

      final refreshToken = await tokenStorage.getRefreshToken();

      if (refreshToken != null && refreshToken.isNotEmpty) {
        _refreshCompleter = Completer<void>();

        AppLogger.d(
          '🔄 [Token Refresh] Refresh token found, starting refresh process...',
        );

        try {
          await _refreshToken(refreshToken);
          _refreshCompleter?.complete();
          _refreshCompleter = null;
          return _retryRequest(err.requestOptions, handler);
        } catch (e, stackTrace) {
          _refreshCompleter?.completeError(e);
          _refreshCompleter = null;
          AppLogger.e('❌ [Token Refresh] Token refresh failed', e, stackTrace);

          // DioException인 경우 상세 정보 로깅
          if (e is DioException) {
            AppLogger.e(
              '❌ [Token Refresh] Status code: ${e.response?.statusCode}',
            );
            AppLogger.e('❌ [Token Refresh] Response data: ${e.response?.data}');
            AppLogger.e('❌ [Token Refresh] Error type: ${e.type}');
          }

          await tokenStorage.clearTokens();
          await onTokenExpired();
          return handler.next(err);
        }
      } else {
        // Refresh Token 없음
        AppLogger.w(
          '⚠️ [Token Refresh] No refresh token found, clearing tokens...',
        );
        await tokenStorage.clearTokens();
        await onTokenExpired();
      }
    }
    handler.next(err);
  }

  Future<void> _refreshToken(String refreshToken) async {
    // Refresh Token 검증
    AppLogger.d('🔄 [Token Refresh] Starting token refresh...');
    AppLogger.d(
      '🔄 [Token Refresh] Refresh token (first 30 chars): ${refreshToken.substring(0, refreshToken.length > 30 ? 30 : refreshToken.length)}...',
    );

    // Token 갱신 요청을 위한 전용 Dio 인스턴스 사용 (무한 루프 방지)
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ),
    );

    AppLogger.d(
      '🔄 [Token Refresh] Sending POST request to: ${ApiEndpoint.tokenRefresh}',
    );
    final response = await dio.post(
      ApiEndpoint.tokenRefresh,
      data: {'refreshToken': refreshToken},
    );

    AppLogger.d('🔄 [Token Refresh] Response status: ${response.statusCode}');

    AppLogger.d('🔄 [Token Refresh] Response status: ${response.statusCode}');

    if (response.statusCode == 200) {
      final data = response.data['data'];
      final newAccessToken = data['accessToken'];
      final newRefreshToken = data['refreshToken'];
      final newExpiresAt = data['expiresAt'];

      AppLogger.d('🔄 [Token Refresh] Response data received');
      AppLogger.d(
        '🔄 [Token Refresh] New access token exists: ${newAccessToken != null}',
      );
      AppLogger.d(
        '🔄 [Token Refresh] New refresh token exists: ${newRefreshToken != null}',
      );
      AppLogger.d('🔄 [Token Refresh] Expires at: $newExpiresAt');

      if (newAccessToken != null) {
        // 새 Token 저장
        AppLogger.d('🔄 [Token Refresh] Saving new tokens...');
        await tokenStorage.saveTokens(
          accessToken: newAccessToken,
          refreshToken: newRefreshToken ?? refreshToken,
          expiresAt: newExpiresAt,
        );
        AppLogger.i('✅ [Token Refresh] Token refresh successful!');
      } else {
        AppLogger.e(
          '❌ [Token Refresh] AccessToken is null in refresh response',
        );
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          message: 'AccessToken is null in refresh response',
        );
      }
    } else {
      AppLogger.e(
        '❌ [Token Refresh] Unexpected status code: ${response.statusCode}',
      );
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
      );
    }
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
