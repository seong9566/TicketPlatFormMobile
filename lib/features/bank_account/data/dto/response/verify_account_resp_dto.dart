import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_account_resp_dto.freezed.dart';
part 'verify_account_resp_dto.g.dart';

@freezed
abstract class VerifyAccountRespDto with _$VerifyAccountRespDto {
  const factory VerifyAccountRespDto({
    required bool verified,
    required String message,
    String? provider,
    String? verificationStatus,
    String? verificationTier,
    String? reasonCode,
  }) = _VerifyAccountRespDto;

  factory VerifyAccountRespDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyAccountRespDtoFromJson(json);
}
