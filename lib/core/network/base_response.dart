import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

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
      return data as T;
    }
    final errorMsg = message.isNotEmpty ? message : '데이터가 없습니다.';
    AppLogger.e('[BaseResponse] dataOrThrow 실패: $errorMsg');
    throw Exception(errorMsg);
  }

  /// 상세 정보를 Entity로 변환하거나 실패 시 예외 발생
  E mapOrThrow<E>(E Function(T) mapper, {String? errorMessage}) {
    if (isSuccess && data != null) {
      try {
        return mapper(data as T);
      } catch (e, stack) {
        AppLogger.e('[BaseResponse] mapOrThrow 파싱 에러', e, stack);
        rethrow;
      }
    }
    final errorMsg =
        errorMessage ?? (message.isNotEmpty ? message : '데이터를 찾을 수 없습니다.');
    AppLogger.w(
      '[BaseResponse] mapOrThrow 실패: $errorMsg (success: $isSuccess, data: ${data != null})',
    );
    throw Exception(errorMsg);
  }
}

extension BaseResponseListExt<T> on BaseResponse<List<T>> {
  /// List 형태의 응답을 Entity List로 변환
  List<E> mapListOrEmpty<E>(E Function(T) mapper) {
    if (!isSuccess || data == null) {
      AppLogger.w(
        '[BaseResponse] mapListOrEmpty 빈 리스트 반환 (success: $isSuccess, data: ${data != null})',
      );
      return [];
    }
    try {
      return data!.map((e) => mapper(e)).toList();
    } catch (e, stack) {
      AppLogger.e('[BaseResponse] mapListOrEmpty 파싱 에러', e, stack);
      rethrow;
    }
  }
}
