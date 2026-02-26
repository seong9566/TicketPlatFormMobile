class FindIdResDto {
  final String maskedEmail;

  const FindIdResDto({required this.maskedEmail});

  factory FindIdResDto.fromJson(Map<String, dynamic> json) {
    return FindIdResDto(
      maskedEmail: json['maskedEmail'] as String? ?? '',
    );
  }
}
