import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/providers/profile_providers_di.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_edit_state.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_viewmodel.dart';

part 'profile_edit_viewmodel.g.dart';

@riverpod
class ProfileEditViewModel extends _$ProfileEditViewModel {
  @override
  ProfileEditState build() {
    return const ProfileEditState();
  }

  /// 프로필 수정 실행
  Future<bool> updateProfile({
    String? nickname,
    String? bio,
    XFile? profileImage,
    bool removeProfileImage = false,
  }) async {
    if (state.isLoading) return false;

    state = state.copyWith(
      isLoading: true,
      errorMessage: null,
      successMessage: null,
    );

    try {
      final usecase = ref.read(updateMyProfileUsecaseProvider);
      await usecase.call(
        nickname: nickname,
        bio: bio,
        profileImage: profileImage,
        removeProfileImage: removeProfileImage,
      );

      AppLogger.i('프로필 수정 성공');

      state = state.copyWith(
        isLoading: false,
        isSuccess: true,
        successMessage: '프로필이 수정되었습니다.',
      );

      // 메인 프로필 데이터 새로고침
      ref.invalidate(profileViewModelProvider);

      return true;
    } catch (e) {
      AppLogger.e('프로필 수정 실패', e);
      state = state.copyWith(
        isLoading: false,
        isSuccess: false,
        errorMessage: _getErrorMessage(e),
      );
      return false;
    }
  }

  String _getErrorMessage(dynamic error) {
    final errorString = error.toString();
    if (errorString.contains('409')) {
      return '이미 사용 중인 닉네임입니다.';
    }
    if (errorString.contains('400')) {
      return '입력값을 확인해주세요.';
    }
    return '프로필 수정에 실패했습니다.';
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
