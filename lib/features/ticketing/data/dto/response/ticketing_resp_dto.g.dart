// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticketing_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketingRespDto _$TicketingRespDtoFromJson(
  Map<String, dynamic> json,
) => _TicketingRespDto(
  eventId: (json['eventId'] as num).toInt(),
  eventTitle: json['eventTitle'] as String,
  eventPosterImageUrl: json['eventPosterImageUrl'] as String,
  startAt: json['startAt'] as String,
  endAt: json['endAt'] as String,
  venueName: json['venueName'] as String,
  venueAddress: json['venueAddress'] as String,
  artistId: (json['artistId'] as num?)?.toInt(),
  artistName: json['artistName'] as String?,
  isSoldOutImminent: json['isSoldOutImminent'] as bool,
  seatTypeFilters: (json['seatTypeFilters'] as List<dynamic>)
      .map(
        (e) =>
            TicketingSeatTypeFilterRespDto.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  tickets: (json['tickets'] as List<dynamic>)
      .map((e) => TicketingTicketRespDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TicketingRespDtoToJson(_TicketingRespDto instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'eventTitle': instance.eventTitle,
      'eventPosterImageUrl': instance.eventPosterImageUrl,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'venueName': instance.venueName,
      'venueAddress': instance.venueAddress,
      'artistId': instance.artistId,
      'artistName': instance.artistName,
      'isSoldOutImminent': instance.isSoldOutImminent,
      'seatTypeFilters': instance.seatTypeFilters,
      'tickets': instance.tickets,
    };

_TicketingSeatTypeFilterRespDto _$TicketingSeatTypeFilterRespDtoFromJson(
  Map<String, dynamic> json,
) => _TicketingSeatTypeFilterRespDto(
  seatTypeName: json['seatTypeName'] as String,
  ticketCount: (json['ticketCount'] as num).toInt(),
);

Map<String, dynamic> _$TicketingSeatTypeFilterRespDtoToJson(
  _TicketingSeatTypeFilterRespDto instance,
) => <String, dynamic>{
  'seatTypeName': instance.seatTypeName,
  'ticketCount': instance.ticketCount,
};

_TicketingTicketRespDto _$TicketingTicketRespDtoFromJson(
  Map<String, dynamic> json,
) => _TicketingTicketRespDto(
  ticketId: (json['ticketId'] as num).toInt(),
  ticketTitle: json['ticketTitle'] as String,
  seatInfo: json['seatInfo'] as String,
  seatType: json['seatType'] as String,
  price: (json['price'] as num).toInt(),
  originalPrice: (json['originalPrice'] as num).toInt(),
  seatFeatures: (json['seatFeatures'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  description: json['description'] as String,
  createdAt: json['createdAt'] as String,
  seller: TicketingSellerRespDto.fromJson(
    json['seller'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$TicketingTicketRespDtoToJson(
  _TicketingTicketRespDto instance,
) => <String, dynamic>{
  'ticketId': instance.ticketId,
  'ticketTitle': instance.ticketTitle,
  'seatInfo': instance.seatInfo,
  'seatType': instance.seatType,
  'price': instance.price,
  'originalPrice': instance.originalPrice,
  'seatFeatures': instance.seatFeatures,
  'description': instance.description,
  'createdAt': instance.createdAt,
  'seller': instance.seller,
};

_TicketingSellerRespDto _$TicketingSellerRespDtoFromJson(
  Map<String, dynamic> json,
) => _TicketingSellerRespDto(
  userId: (json['userId'] as num).toInt(),
  nickname: json['nickname'] as String,
  profileImageUrl: json['profileImageUrl'] as String,
  mannerTemperature: (json['mannerTemperature'] as num).toDouble(),
);

Map<String, dynamic> _$TicketingSellerRespDtoToJson(
  _TicketingSellerRespDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'nickname': instance.nickname,
  'profileImageUrl': instance.profileImageUrl,
  'mannerTemperature': instance.mannerTemperature,
};
