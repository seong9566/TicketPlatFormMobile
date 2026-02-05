import 'package:ticket_platform_mobile/core/utils/logger.dart';

class TransactionHistoryReqDto {
  final String? status;
  final String? period;
  final String? sortBy;
  final String? cursor;
  final int? limit;

  const TransactionHistoryReqDto({
    this.status,
    this.period,
    this.sortBy,
    this.cursor,
    this.limit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (status != null) map['status'] = status;
    if (period != null) map['period'] = period;
    if (sortBy != null) map['sortBy'] = sortBy;
    if (cursor != null) map['cursor'] = cursor;
    if (limit != null) map['limit'] = limit;

    AppLogger.d('[TransactionHistoryReqDto] toMap: $map');
    return map;
  }
}
