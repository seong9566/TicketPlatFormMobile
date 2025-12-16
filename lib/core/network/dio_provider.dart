import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:ticket_platform_mobile/core/constants/app_constants.dart';
import 'package:ticket_platform_mobile/core/network/api_interceptor.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      connectTimeout: AppConstants.networkTimeout,
      receiveTimeout: AppConstants.networkTimeout,
      sendTimeout: AppConstants.networkTimeout,
      baseUrl: '', // TODO: Env.apiUrl 로 교체
      headers: const {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  dio.interceptors.add(
    ApiInterceptor(
      getToken: () async {
        // TODO: authRepositoryProvider에서 토큰 조회하도록 연결
        return null;
      },
    ),
  );

  dio.interceptors.add(LogInterceptor(responseBody: true));
  return dio;
}
