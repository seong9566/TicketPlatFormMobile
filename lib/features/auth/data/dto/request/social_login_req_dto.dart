class SocialLoginReqDto {
  final String provider;
  final String accessToken;

  const SocialLoginReqDto({required this.provider, required this.accessToken});

  Map<String, dynamic> toMap() {
    return {'provider': provider, 'accessToken': accessToken};
  }
}
