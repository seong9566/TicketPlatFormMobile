import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

/// 중앙화된 토큰 갱신 서비스
///
/// SignalR과 ApiInterceptor 모두 이 서비스를 통해 토큰 갱신을 수행합니다.
/// 동시 갱신 요청 시 첫 번째 요청만 실행하고, 나머지는 결과를 대기합니다.
class TokenRefreshService {
  TokenRefreshService({required this.tokenStorage, required this.baseUrl});

  final TokenStorage tokenStorage;
  final String baseUrl;

  /// 동시 다발적인 갱신 요청을 직렬화하기 위한 Completer
  Completer<bool>? _refreshCompleter;

  /// 토큰 갱신이 진행 중인지 여부
  bool get isRefreshing => _refreshCompleter != null;

  /// 토큰을 갱신합니다.
  ///
  /// 이미 갱신이 진행 중이면 해당 결과를 대기합니다.
  /// 갱신 성공 시 `true`, 실패 시 `false`를 반환합니다.
  /// 갱신 실패 시 토큰을 삭제합니다.
  Future<bool> refresh() async {
    // 이미 갱신이 진행 중이면 해당 결과를 대기
    if (_refreshCompleter != null) {
      AppLogger.d('🔄 [TokenRefresh] 이미 갱신 진행 중, 결과 대기...');
      return _refreshCompleter!.future;
    }

    _refreshCompleter = Completer<bool>();

    try {
      final result = await _doRefresh();
      _refreshCompleter?.complete(result);
      return result;
    } catch (e) {
      _refreshCompleter?.complete(false);
      return false;
    } finally {
      _refreshCompleter = null;
    }
  }

  /// 실제 토큰 갱신 로직
  Future<bool> _doRefresh() async {
    final refreshToken = await tokenStorage.getRefreshToken();

    if (refreshToken == null || refreshToken.isEmpty) {
      AppLogger.w('⚠️ [TokenRefresh] Refresh token 없음, 갱신 불가');
      await tokenStorage.clearTokens();
      return false;
    }

    AppLogger.d('🔄 [TokenRefresh] 토큰 갱신 시작...');
    AppLogger.d(
      '🔄 [TokenRefresh] Refresh token (first 30 chars): ${refreshToken.substring(0, refreshToken.length > 30 ? 30 : refreshToken.length)}...',
    );

    try {
      // 무한 루프 방지를 위한 전용 Dio 인스턴스
      final dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5),
        ),
      );

      AppLogger.d('🔄 [TokenRefresh] POST 요청: ${ApiEndpoint.tokenRefresh}');

      final response = await dio.post(
        ApiEndpoint.tokenRefresh,
        data: {'refreshToken': refreshToken},
      );

      if (response.statusCode == 200) {
        final data = response.data['data'];
        final newAccessToken = data['accessToken'] as String?;
        final newRefreshToken = data['refreshToken'] as String?;
        final newExpiresAt = data['expiresAt'] as String?;

        if (newAccessToken == null) {
          AppLogger.e('❌ [TokenRefresh] 응답에 accessToken 없음');
          await tokenStorage.clearTokens();
          return false;
        }

        await tokenStorage.saveTokens(
          accessToken: newAccessToken,
          refreshToken: newRefreshToken ?? refreshToken,
          expiresAt: newExpiresAt ?? '',
        );

        AppLogger.i('✅ [TokenRefresh] 토큰 갱신 성공');
        return true;
      } else {
        AppLogger.e('❌ [TokenRefresh] 예상치 못한 상태 코드: ${response.statusCode}');
        await tokenStorage.clearTokens();
        return false;
      }
    } on DioException catch (e) {
      AppLogger.e('❌ [TokenRefresh] 갱신 실패');
      AppLogger.e('❌ [TokenRefresh] Status code: ${e.response?.statusCode}');
      AppLogger.e('❌ [TokenRefresh] Response data: ${e.response?.data}');
      AppLogger.e('❌ [TokenRefresh] Error type: ${e.type}');
      await tokenStorage.clearTokens();
      return false;
    } catch (e, stackTrace) {
      AppLogger.e('❌ [TokenRefresh] 예상치 못한 에러', e, stackTrace);
      await tokenStorage.clearTokens();
      return false;
    }
  }
}
