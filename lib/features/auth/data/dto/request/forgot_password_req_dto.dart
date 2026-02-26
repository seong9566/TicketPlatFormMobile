import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_req_dto.freezed.dart';
part 'forgot_password_req_dto.g.dart';

@freezed
abstract class ForgotPasswordReqDto with _$ForgotPasswordReqDto {
  const factory ForgotPasswordReqDto({required String email}) =
      _ForgotPasswordReqDto;

  factory ForgotPasswordReqDto.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordReqDtoFromJson(json);
}
