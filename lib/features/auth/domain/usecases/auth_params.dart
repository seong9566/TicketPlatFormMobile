class LoginParams {
  final String email;
  final String password;

  LoginParams({required this.email, required this.password});
}

class SignUpParams {
  final String email;
  final String password;
  final String? phone;
  final String role;
  final String provider;

  SignUpParams({
    required this.email,
    required this.password,
    this.phone,
    this.role = 'user',
    required this.provider,
  });
}

class SocialLoginParams {
  final String provider;
  final String accessToken;

  SocialLoginParams({required this.provider, required this.accessToken});
}
