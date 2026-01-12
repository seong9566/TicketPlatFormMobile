import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/storage/token_storage.dart';
import 'package:ticket_platform_mobile/features/splash/presentation/viewmodels/splash_state.dart';

part 'splash_viewmodel.g.dart';

@riverpod
class SplashViewModel extends _$SplashViewModel {
  @override
  SplashState build() {
    return const SplashState.initial();
  }

  Future<void> initialize() async {
    state = const SplashState.loading();

    // 최소 스플래시 노출 시간 보장
    final minSplashDuration = Future.delayed(const Duration(seconds: 2));

    // 토큰 확인
    final tokenStorage = ref.read(tokenStorageProvider);
    final hasToken = await tokenStorage.hasToken();

    // 최소 시간 대기
    await minSplashDuration;

    if (hasToken) {
      state = const SplashState.authenticated();
    } else {
      state = const SplashState.unauthenticated();
    }
  }
}
