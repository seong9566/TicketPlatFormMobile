import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:ticket_platform_mobile/core/config/app_config_provider.dart';
import 'package:ticket_platform_mobile/core/constants/app_constants.dart';
import 'package:ticket_platform_mobile/core/network/api_interceptor.dart';
import 'package:ticket_platform_mobile/core/router/app_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final config = ref.watch(appConfigProvider);
  final dio = Dio(
    BaseOptions(
      connectTimeout: AppConstants.networkTimeout,
      receiveTimeout: AppConstants.networkTimeout,
      sendTimeout: AppConstants.networkTimeout,
      baseUrl: config.apiBaseUrl,
      headers: const {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  dio.interceptors.addAll([
    ApiInterceptor(
      tokenStorage: ref.read(tokenStorageProvider),
      baseUrl: config.apiBaseUrl,
      onTokenExpired: () async {
        AppLogger.w('Token expired. Redirecting to login.');
        // 세션 만료 시 모든 정보 삭제 후 로그인 화면으로 강제 이동
        await ref.read(tokenStorageProvider).clearTokens();
        ref.read(goRouterProvider).go(AppRouterPath.login.path);
      },
    ),
    ApiLogInterceptor(),
  ]);

  return dio;
}
