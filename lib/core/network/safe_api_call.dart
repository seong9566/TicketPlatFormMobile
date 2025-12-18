import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/error/failures.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

Future<BaseResponse<T>> safeApiCall<T>({
  required Future<Response> Function() apiCall,
  required String apiName,
  required T Function(Map<String, dynamic>) dataParser,
}) async {
  try {
    final response = await apiCall();
    final responseData = response.data;

    if (responseData is Map<String, dynamic>) {
      return BaseResponse<T>.fromJson(
        responseData,
        (json) => dataParser(json as Map<String, dynamic>),
      );
    }

    throw const Failure.server('정의되지 않은 응답 형식입니다.');
  } on DioException catch (e) {
    AppLogger.e('[$apiName] DioException', e, e.stackTrace);
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      throw const Failure.network();
    }
    if (e.response?.statusCode == 401) {
      throw const Failure.unauthorized();
    }
    if (e.response?.statusCode == 404) {
      throw const Failure.notFound();
    }
    throw Failure.server(e.message ?? '네트워크 오류가 발생했습니다.');
  } catch (e, stack) {
    AppLogger.e('[$apiName] Exception', e, stack);
    throw Failure.unknown(e.toString());
  }
}
