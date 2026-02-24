import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/viewmodels/unread_badge_viewmodel.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_viewmodel.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/widgets/profile_header_section.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/widgets/profile_menu_tile.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/widgets/profile_section.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_dialog.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  String? _resolveSocialProvider(String? email, String? provider) {
    final normalizedProvider = (provider ?? '').toLowerCase();
    if (normalizedProvider == 'kakao' ||
        normalizedProvider == 'google' ||
        normalizedProvider == 'apple') {
      return normalizedProvider;
    }

    final normalizedEmail = (email ?? '').toLowerCase();
    if (!normalizedEmail.endsWith('@social.local')) {
      return null;
    }

    if (normalizedEmail.startsWith('kakao_')) return 'kakao';
    if (normalizedEmail.startsWith('google_')) return 'google';
    if (normalizedEmail.startsWith('apple_')) return 'apple';

    return 'social';
  }

  String _buildSocialLoginText(String provider) {
    switch (provider) {
      case 'google':
        return 'Google로그인';
      case 'kakao':
        return 'Kakao로그인';
      case 'apple':
        return 'Apple로그인';
      default:
        return '소셜로그인';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(profileViewModelProvider);
    final profile = asyncState.value?.profile;
    final unreadNotificationCount = ref.watch(unreadBadgeViewModelProvider);
    final socialProvider = _resolveSocialProvider(
      profile?.email,
      profile?.provider,
    );
    final isSocialLogin = socialProvider != null;

    /// 로그아웃 확인 다이얼로그
    void showLogoutDialog(BuildContext context, WidgetRef ref) {
      AppDialog.showConfirm(
        context: context,
        title: '로그아웃',
        content: '정말 로그아웃 하시겠습니까?',
        onConfirm: () async {
          final success = await ref
              .read(profileViewModelProvider.notifier)
              .logout();
          if (context.mounted) {
            if (success) {
              // 화면 이동 (autoDispose로 자연 dispose됨)
              context.go(AppRouterPath.login.path);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('로그아웃에 실패했습니다. 다시 시도해주세요.')),
              );
            }
          }
        },
      );
    }

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: AppColors.textPrimary,
        title: const Text('내 정보 관리', style: AppTextStyles.body1),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ProfileHeaderSection(),
            const SizedBox(height: AppSpacing.lg),
            ProfileSection(
              title: '거래',
              children: [
                ProfileMenuTile(
                  icon: Icons.receipt_long,
                  title: '판매 내역',
                  onTap: () => context.pushNamed(
                    AppRouterPath.salesDashboard.name,
                  ),
                ),
                ProfileMenuTile(
                  icon: Icons.shopping_bag_outlined,
                  title: '구매 내역',
                  onTap: () => context.pushNamed(
                    AppRouterPath.transactionHistory.name,
                    pathParameters: {'initialIndex': '0'},
                  ),
                ),
                ProfileMenuTile(
                  icon: Icons.gavel_outlined,
                  title: '내 신고 내역',
                  onTap: () =>
                      context.pushNamed(AppRouterPath.disputeList.name),
                ),
              ],
            ),
            ProfileSection(
              title: '계정 정보',
              children: [
                if (isSocialLogin)
                  ProfileMenuTile(
                    icon: Icons.person_outline,
                    title: '로그인 방식',
                    trailingText: _buildSocialLoginText(socialProvider),
                    showChevron: false,
                  )
                else
                  ProfileMenuTile(
                    icon: Icons.person_outline,
                    title: '계정 이메일',
                    trailingText: profile?.email ?? '',
                    showChevron: false,
                  ),
                if (!isSocialLogin)
                  ProfileMenuTile(
                    icon: Icons.lock_outline,
                    title: '비밀번호',
                    trailingText: '변경하기',
                    onTap: () =>
                        context.push(AppRouterPath.changePassword.path),
                  ),
              ],
            ),
            ProfileSection(
              title: '계정 인증',
              children: const [
                ProfileMenuTile(
                  icon: Icons.account_balance_outlined,
                  title: '계좌 인증',
                  trailingButtonLabel: '인증하기',
                ),
                ProfileMenuTile(
                  icon: Icons.phone_iphone,
                  title: '휴대폰 인증',
                  trailingText: '미완료',
                  trailingTextColor: AppColors.textSecondary,
                  showChevron: false,
                ),
              ],
            ),
            ProfileSection(
              title: '설정',
              children: [
                ProfileMenuTile(
                  icon: Icons.notifications_none,
                  title: '알림',
                  trailingText: unreadNotificationCount > 0
                      ? '$unreadNotificationCount개 미읽음'
                      : null,
                  onTap: () =>
                      context.push(AppRouterPath.notificationList.path),
                ),
                const ProfileMenuTile(
                  icon: Icons.place_outlined,
                  title: '배송지 관리',
                ),
              ],
            ),
            ProfileSection(
              title: '약관 및 정보',
              children: const [
                ProfileMenuTile(
                  icon: Icons.description_outlined,
                  title: '이용약관',
                ),
                ProfileMenuTile(icon: Icons.shield_outlined, title: '개인정보처리방침'),
                ProfileMenuTile(
                  icon: Icons.info_outline,
                  title: '앱 버전',
                  trailingText: '1.0.0',
                  showChevron: false,
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.lg),
            Container(
              color: AppColors.background,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileMenuTile(
                    icon: Icons.logout,
                    title: '로그아웃',
                    showChevron: false,
                    onTap: asyncState.isLoading
                        ? null
                        : () => showLogoutDialog(context, ref),
                  ),
                  const ProfileMenuTile(
                    icon: Icons.person_off_outlined,
                    title: '회원 탈퇴',
                    titleColor: AppColors.destructive,
                    showChevron: false,
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
          ],
        ),
      ),
    );
  }
}
