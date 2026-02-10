import '../../../../../core/utils/logger.dart';

/// 비밀번호 변경 요청 DTO
/// application/json으로 전송
class ChangePasswordReqDto {
  final String currentPassword;
  final String newPassword;

  const ChangePasswordReqDto({
    required this.currentPassword,
    required this.newPassword,
  });

  /// JSON 전송용 Map 변환
  Map<String, dynamic> toMap() {
    final map = {
      'currentPassword': currentPassword,
      'newPassword': newPassword,
    };

    AppLogger.d('[ChangePasswordReqDto] toMap: ${map.keys.toList()}');
    return map;
  }
}
