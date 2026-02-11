import 'package:ticket_platform_mobile/core/utils/logger.dart';

class GetNotificationsReqDto {
  const GetNotificationsReqDto({this.cursor, this.limit = 20});

  final String? cursor;
  final int limit;

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{'limit': limit};
    if (cursor != null && cursor!.isNotEmpty) {
      map['cursor'] = cursor;
    }
    AppLogger.d('[GetNotificationsReqDto] toMap: $map');
    return map;
  }
}
