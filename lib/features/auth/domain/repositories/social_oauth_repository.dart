abstract class SocialOAuthRepository {
  Future<String?> signInWithGoogle();
  Future<String?> signInWithKakao();
}
