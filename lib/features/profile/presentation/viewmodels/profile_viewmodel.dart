import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/providers/profile_providers_di.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/ui_models/my_profile_ui_model.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_state.dart';

part 'profile_viewmodel.g.dart';

@riverpod
class ProfileViewModel extends _$ProfileViewModel {
  @override
  FutureOr<ProfileState> build() async {
    // 토큰이 없으면 빈 상태 반환 (로그아웃 상태 또는 미로그인)
    final tokenStorage = ref.read(tokenStorageProvider);
    final hasToken = await tokenStorage.hasToken();
    if (!hasToken) {
      AppLogger.i('토큰 없음 - 프로필 로드 스킵');
      return const ProfileState();
    }

    return _fetchProfile();
  }

  /// 내 프로필 로드
  Future<ProfileState> _fetchProfile() async {
    final usecase = ref.read(getMyProfileUsecaseProvider);
    final entity = await usecase.call();
    final uiModel = MyProfileUiModel.fromEntity(entity);

    AppLogger.i('프로필 로드 성공: ${uiModel.nickname}');
    return ProfileState(profile: uiModel);
  }

  /// 프로필 새로고침
  Future<void> refreshProfile() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchProfile());
  }

  /// 로그아웃 처리
  /// 토큰 삭제 후 성공 상태 반환
  Future<bool> logout() async {
    try {
      final tokenStorage = ref.read(tokenStorageProvider);
      await tokenStorage.clearTokens();

      // 토큰 삭제 검증
      final hasToken = await tokenStorage.hasToken();
      if (hasToken) {
        AppLogger.e('토큰 삭제 실패');
        return false;
      }

      AppLogger.i('로그아웃 완료 - 토큰 삭제 성공');

      // Provider 초기화 (다음 접근 시 재빌드)
      ref.invalidateSelf();

      return true;
    } catch (e) {
      AppLogger.e('로그아웃 실패', e);
      return false;
    }
  }
}
