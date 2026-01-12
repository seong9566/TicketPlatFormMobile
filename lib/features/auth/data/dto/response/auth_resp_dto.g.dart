// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenRespDto _$TokenRespDtoFromJson(Map<String, dynamic> json) =>
    _TokenRespDto(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expiresIn: (json['expiresIn'] as num).toInt(),
      tokenType: json['tokenType'] as String,
      expiresAt: json['expiresAt'] as String,
    );

Map<String, dynamic> _$TokenRespDtoToJson(_TokenRespDto instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
      'tokenType': instance.tokenType,
      'expiresAt': instance.expiresAt,
    };

_AuthRespDto _$AuthRespDtoFromJson(Map<String, dynamic> json) => _AuthRespDto(
  id: (json['id'] as num).toInt(),
  email: json['email'] as String,
  role: json['role'] as String,
  provider: json['provider'] as String,
  lastLoginAt: json['lastLoginAt'] as String?,
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String,
  expiresIn: (json['expiresIn'] as num).toInt(),
  tokenType: json['tokenType'] as String,
  expiresAt: json['expiresAt'] as String,
);

Map<String, dynamic> _$AuthRespDtoToJson(_AuthRespDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role,
      'provider': instance.provider,
      'lastLoginAt': instance.lastLoginAt,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
      'tokenType': instance.tokenType,
      'expiresAt': instance.expiresAt,
    };

_SignUpRespDto _$SignUpRespDtoFromJson(Map<String, dynamic> json) =>
    _SignUpRespDto(
      email: json['email'] as String,
      phone: json['phone'] as String,
      role: json['role'] as String,
      provider: json['provider'] as String,
    );

Map<String, dynamic> _$SignUpRespDtoToJson(_SignUpRespDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'role': instance.role,
      'provider': instance.provider,
    };
