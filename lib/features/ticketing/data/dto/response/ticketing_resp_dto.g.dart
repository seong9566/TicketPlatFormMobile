// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticketing_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketingRespDto _$TicketingRespDtoFromJson(Map<String, dynamic> json) =>
    _TicketingRespDto(
      eventId: (json['eventId'] as num).toInt(),
      eventTitle: json['eventTitle'] as String,
      eventPosterImageUrl: json['eventPosterImageUrl'] as String?,
      startAt: json['startAt'] as String?,
      endAt: json['endAt'] as String?,
      venueName: json['venueName'] as String?,
      venueAddress: json['venueAddress'] as String?,
      artistId: (json['artistId'] as num?)?.toInt(),
      artistName: json['artistName'] as String?,
      isSoldOutImminent: json['isSoldOutImminent'] as bool? ?? false,
      seatTypeFilters:
          (json['seatTypeFilters'] as List<dynamic>?)
              ?.map(
                (e) => TicketingSeatTypeFilterRespDto.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
      tickets:
          (json['tickets'] as List<dynamic>?)
              ?.map(
                (e) =>
                    TicketingTicketRespDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
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
  seatTypeName: json['seatTypeName'] as String? ?? '',
  ticketCount: (json['ticketCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TicketingSeatTypeFilterRespDtoToJson(
  _TicketingSeatTypeFilterRespDto instance,
) => <String, dynamic>{
  'seatTypeName': instance.seatTypeName,
  'ticketCount': instance.ticketCount,
};

_TicketFeatureDto _$TicketFeatureDtoFromJson(Map<String, dynamic> json) =>
    _TicketFeatureDto(
      featureId: (json['featureId'] as num).toInt(),
      code: json['code'] as String,
      nameKo: json['nameKo'] as String,
    );

Map<String, dynamic> _$TicketFeatureDtoToJson(_TicketFeatureDto instance) =>
    <String, dynamic>{
      'featureId': instance.featureId,
      'code': instance.code,
      'nameKo': instance.nameKo,
    };

_TicketingTicketRespDto _$TicketingTicketRespDtoFromJson(
  Map<String, dynamic> json,
) => _TicketingTicketRespDto(
  ticketId: (json['ticketId'] as num).toInt(),
  seatGradeId: (json['seatGradeId'] as num?)?.toInt(),
  seatGradeCode: json['seatGradeCode'] as String?,
  seatGradeName: json['seatGradeName'] as String?,
  seatGradeNameEn: json['seatGradeNameEn'] as String?,
  areaId: (json['areaId'] as num?)?.toInt(),
  area: json['area'] as String?,
  locationId: (json['locationId'] as num?)?.toInt(),
  locationName: json['locationName'] as String?,
  row: json['row'] as String?,
  price: (json['price'] as num?)?.toInt() ?? 0,
  originalPrice: (json['originalPrice'] as num?)?.toInt() ?? 0,
  isConsecutive: json['isConsecutive'] as bool?,
  tradeMethodId: (json['tradeMethodId'] as num?)?.toInt(),
  tradeMethodName: json['tradeMethodName'] as String?,
  features:
      (json['features'] as List<dynamic>?)
          ?.map((e) => TicketFeatureDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  hasTicket: json['hasTicket'] as bool?,
  description: json['description'] as String?,
  createdAt: json['createdAt'] as String,
  quantity: (json['quantity'] as num?)?.toInt() ?? 0,
  remainingQuantity: (json['remainingQuantity'] as num?)?.toInt() ?? 0,
  isSingleTicket: json['isSingleTicket'] as bool? ?? false,
  ticketImages:
      (json['ticketImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  isFavorited: json['isFavorited'] as bool?,
  seller: TicketingSellerRespDto.fromJson(
    json['seller'] as Map<String, dynamic>,
  ),
  event: json['event'] == null
      ? null
      : TicketingEventRespDto.fromJson(json['event'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TicketingTicketRespDtoToJson(
  _TicketingTicketRespDto instance,
) => <String, dynamic>{
  'ticketId': instance.ticketId,
  'seatGradeId': instance.seatGradeId,
  'seatGradeCode': instance.seatGradeCode,
  'seatGradeName': instance.seatGradeName,
  'seatGradeNameEn': instance.seatGradeNameEn,
  'areaId': instance.areaId,
  'area': instance.area,
  'locationId': instance.locationId,
  'locationName': instance.locationName,
  'row': instance.row,
  'price': instance.price,
  'originalPrice': instance.originalPrice,
  'isConsecutive': instance.isConsecutive,
  'tradeMethodId': instance.tradeMethodId,
  'tradeMethodName': instance.tradeMethodName,
  'features': instance.features,
  'hasTicket': instance.hasTicket,
  'description': instance.description,
  'createdAt': instance.createdAt,
  'quantity': instance.quantity,
  'remainingQuantity': instance.remainingQuantity,
  'isSingleTicket': instance.isSingleTicket,
  'ticketImages': instance.ticketImages,
  'isFavorited': instance.isFavorited,
  'seller': instance.seller,
  'event': instance.event,
};

_TicketingSellerRespDto _$TicketingSellerRespDtoFromJson(
  Map<String, dynamic> json,
) => _TicketingSellerRespDto(
  userId: (json['userId'] as num).toInt(),
  nickname: json['nickname'] as String?,
  profileImageUrl: json['profileImageUrl'] as String?,
  mannerTemperature: (json['mannerTemperature'] as num?)?.toDouble(),
  totalTradeCount: (json['totalTradeCount'] as num?)?.toInt() ?? 0,
  responseRate: (json['responseRate'] as num?)?.toDouble(),
  isSecurePayment: json['isSecurePayment'] as bool? ?? false,
);

Map<String, dynamic> _$TicketingSellerRespDtoToJson(
  _TicketingSellerRespDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'nickname': instance.nickname,
  'profileImageUrl': instance.profileImageUrl,
  'mannerTemperature': instance.mannerTemperature,
  'totalTradeCount': instance.totalTradeCount,
  'responseRate': instance.responseRate,
  'isSecurePayment': instance.isSecurePayment,
};

_TicketingEventRespDto _$TicketingEventRespDtoFromJson(
  Map<String, dynamic> json,
) => _TicketingEventRespDto(
  eventId: (json['eventId'] as num).toInt(),
  eventTitle: json['eventTitle'] as String,
  posterImageUrl: json['posterImageUrl'] as String?,
  startAt: json['startAt'] as String?,
  endAt: json['endAt'] as String?,
  venueName: json['venueName'] as String?,
);

Map<String, dynamic> _$TicketingEventRespDtoToJson(
  _TicketingEventRespDto instance,
) => <String, dynamic>{
  'eventId': instance.eventId,
  'eventTitle': instance.eventTitle,
  'posterImageUrl': instance.posterImageUrl,
  'startAt': instance.startAt,
  'endAt': instance.endAt,
  'venueName': instance.venueName,
};
