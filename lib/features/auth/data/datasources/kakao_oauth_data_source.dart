import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'kakao_oauth_data_source.g.dart';

abstract class KakaoOAuthDataSource {
  Future<String?> signIn();
  Future<void> signOut();
}

class KakaoOAuthDataSourceImpl implements KakaoOAuthDataSource {
  @override
  Future<String?> signIn() async {
    OAuthToken token;

    if (await isKakaoTalkInstalled()) {
      token = await UserApi.instance.loginWithKakaoTalk();
    } else {
      token = await UserApi.instance.loginWithKakaoAccount();
    }

    return token.accessToken;
  }

  @override
  Future<void> signOut() {
    return UserApi.instance.logout();
  }
}

@riverpod
KakaoOAuthDataSource kakaoOAuthDataSource(Ref ref) {
  return KakaoOAuthDataSourceImpl();
}
