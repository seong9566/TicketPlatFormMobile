class LoginReqDto {
  final String email;
  final String password;

  LoginReqDto({required this.email, required this.password});

  Map<String, dynamic> toMap() {
    return {'email': email, 'password': password};
  }
}

class SignUpReqDto {
  final String email;
  final String password;
  final String? phone;
  final String role;
  final String provider;

  SignUpReqDto({
    required this.email,
    required this.password,
    this.phone,
    this.role = 'user',
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'phone': phone,
      'role': role,
      'provider': provider,
    };
  }
}
