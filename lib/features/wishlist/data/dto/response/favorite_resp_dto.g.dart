// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteRespDto _$FavoriteRespDtoFromJson(Map<String, dynamic> json) =>
    _FavoriteRespDto(
      ticketId: (json['ticketId'] as num).toInt(),
      eventId: (json['eventId'] as num?)?.toInt(),
      ticketTitle: json['ticketTitle'] as String,
      seatInfo: json['seatInfo'] as String?,
      seatType: json['seatType'] as String?,
      price: (json['price'] as num).toInt(),
      originalPrice: (json['originalPrice'] as num).toInt(),
      remainingQuantity: (json['remainingQuantity'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      favoritedAt: json['favoritedAt'] as String,
      eventTitle: json['eventTitle'] as String,
      eventDate: json['eventDate'] as String,
      venueName: json['venueName'] as String,
      eventPosterImageUrl: json['eventPosterImageUrl'] as String,
      seller: TicketingSellerRespDto.fromJson(
        json['seller'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$FavoriteRespDtoToJson(_FavoriteRespDto instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'eventId': instance.eventId,
      'ticketTitle': instance.ticketTitle,
      'seatInfo': instance.seatInfo,
      'seatType': instance.seatType,
      'price': instance.price,
      'originalPrice': instance.originalPrice,
      'remainingQuantity': instance.remainingQuantity,
      'createdAt': instance.createdAt,
      'favoritedAt': instance.favoritedAt,
      'eventTitle': instance.eventTitle,
      'eventDate': instance.eventDate,
      'venueName': instance.venueName,
      'eventPosterImageUrl': instance.eventPosterImageUrl,
      'seller': instance.seller,
    };
