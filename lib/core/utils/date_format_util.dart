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

  /// 채팅 메시지용 시간 포맷팅
  /// - 무조건: 오전/오후 h:mm
  static String formatChatTime(DateTime? dateTime) {
    if (dateTime == null) return '';

    final localDateTime = dateTime.toLocal();
    final hour = localDateTime.hour;
    final minute = localDateTime.minute.toString().padLeft(2, '0');
    final period = hour < 12 ? '오전' : '오후';
    final displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
    return '$period $displayHour:$minute';
  }

  /// 채팅 날짜 구분선용 포맷팅
  /// - 형식: M월 d일 (E)
  static String formatSeparatorDate(DateTime date) {
    return DateFormat('M월 d일 (E)', 'ko').format(date.toLocal());
  }

  /// 날짜 포맷팅 (YYYY.MM.DD (E) HH:mm)
  static String formatDateTime(DateTime date) {
    return DateFormat('yyyy.MM.dd (E) HH:mm', 'ko').format(date);
  }
}
