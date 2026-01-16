// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteRespDto _$FavoriteRespDtoFromJson(Map<String, dynamic> json) =>
    _FavoriteRespDto(
      ticketId: (json['ticketId'] as num).toInt(),
      seatGradeId: (json['seatGradeId'] as num?)?.toInt(),
      seatGradeName: json['seatGradeName'] as String?,
      area: json['area'] as String?,
      row: json['row'] as String?,
      price: (json['price'] as num).toInt(),
      originalPrice: (json['originalPrice'] as num).toInt(),
      remainingQuantity: (json['remainingQuantity'] as num).toInt(),
      isConsecutive: json['isConsecutive'] as bool?,
      tradeMethodId: (json['tradeMethodId'] as num?)?.toInt(),
      tradeMethodName: json['tradeMethodName'] as String?,
      hasTicket: json['hasTicket'] as bool?,
      createdAt: json['createdAt'] as String,
      favoritedAt: json['favoritedAt'] as String,
      eventTitle: json['eventTitle'] as String?,
      eventDate: json['eventDate'] as String?,
      venueName: json['venueName'] as String?,
      eventPosterImageUrl: json['eventPosterImageUrl'] as String?,
      seller: TicketingSellerRespDto.fromJson(
        json['seller'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$FavoriteRespDtoToJson(_FavoriteRespDto instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'seatGradeId': instance.seatGradeId,
      'seatGradeName': instance.seatGradeName,
      'area': instance.area,
      'row': instance.row,
      'price': instance.price,
      'originalPrice': instance.originalPrice,
      'remainingQuantity': instance.remainingQuantity,
      'isConsecutive': instance.isConsecutive,
      'tradeMethodId': instance.tradeMethodId,
      'tradeMethodName': instance.tradeMethodName,
      'hasTicket': instance.hasTicket,
      'createdAt': instance.createdAt,
      'favoritedAt': instance.favoritedAt,
      'eventTitle': instance.eventTitle,
      'eventDate': instance.eventDate,
      'venueName': instance.venueName,
      'eventPosterImageUrl': instance.eventPosterImageUrl,
      'seller': instance.seller,
    };
