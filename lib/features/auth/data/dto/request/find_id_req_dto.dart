class FindIdReqDto {
  final String phoneNumber;

  const FindIdReqDto({required this.phoneNumber});

  Map<String, dynamic> toMap() {
    return {'phoneNumber': phoneNumber};
  }
}
