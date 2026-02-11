import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/sign_up_entity.dart';
import 'package:ticket_platform_mobile/features/auth/domain/entities/user_entity.dart';

part 'auth_resp_dto.freezed.dart';

part 'auth_resp_dto.g.dart';

@freezed
abstract class TokenRespDto with _$TokenRespDto {
  const factory TokenRespDto({
    required String accessToken,
    required String refreshToken,
    required int expiresIn,
    required String tokenType,
    required String expiresAt,
  }) = _TokenRespDto;

  factory TokenRespDto.fromJson(Map<String, dynamic> json) =>
      _$TokenRespDtoFromJson(json);
}

@freezed
abstract class AuthRespDto with _$AuthRespDto {
  const factory AuthRespDto({
    required int id,
    required String email,
    required String role,
    required String provider,
    String? lastLoginAt,
    required String accessToken,
    required String refreshToken,
    required int expiresIn,
    required String tokenType,
    required String expiresAt,
  }) = _AuthRespDto;

  factory AuthRespDto.fromJson(Map<String, dynamic> json) {
    final rawId = json['id'] ?? json['userId'] ?? 0;

    return AuthRespDto(
      id: rawId is int ? rawId : (rawId as num).toInt(),
      email: json['email'] as String? ?? '',
      role: json['role'] as String? ?? 'user',
      provider: json['provider'] as String? ?? 'email',
      lastLoginAt: json['lastLoginAt'] as String?,
      accessToken: json['accessToken'] as String? ?? '',
      refreshToken: json['refreshToken'] as String? ?? '',
      expiresIn: (json['expiresIn'] as num?)?.toInt() ?? 0,
      tokenType: json['tokenType'] as String? ?? 'Bearer',
      expiresAt: json['expiresAt'] as String? ?? '',
    );
  }
}

@freezed
abstract class SignUpRespDto with _$SignUpRespDto {
  const factory SignUpRespDto({
    required String email,
    required String phone,
    required String role,
    required String provider,
  }) = _SignUpRespDto;

  factory SignUpRespDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpRespDtoFromJson(json);
}

extension AuthRespDtoX on AuthRespDto {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      email: email,
      role: role,
      provider: provider,
      lastLoginAt: lastLoginAt,
    );
  }
}

extension SignUpRespDtoX on SignUpRespDto {
  SignUpEntity toEntity() {
    return SignUpEntity(
      email: email,
      phone: phone,
      role: role,
      provider: provider,
    );
  }
}
