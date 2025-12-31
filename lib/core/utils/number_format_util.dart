import 'package:intl/intl.dart';

class NumberFormatUtil {
  /// 숫자를 3자리마다 콤마가 포함된 문자열로 변환합니다.
  /// - Before: 100000
  /// - After: 100,000
  static String formatNumber(num number) {
    return NumberFormat('#,###').format(number);
  }

  /// 숫자를 화폐 단위(원)가 포함된 형식으로 변환합니다.
  /// - Before: 100000
  /// - After: 100,000원
  static String formatPrice(num price) {
    return '${formatNumber(price)}원';
  }
}
