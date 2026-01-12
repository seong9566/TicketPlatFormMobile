import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/constants/app_assets.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/splash/presentation/viewmodels/splash_state.dart';
import 'package:ticket_platform_mobile/features/splash/presentation/viewmodels/splash_viewmodel.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView>
    with TickerProviderStateMixin {
  late AnimationController _floatingController;
  late AnimationController _dotsController;

  @override
  void initState() {
    super.initState();

    // 아이콘 애니메이션 초기화
    _floatingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    // 하단 dot 애니메이션 초기화
    _dotsController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();

    // 초기화 로직은 ViewModel에서 핸들링
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(splashViewModelProvider.notifier).initialize();
    });
  }

  @override
  void dispose() {
    _floatingController.dispose();
    _dotsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(splashViewModelProvider, (previous, next) {
      // ignore: unused_result
      next.maybeWhen(
        authenticated: () => context.go(AppRouterPath.home),
        unauthenticated: () => context.go(AppRouterPath.login),
        orElse: () {},
      );
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF27B57F), Color(0xFF5CC091)],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildFloatingLogo(),
                  const SizedBox(height: 32),
                  const Text(
                    'TicketHub',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '모든 티켓을 한 곳에서',
                    style: AppTextStyles.body1.copyWith(
                      color: Colors.white.withValues(alpha: 0.9),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: _buildLoadingDots(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingLogo() {
    return AnimatedBuilder(
      animation: _floatingController,
      builder: (context, child) {
        final offset =
            Curves.easeInOut.transform(_floatingController.value) * 15;
        return Transform.translate(offset: Offset(0, -offset), child: child);
      },
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(32),
        ),
        child: SvgPicture.asset(
          AppAssets.logoIcon,
          width: 80,
          height: 80,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ),
    );
  }

  Widget _buildLoadingDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedBuilder(
          animation: _dotsController,
          builder: (context, child) {
            final delay = index * 0.2;
            double value = (_dotsController.value - delay).clamp(0.0, 1.0);
            if (value > 0.5) value = 1.0 - value;
            final opacity = (value * 2).clamp(0.2, 1.0);

            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: opacity),
                shape: BoxShape.circle,
              ),
            );
          },
        );
      }),
    );
  }
}
