import 'package:intl/intl.dart';

class DateFormatUtil {
  /// 날짜 및 시간을 전체 형식으로 변환합니다.
  /// - Before: 2025-12-31 09:26:24.000
  /// - After: 2025.12.31(수) 09:26
  static String formatFullDateTime(DateTime date) {
    return DateFormat('yyyy.MM.dd(E) HH:mm', 'ko').format(date);
  }

  /// 날짜를 년.월.일 형식으로 변환합니다.
  /// - Before: 2025-12-31 09:26:24.000
  /// - After: 2025.12.31
  static String formatCompactDate(DateTime date) {
    return DateFormat('yyyy.MM.dd', 'ko').format(date);
  }

  /// 날짜 및 시간을 요일과 함께 변환합니다. (공백 포함)
  /// - Before: 2025-12-31 09:26:24.000
  /// - After: 2025.12.31 (수) 09:26
  static String formatWithDay(DateTime date) {
    return DateFormat('yyyy.MM.dd (E) HH:mm', 'ko').format(date);
  }
}
