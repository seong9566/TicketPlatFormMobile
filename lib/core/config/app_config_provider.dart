import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:ticket_platform_mobile/core/config/app_config.dart';

part 'app_config_provider.g.dart';

@Riverpod(keepAlive: true)
AppConfig appConfig(Ref ref) {
  // const isProduction = bool.fromEnvironment('APP_PROD', defaultValue: false);
  // 설명 : 기존 코드는 run시 --dart-define=APP_PROD=true 를 입력해야 프로덕션 모드로 동작했음.
  // 추후 위의 것 사용할 것.
  const isProduction = false;
  // ignore: dead_code
  return isProduction ? AppConfig.production() : AppConfig.development();
}
