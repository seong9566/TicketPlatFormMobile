// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_profile_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyProfileRespDto _$MyProfileRespDtoFromJson(Map<String, dynamic> json) =>
    _MyProfileRespDto(
      userId: (json['userId'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
      bio: json['bio'] as String?,
      mannerTemperature: (json['mannerTemperature'] as num?)?.toDouble(),
      totalTradeCount: (json['totalTradeCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MyProfileRespDtoToJson(_MyProfileRespDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'nickname': instance.nickname,
      'profileImageUrl': instance.profileImageUrl,
      'bio': instance.bio,
      'mannerTemperature': instance.mannerTemperature,
      'totalTradeCount': instance.totalTradeCount,
    };
