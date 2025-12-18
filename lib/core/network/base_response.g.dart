// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _BaseResponse<T>(
  statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
  message: json['message'] as String? ?? '',
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
  success: json['success'] as bool? ?? false,
);

Map<String, dynamic> _$BaseResponseToJson<T>(
  _BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': _$nullableGenericToJson(instance.data, toJsonT),
  'success': instance.success,
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);
