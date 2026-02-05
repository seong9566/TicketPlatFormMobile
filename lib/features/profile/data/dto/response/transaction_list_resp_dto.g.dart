// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_list_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionListRespDto _$TransactionListRespDtoFromJson(
  Map<String, dynamic> json,
) => _TransactionListRespDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => TransactionItemRespDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  nextCursor: json['nextCursor'] as String?,
  hasMore: json['hasMore'] as bool? ?? false,
  totalCount: (json['totalCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TransactionListRespDtoToJson(
  _TransactionListRespDto instance,
) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
  'hasMore': instance.hasMore,
  'totalCount': instance.totalCount,
};
