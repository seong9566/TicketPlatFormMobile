import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_account_req_dto.freezed.dart';
part 'verify_account_req_dto.g.dart';

@freezed
abstract class VerifyAccountReqDto with _$VerifyAccountReqDto {
  const factory VerifyAccountReqDto({required String code}) =
      _VerifyAccountReqDto;

  factory VerifyAccountReqDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyAccountReqDtoFromJson(json);
}
