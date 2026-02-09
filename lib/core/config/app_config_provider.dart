import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:ticket_platform_mobile/core/config/app_config.dart';

part 'app_config_provider.g.dart';

@Riverpod(keepAlive: true)
AppConfig appConfig(Ref ref) {
  const isProduction = bool.fromEnvironment('APP_PROD', defaultValue: false);
  return isProduction ? AppConfig.production() : AppConfig.development();
}
