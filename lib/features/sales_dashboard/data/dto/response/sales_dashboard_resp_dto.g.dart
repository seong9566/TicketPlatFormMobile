// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_dashboard_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesDashboardRespDto _$SalesDashboardRespDtoFromJson(
  Map<String, dynamic> json,
) => _SalesDashboardRespDto(
  eventGroups: (json['eventGroups'] as List<dynamic>)
      .map((e) => EventGroupItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  page: (json['page'] as num).toInt(),
  size: (json['size'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
  hasMore: json['hasMore'] as bool,
);

Map<String, dynamic> _$SalesDashboardRespDtoToJson(
  _SalesDashboardRespDto instance,
) => <String, dynamic>{
  'eventGroups': instance.eventGroups,
  'page': instance.page,
  'size': instance.size,
  'totalCount': instance.totalCount,
  'hasMore': instance.hasMore,
};

_EventGroupItemDto _$EventGroupItemDtoFromJson(Map<String, dynamic> json) =>
    _EventGroupItemDto(
      eventId: (json['eventId'] as num).toInt(),
      eventTitle: json['eventTitle'] as String,
      posterImageUrl: json['posterImageUrl'] as String?,
      venueName: json['venueName'] as String?,
      earliestEventDatetime: json['earliestEventDatetime'] as String?,
      totalCount: (json['totalCount'] as num).toInt(),
      onSaleCount: (json['onSaleCount'] as num).toInt(),
      completedCount: (json['completedCount'] as num).toInt(),
      settlingCount: (json['settlingCount'] as num).toInt(),
      representativeSeatInfo: json['representativeSeatInfo'] as String?,
    );

Map<String, dynamic> _$EventGroupItemDtoToJson(_EventGroupItemDto instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'eventTitle': instance.eventTitle,
      'posterImageUrl': instance.posterImageUrl,
      'venueName': instance.venueName,
      'earliestEventDatetime': instance.earliestEventDatetime,
      'totalCount': instance.totalCount,
      'onSaleCount': instance.onSaleCount,
      'completedCount': instance.completedCount,
      'settlingCount': instance.settlingCount,
      'representativeSeatInfo': instance.representativeSeatInfo,
    };
