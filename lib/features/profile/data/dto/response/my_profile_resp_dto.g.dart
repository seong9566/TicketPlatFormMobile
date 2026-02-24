// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_profile_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyProfileRespDto _$MyProfileRespDtoFromJson(Map<String, dynamic> json) =>
    _MyProfileRespDto(
      userId: (json['userId'] as num).toInt(),
      email: json['email'] as String,
      provider: json['provider'] as String?,
      nickname: json['nickname'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
      bio: json['bio'] as String?,
      mannerTemperature: (json['mannerTemperature'] as num?)?.toDouble(),
      totalTradeCount: (json['totalTradeCount'] as num?)?.toInt(),
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$MyProfileRespDtoToJson(_MyProfileRespDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'provider': instance.provider,
      'nickname': instance.nickname,
      'profileImageUrl': instance.profileImageUrl,
      'bio': instance.bio,
      'mannerTemperature': instance.mannerTemperature,
      'totalTradeCount': instance.totalTradeCount,
      'averageRating': instance.averageRating,
      'reviewCount': instance.reviewCount,
    };
