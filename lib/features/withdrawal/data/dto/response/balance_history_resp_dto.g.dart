// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_history_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BalanceHistoryRespDto _$BalanceHistoryRespDtoFromJson(
  Map<String, dynamic> json,
) => _BalanceHistoryRespDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) =>
                BalanceTransactionRespDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  totalCount: (json['totalCount'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
);

Map<String, dynamic> _$BalanceHistoryRespDtoToJson(
  _BalanceHistoryRespDto instance,
) => <String, dynamic>{
  'items': instance.items,
  'totalCount': instance.totalCount,
  'page': instance.page,
  'pageSize': instance.pageSize,
};
