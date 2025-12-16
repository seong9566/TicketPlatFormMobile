// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Artist _$ArtistFromJson(Map<String, dynamic> json) => _Artist(
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

Map<String, dynamic> _$ArtistToJson(_Artist instance) => <String, dynamic>{
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
