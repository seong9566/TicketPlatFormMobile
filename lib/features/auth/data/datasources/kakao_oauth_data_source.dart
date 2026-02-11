import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/error/failures.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

part 'kakao_oauth_data_source.g.dart';

abstract class KakaoOAuthDataSource {
  Future<String?> signIn();
  Future<void> signOut();
}

class KakaoOAuthDataSourceImpl implements KakaoOAuthDataSource {
  @override
  Future<String?> signIn() async {
    try {
      OAuthToken token;

      if (await isKakaoTalkInstalled()) {
        try {
          token = await UserApi.instance.loginWithKakaoTalk();
        } catch (e) {
          if (_isUserCancelled(e)) {
            AppLogger.i('[KakaoOAuth] user cancelled KakaoTalk login');
            return null;
          }

          AppLogger.w(
            '[KakaoOAuth] KakaoTalk login failed, fallback to account',
          );
          token = await UserApi.instance.loginWithKakaoAccount();
        }
      } else {
        token = await UserApi.instance.loginWithKakaoAccount();
      }

      return token.accessToken;
    } catch (e, stackTrace) {
      AppLogger.e('[KakaoOAuth] signIn failed', e, stackTrace);

      final message = _mapKakaoErrorMessage(e);
      if (_isNetworkError(e)) {
        throw const Failure.network();
      }
      throw Failure.server(message);
    }
  }

  @override
  Future<void> signOut() {
    return UserApi.instance.logout();
  }

  bool _isUserCancelled(Object error) {
    final text = error.toString().toLowerCase();
    return text.contains('canceled') ||
        text.contains('cancelled') ||
        text.contains('access_denied');
  }

  bool _isNetworkError(Object error) {
    final text = error.toString().toLowerCase();
    return text.contains('network') || text.contains('timeout');
  }

  String _mapKakaoErrorMessage(Object error) {
    final text = error.toString().toLowerCase();

    if (text.contains('kakaosdknotinitializederror') ||
        text.contains('lateinitializationerror') ||
        text.contains('not initialized')) {
      return '카카오 SDK 초기화에 실패했습니다. 앱 설정을 확인해주세요.';
    }

    if (text.contains('key hash') ||
        text.contains('invalid android key hash')) {
      return '카카오 키 해시 설정을 확인해주세요.';
    }

    if (text.contains('invalid_client') ||
        text.contains('koe') ||
        text.contains('invalid app')) {
      return '카카오 앱 키 또는 Redirect URI 설정을 확인해주세요.';
    }

    return '카카오 로그인 중 오류가 발생했습니다. 잠시 후 다시 시도해주세요.';
  }
}

@riverpod
KakaoOAuthDataSource kakaoOAuthDataSource(Ref ref) {
  return KakaoOAuthDataSourceImpl();
}
