import 'package:flutter/material.dart';

import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/widgets/profile_header_section.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/widgets/profile_menu_tile.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/widgets/profile_section.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background,
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
                    AppRouterPath.transactionHistory.name,
                    pathParameters: {'initialIndex': '1'},
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
                // ProfileMenuTile(icon: Icons.credit_card, title: '결제 수단 관리'),
              ],
            ),
            ProfileSection(
              title: '계정 정보',
              children: const [
                ProfileMenuTile(
                  icon: Icons.person_outline,
                  title: '아이디',
                  trailingText: 'user_id@email.com',
                  showChevron: false,
                ),
                ProfileMenuTile(
                  icon: Icons.lock_outline,
                  title: '비밀번호',
                  trailingText: '변경하기',
                ),
              ],
            ),
            ProfileSection(
              title: '계정 인증',
              children: const [
                // ProfileMenuTile(
                //   icon: Icons.verified_user_outlined,
                //   title: '실명 인증',
                //   trailingText: '인증 완료',
                //   trailingTextColor: AppColors.success,
                //   showChevron: false,
                // ),
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
              children: const [
                ProfileMenuTile(icon: Icons.notifications_none, title: '알림 설정'),
                ProfileMenuTile(icon: Icons.place_outlined, title: '배송지 관리'),
              ],
            ),
            // ProfileSection(
            //   title: '고객 지원',
            //   children: const [
            //     ProfileMenuTile(
            //       icon: Icons.headset_mic_outlined,
            //       title: '고객센터 / 1:1 문의',
            //     ),
            //     ProfileMenuTile(icon: Icons.campaign_outlined, title: '공지사항'),
            //     ProfileMenuTile(icon: Icons.help_outline, title: '자주 묻는 질문'),
            //   ],
            // ),
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
                children: const [
                  ProfileMenuTile(
                    icon: Icons.logout,
                    title: '로그아웃',
                    showChevron: false,
                  ),
                  ProfileMenuTile(
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
