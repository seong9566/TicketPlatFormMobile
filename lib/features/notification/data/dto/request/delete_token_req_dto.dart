import 'package:ticket_platform_mobile/core/utils/logger.dart';

class DeleteTokenReqDto {
  const DeleteTokenReqDto({required this.deviceToken});

  final String deviceToken;

  Map<String, dynamic> toMap() {
    final map = {'deviceToken': deviceToken};
    AppLogger.d('[DeleteTokenReqDto] toMap: $map');
    return map;
  }
}
