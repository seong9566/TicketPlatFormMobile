import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_verification_resp_dto.freezed.dart';
part 'request_verification_resp_dto.g.dart';

@freezed
abstract class RequestVerificationRespDto with _$RequestVerificationRespDto {
  const factory RequestVerificationRespDto({
    String? expiresAt,
    required String message,
    String? provider,
    String? verificationStatus,
    String? verificationTier,
    String? reasonCode,
  }) = _RequestVerificationRespDto;

  factory RequestVerificationRespDto.fromJson(Map<String, dynamic> json) =>
      _$RequestVerificationRespDtoFromJson(json);
}
