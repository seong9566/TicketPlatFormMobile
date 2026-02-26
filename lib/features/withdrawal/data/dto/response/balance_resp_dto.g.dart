// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BalanceRespDto _$BalanceRespDtoFromJson(Map<String, dynamic> json) =>
    _BalanceRespDto(
      available: (json['available'] as num).toInt(),
      pending: (json['pending'] as num).toInt(),
      totalEarned: (json['totalEarned'] as num).toInt(),
      totalWithdrawn: (json['totalWithdrawn'] as num).toInt(),
    );

Map<String, dynamic> _$BalanceRespDtoToJson(_BalanceRespDto instance) =>
    <String, dynamic>{
      'available': instance.available,
      'pending': instance.pending,
      'totalEarned': instance.totalEarned,
      'totalWithdrawn': instance.totalWithdrawn,
    };
