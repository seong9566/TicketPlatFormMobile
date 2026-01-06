import 'package:flutter/material.dart';

import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

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
        title: const Text(
          '내 정보 관리',
          style: AppTextStyles.body1,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _ProfileHeaderSection(),
            const SizedBox(height: AppSpacing.lg),
            _ProfileSection(
              title: '거래',
              children: const [
                _ProfileMenuTile(
                  icon: Icons.receipt_long,
                  title: '판매 내역',
                ),
                _ProfileMenuTile(
                  icon: Icons.shopping_bag_outlined,
                  title: '구매 내역',
                ),
                _ProfileMenuTile(
                  icon: Icons.favorite_border,
                  title: '찜 목록',
                ),
                _ProfileMenuTile(
                  icon: Icons.credit_card,
                  title: '결제 수단 관리',
                ),
              ],
            ),
            _ProfileSection(
              title: '계정 정보',
              children: const [
                _ProfileMenuTile(
                  icon: Icons.person_outline,
                  title: '아이디',
                  trailingText: 'user_id@email.com',
                  showChevron: false,
                ),
                _ProfileMenuTile(
                  icon: Icons.lock_outline,
                  title: '비밀번호',
                  trailingText: '변경하기',
                ),
              ],
            ),
            _ProfileSection(
              title: '계정 인증',
              children: const [
                _ProfileMenuTile(
                  icon: Icons.verified_user_outlined,
                  title: '실명 인증',
                  trailingText: '인증 완료',
                  trailingTextColor: AppColors.success,
                  showChevron: false,
                ),
                _ProfileMenuTile(
                  icon: Icons.account_balance_outlined,
                  title: '계좌 인증',
                  trailingButtonLabel: '인증하기',
                ),
                _ProfileMenuTile(
                  icon: Icons.phone_iphone,
                  title: '휴대폰 인증',
                  trailingText: '미완료',
                  trailingTextColor: AppColors.textSecondary,
                  showChevron: false,
                ),
              ],
            ),
            _ProfileSection(
              title: '설정',
              children: const [
                _ProfileMenuTile(
                  icon: Icons.notifications_none,
                  title: '알림 설정',
                ),
                _ProfileMenuTile(
                  icon: Icons.place_outlined,
                  title: '배송지 관리',
                ),
              ],
            ),
            _ProfileSection(
              title: '고객 지원',
              children: const [
                _ProfileMenuTile(
                  icon: Icons.headset_mic_outlined,
                  title: '고객센터 / 1:1 문의',
                ),
                _ProfileMenuTile(
                  icon: Icons.campaign_outlined,
                  title: '공지사항',
                ),
                _ProfileMenuTile(
                  icon: Icons.help_outline,
                  title: '자주 묻는 질문',
                ),
              ],
            ),
            _ProfileSection(
              title: '약관 및 정보',
              children: const [
                _ProfileMenuTile(
                  icon: Icons.description_outlined,
                  title: '이용약관',
                ),
                _ProfileMenuTile(
                  icon: Icons.shield_outlined,
                  title: '개인정보처리방침',
                ),
                _ProfileMenuTile(
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
                  _ProfileMenuTile(
                    icon: Icons.logout,
                    title: '로그아웃',
                    showChevron: false,
                  ),
                  _ProfileMenuTile(
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

class _ProfileHeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 28,
            backgroundColor: AppColors.chatAvatarDefault,
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        '티켓판매왕',
                        style: AppTextStyles.body1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    Icon(
                      Icons.edit,
                      size: 18,
                      color: AppColors.textSecondary,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  'user_id@email.com',
                  style: AppTextStyles.body2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileSection extends StatelessWidget {
  const _ProfileSection({
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: AppSpacing.md),
      color: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.lg,
              AppSpacing.md,
              AppSpacing.lg,
              AppSpacing.sm,
            ),
            child: Text(
              title,
              style: AppTextStyles.caption.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          ...children,
        ],
      ),
    );
  }
}

class _ProfileMenuTile extends StatelessWidget {
  const _ProfileMenuTile({
    this.icon,
    required this.title,
    this.trailingText,
    this.trailingTextColor,
    this.trailingButtonLabel,
    this.titleColor,
    this.showChevron = true,
  });

  final IconData? icon;
  final String title;
  final String? trailingText;
  final Color? trailingTextColor;
  final String? trailingButtonLabel;
  final Color? titleColor;
  final bool showChevron;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.md,
        ),
        child: Row(
          children: [
            if (icon != null) ...[
              Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                  color: AppColors.muted,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  size: 20,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(width: AppSpacing.md),
            ],
            Text(
              title,
              style: AppTextStyles.body2.copyWith(
                color: titleColor ?? AppColors.textPrimary,
              ),
            ),
            const Spacer(),
            if (trailingButtonLabel != null)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  trailingButtonLabel!,
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.primaryForeground,
                  ),
                ),
              )
            else if (trailingText != null)
              Padding(
                padding: const EdgeInsets.only(right: AppSpacing.xs),
                child: Text(
                  trailingText!,
                  style: AppTextStyles.caption.copyWith(
                    color: trailingTextColor ?? AppColors.textSecondary,
                  ),
                ),
              ),
            if (showChevron)
              const Icon(
                Icons.chevron_right,
                size: 18,
                color: AppColors.textTertiary,
              ),
          ],
        ),
      ),
    );
  }
}

