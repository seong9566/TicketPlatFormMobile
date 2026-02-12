import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

part 'token_storage.g.dart';

class TokenStorage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  static const _accessTokenKey = 'accessToken';
  static const _refreshTokenKey = 'refreshToken';
  static const _expiresAtKey = 'expiresAt';

  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
    required String expiresAt,
  }) async {
    AppLogger.d("💾 [TokenStorage] SaveTokens Start...");
    AppLogger.d("💾 [TokenStorage] Access token length: ${accessToken.length}");
    AppLogger.d(
      "💾 [TokenStorage] Refresh token length: ${refreshToken.length}",
    );
    AppLogger.d("💾 [TokenStorage] Expires at: $expiresAt");

    await _storage.write(key: _accessTokenKey, value: accessToken);
    await _storage.write(key: _refreshTokenKey, value: refreshToken);
    await _storage.write(key: _expiresAtKey, value: expiresAt);

    AppLogger.d("💾 [TokenStorage] SaveTokens End");

    // 저장 검증
    final savedAccessToken = await _storage.read(key: _accessTokenKey);
    final savedRefreshToken = await _storage.read(key: _refreshTokenKey);
    if (savedAccessToken == null || savedRefreshToken == null) {
      AppLogger.e("❌ [TokenStorage] Token save verification failed!");
    } else {
      AppLogger.i("✅ [TokenStorage] Tokens saved and verified successfully");
    }
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: _accessTokenKey);
  }

  Future<String?> getRefreshToken() async {
    final token = await _storage.read(key: _refreshTokenKey);
    if (token == null || token.isEmpty) {
      AppLogger.w("⚠️ [TokenStorage] Refresh token is null or empty");
    } else {
      AppLogger.d(
        "💾 [TokenStorage] Refresh token loaded (length: ${token.length})",
      );
    }
    return token;
  }

  Future<String?> getExpiresAt() async {
    return await _storage.read(key: _expiresAtKey);
  }

  Future<void> clearTokens() async {
    AppLogger.d("🗑️ [TokenStorage] Clearing all tokens...");
    await _storage.delete(key: _accessTokenKey);
    await _storage.delete(key: _refreshTokenKey);
    await _storage.delete(key: _expiresAtKey);
    AppLogger.i("✅ [TokenStorage] All tokens cleared");
  }

  Future<bool> hasToken() async {
    final token = await getAccessToken();
    return token != null && token.isNotEmpty;
  }
}

@Riverpod(keepAlive: true)
TokenStorage tokenStorage(Ref ref) {
  return TokenStorage();
}
