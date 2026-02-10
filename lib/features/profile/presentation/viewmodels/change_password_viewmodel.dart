import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/error/failures.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/providers/profile_providers_di.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/change_password_state.dart';

part 'change_password_viewmodel.g.dart';

@riverpod
class ChangePasswordViewModel extends _$ChangePasswordViewModel {
  @override
  ChangePasswordState build() {
    return const ChangePasswordState();
  }

  /// 비밀번호 변경 실행
  Future<bool> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    if (state.isLoading) return false;

    final trimmedCurrentPassword = currentPassword.trim();
    final trimmedNewPassword = newPassword.trim();

    state = state.copyWith(
      isLoading: true,
      errorMessage: null,
      successMessage: null,
    );

    try {
      final usecase = ref.read(changePasswordUsecaseProvider);
      await usecase.call(
        currentPassword: trimmedCurrentPassword,
        newPassword: trimmedNewPassword,
      );

      AppLogger.i('비밀번호 변경 성공');

      state = state.copyWith(
        isLoading: false,
        isSuccess: true,
        successMessage: '비밀번호가 변경되었습니다.',
      );

      return true;
    } catch (e) {
      AppLogger.e('비밀번호 변경 실패', e);
      state = state.copyWith(
        isLoading: false,
        isSuccess: false,
        errorMessage: _getErrorMessage(e),
      );
      return false;
    }
  }

  String _getErrorMessage(dynamic error) {
    if (error is Failure) {
      return error.when(
        server: (message) {
          // 백엔드 에러 메시지 우선 사용
          if (message.isNotEmpty) return message;
          return '비밀번호 변경에 실패했습니다.';
        },
        network: () => '네트워크 연결을 확인해주세요.',
        unauthorized: () => '현재 비밀번호가 올바르지 않습니다.',
        notFound: () => '사용자 정보를 찾을 수 없습니다.',
        unknown: (message) => message.isNotEmpty ? message : '비밀번호 변경에 실패했습니다.',
      );
    }

    return '비밀번호 변경에 실패했습니다.';
  }

  /// 비밀번호 강도 계산 (0-3: 없음/약함/보통/강함)
  int calculatePasswordStrength(String password) {
    if (password.isEmpty) return 0;

    int score = 0;

    // 길이 체크
    if (password.length >= 8) score++;
    if (password.length >= 12) score++;

    // 문자 조합 체크
    final hasUppercase = RegExp(r'[A-Z]').hasMatch(password);
    final hasLowercase = RegExp(r'[a-z]').hasMatch(password);
    final hasDigits = RegExp(r'[0-9]').hasMatch(password);
    final hasSpecialChars = RegExp(r'[^a-zA-Z0-9]').hasMatch(password);

    int categoryCount = 0;
    if (hasUppercase) categoryCount++;
    if (hasLowercase) categoryCount++;
    if (hasDigits) categoryCount++;
    if (hasSpecialChars) categoryCount++;

    if (categoryCount >= 3) score++;

    return score.clamp(0, 3);
  }

  /// 새 비밀번호 유효성 검증
  bool validateNewPassword(String password) {
    if (password.length < 8) return false;

    final hasUppercase = RegExp(r'[A-Z]').hasMatch(password);
    final hasLowercase = RegExp(r'[a-z]').hasMatch(password);
    final hasDigits = RegExp(r'[0-9]').hasMatch(password);
    final hasSpecialChars = RegExp(r'[^a-zA-Z0-9]').hasMatch(password);

    int categoryCount = 0;
    if (hasUppercase) categoryCount++;
    if (hasLowercase) categoryCount++;
    if (hasDigits) categoryCount++;
    if (hasSpecialChars) categoryCount++;

    return categoryCount >= 3;
  }

  /// 에러 메시지 초기화
  void clearError() {
    state = state.copyWith(errorMessage: null);
  }

  /// 성공 상태 초기화
  void clearSuccess() {
    state = state.copyWith(isSuccess: false, successMessage: null);
  }
}
