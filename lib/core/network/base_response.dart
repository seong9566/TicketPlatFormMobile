import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class BaseResponse<T> with _$BaseResponse<T> {
  const factory BaseResponse({
    @Default(0) int statusCode,
    @Default('') String message,
    T? data,
    @Default(false) bool success,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$BaseResponseFromJson(json, fromJsonT);
}

extension BaseResponseExt<T> on BaseResponse<T> {
  bool get isSuccess => statusCode == 0 || statusCode == 200 || success;

  T get dataOrThrow {
    if (isSuccess && data != null) {
      return data!;
    }
    throw Exception(message.isNotEmpty ? message : '데이터가 없습니다.');
  }
}
