// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventSession _$EventSessionFromJson(Map<String, dynamic> json) =>
    _EventSession(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      isNew: json['isNew'] as bool? ?? false,
      isHot: json['isHot'] as bool? ?? false,
      isSoldOut: json['isSoldOut'] as bool? ?? false,
      ticketCount: (json['ticketCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$EventSessionToJson(_EventSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'englishName': instance.englishName,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'isNew': instance.isNew,
      'isHot': instance.isHot,
      'isSoldOut': instance.isSoldOut,
      'ticketCount': instance.ticketCount,
    };
