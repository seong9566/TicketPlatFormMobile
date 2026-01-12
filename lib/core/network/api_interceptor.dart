import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';

class ApiInterceptor extends Interceptor {
  ApiInterceptor({required this.tokenStorage, required this.onTokenExpired});

  final TokenStorage tokenStorage;
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
    if (err.response?.statusCode == 401) {
      final refreshToken = await tokenStorage.getRefreshToken();
      if (refreshToken != null && refreshToken.isNotEmpty) {
        try {
          // Token 갱신 요청을 위한 전용 Dio 인스턴스 사용 (무한 루프 방지)
          final dio = Dio(BaseOptions(baseUrl: err.requestOptions.baseUrl));
          final response = await dio.post(
            '/auth/refresh',
            data: {'refreshToken': refreshToken},
          );

          if (response.statusCode == 200) {
            final data = response.data['data'];
            final newAccessToken = data['accessToken'];
            final newRefreshToken = data['refreshToken'];
            final newExpiresAt = data['expiresAt'];

            // 새 Token 저장
            await tokenStorage.saveTokens(
              accessToken: newAccessToken,
              refreshToken: newRefreshToken,
              expiresAt: newExpiresAt,
            );

            // 실패했던 요청 재시도
            err.requestOptions.headers['Authorization'] =
                'Bearer $newAccessToken';
            final cloneRequest = await dio.fetch(err.requestOptions);
            return handler.resolve(cloneRequest);
          }
        } catch (e) {
          // Refresh Token도 만료됨
          await tokenStorage.clearTokens();
          await onTokenExpired();
        }
      } else {
        // Refresh Token 없음
        await tokenStorage.clearTokens();
        await onTokenExpired();
      }
    }
    handler.next(err);
  }
}
