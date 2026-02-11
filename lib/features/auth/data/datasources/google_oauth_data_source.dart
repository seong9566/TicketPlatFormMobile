import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'google_oauth_data_source.g.dart';

abstract class GoogleOAuthDataSource {
  Future<String?> signIn();
  Future<void> signOut();
}

class GoogleOAuthDataSourceImpl implements GoogleOAuthDataSource {
  final GoogleSignIn _googleSignIn;

  GoogleOAuthDataSourceImpl(this._googleSignIn);

  @override
  Future<String?> signIn() async {
    final account = await _googleSignIn.signIn();
    if (account == null) {
      return null;
    }

    final auth = await account.authentication;
    return auth.accessToken;
  }

  @override
  Future<void> signOut() {
    return _googleSignIn.signOut();
  }
}

@riverpod
GoogleOAuthDataSource googleOAuthDataSource(Ref ref) {
  final googleSignIn = GoogleSignIn(scopes: ['email', 'profile']);
  return GoogleOAuthDataSourceImpl(googleSignIn);
}
