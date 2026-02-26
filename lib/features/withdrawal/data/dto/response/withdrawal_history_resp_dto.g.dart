// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_history_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WithdrawalHistoryRespDto _$WithdrawalHistoryRespDtoFromJson(
  Map<String, dynamic> json,
) => _WithdrawalHistoryRespDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => WithdrawalRespDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalCount: (json['totalCount'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
);

Map<String, dynamic> _$WithdrawalHistoryRespDtoToJson(
  _WithdrawalHistoryRespDto instance,
) => <String, dynamic>{
  'items': instance.items,
  'totalCount': instance.totalCount,
  'page': instance.page,
  'pageSize': instance.pageSize,
};
