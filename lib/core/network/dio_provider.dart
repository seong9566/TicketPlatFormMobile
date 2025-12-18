import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:ticket_platform_mobile/core/constants/app_constants.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/api_interceptor.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      connectTimeout: AppConstants.networkTimeout,
      receiveTimeout: AppConstants.networkTimeout,
      sendTimeout: AppConstants.networkTimeout,
      baseUrl: ApiEndpoint.baseUrl,
      headers: const {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  dio.interceptors.addAll([
    ApiInterceptor(
      getToken: () async {
        // TODO: TokenStorage 또는 AuthRepository 연결 필요
        return null;
      },
    ),
    LogInterceptor(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      logPrint: (obj) => AppLogger.d(obj.toString()),
    ),
  ]);

  return dio;
}
