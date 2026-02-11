import 'package:ticket_platform_mobile/core/utils/logger.dart';

class RegisterTokenReqDto {
  const RegisterTokenReqDto({
    required this.deviceToken,
    required this.platform,
  });

  final String deviceToken;
  final String platform;

  Map<String, dynamic> toMap() {
    final map = {'deviceToken': deviceToken, 'platform': platform};
    AppLogger.d('[RegisterTokenReqDto] toMap: $map');
    return map;
  }
}
