import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/error/failures.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

Future<BaseResponse<T>> safeApiCall<T>({
  required Future<Response> Function(Options options) apiCall,
  required String apiName,
  required T Function(Object?) dataParser,
}) async {
  try {
    final response = await apiCall(Options(extra: {'apiName': apiName}));
    final responseData = response.data;

    if (responseData is Map<String, dynamic>) {
      return BaseResponse<T>.fromJson(responseData, (json) => dataParser(json));
    }

    throw const Failure.server('정의되지 않은 응답 형식입니다.');
  } on DioException catch (e) {
    AppLogger.e('[$apiName] DioException', e, e.stackTrace);

    // 네트워크 타임아웃
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      throw const Failure.network();
    }

    // HTTP 응답 에러 처리
    final response = e.response;
    if (response != null) {
      final statusCode = response.statusCode ?? 0;
      final data = response.data;

      // 백엔드 에러 응답 형식 파싱
      // 1) { "error": { "code": "...", "message": "...", "details": "..." } }
      // 2) { "message": "...", "data": null, "statusCode": 400, "success": false }
      String errorMessage = '오류가 발생했습니다.';
      if (data is Map<String, dynamic>) {
        if (data.containsKey('error')) {
          final error = data['error'];
          if (error is Map<String, dynamic>) {
            errorMessage = error['message'] ?? errorMessage;
            final details = error['details'];
            if (details != null && details.toString().isNotEmpty) {
              errorMessage = '$errorMessage\n$details';
            }
          }
        } else if (data['message'] is String &&
            (data['message'] as String).isNotEmpty) {
          errorMessage = data['message'] as String;
        }
      }

      // 상태 코드별 처리
      if (statusCode == 400) {
        throw Failure.server(errorMessage);
      }
      if (statusCode == 401) {
        throw const Failure.unauthorized();
      }
      if (statusCode == 404) {
        throw const Failure.notFound();
      }
      if (statusCode >= 500) {
        throw Failure.server(errorMessage);
      }

      throw Failure.server(errorMessage);
    }

    // 응답 없는 에러
    throw Failure.server(e.message ?? '네트워크 오류가 발생했습니다.');
  } catch (e, stack) {
    AppLogger.e('[$apiName] Exception', e, stack);
    throw Failure.unknown(e.toString());
  }
}
