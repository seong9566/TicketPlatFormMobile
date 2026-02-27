import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:ticket_platform_mobile/core/enums/bank_type.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/ui_models/my_profile_ui_model.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_viewmodel.dart';
import 'package:ticket_platform_mobile/features/bank_account/presentation/viewmodels/bank_account_viewmodel.dart';
import 'package:ticket_platform_mobile/features/withdrawal/presentation/viewmodels/balance_viewmodel.dart';

class ProfileHeaderSection extends ConsumerWidget {
  const ProfileHeaderSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(profileViewModelProvider);

    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: asyncState.when(
        loading: () =>
            _buildContent(null, context: context, ref: ref, isLoading: true),
        error: (error, stack) => _buildContent(
          null,
          context: context,
          ref: ref,
          errorMessage: '프로필 로드 실패',
        ),
        data: (state) =>
            _buildContent(state.profile, context: context, ref: ref),
      ),
    );
  }

  Widget _buildContent(
    MyProfileUiModel? profile, {
    required BuildContext context,
    required WidgetRef ref,
    bool isLoading = false,
    String? errorMessage,
  }) {
    final bankAccountState = ref.watch(bankAccountViewModelProvider).value;
    final bankAccount = bankAccountState?.bankAccount;
    final balanceAsync = ref.watch(balanceViewModelProvider);
    final hasBankAccount = bankAccount != null;

    return Column(
      children: [
        Row(
          children: [
            _buildAvatar(profile?.profileImageUrl),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: isLoading
                            ? _buildSkeletonText(width: 100)
                            : errorMessage != null
                            ? Text(
                                errorMessage,
                                style: AppTextStyles.body2.copyWith(
                                  color: AppColors.destructive,
                                ),
                              )
                            : Text(
                                profile?.nickname ?? '닉네임 없음',
                                style: AppTextStyles.body1,
                                overflow: TextOverflow.ellipsis,
                              ),
                      ),
                      const SizedBox(width: AppSpacing.xs),
                      InkWell(
                        onTap: () {
                          if (profile != null) {
                            context.pushNamed(
                              AppRouterPath.profileEdit.name,
                              extra: profile,
                            );
                          }
                        },
                        borderRadius: BorderRadius.circular(4),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.edit,
                            size: 18,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  if (profile != null) ...[
                    Row(
                      children: [
                        _buildInfoChip(
                          icon: Icons.thermostat,
                          text: profile.mannerTemperatureText,
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        _buildInfoChip(
                          icon: Icons.handshake_outlined,
                          text: '거래 ${profile.totalTradeCountText}',
                        ),
                      ],
                    ),
                  ] else if (isLoading) ...[
                    _buildSkeletonText(width: 150),
                  ],
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        // 계좌 정보 및 출금 섹션
        Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: AppColors.gray50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!hasBankAccount) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '출금을 위해 계좌를 인증해주세요',
                      style: AppTextStyles.body2.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context.pushNamed(
                        AppRouterPath.bankAccountRegister.name,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primaryLight,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          '인증하기',
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ] else ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '내 계좌',
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context.pushNamed(
                        AppRouterPath.bankAccountDetail.name,
                      ),
                      child: Text(
                        '변경',
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    if (BankType.fromCode(bankAccount.bankCode) != null) ...[
                      SizedBox(
                        width: 32,
                        height: 32,
                        child: SvgPicture.asset(
                          BankType.fromCode(bankAccount.bankCode)!.iconPath,
                        ),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                    ],
                    Expanded(
                      child: Text(
                        '${bankAccount.bankName} ${bankAccount.accountNumber}',
                        style: AppTextStyles.body1.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Divider(height: 1, color: AppColors.border),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '출금 가능 금액',
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                        const SizedBox(height: 2),
                        balanceAsync.when(
                          data: (balance) => Text(
                            NumberFormatUtil.formatPrice(balance.available),
                            style: AppTextStyles.heading3.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                          loading: () => Text(
                            '로딩 중...',
                            style: AppTextStyles.heading3.copyWith(
                              color: AppColors.textTertiary,
                            ),
                          ),
                          error: (_, __) => Text(
                            '금액 불러오기 실패',
                            style: AppTextStyles.body1.copyWith(
                              color: AppColors.textTertiary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => context.pushNamed(
                        AppRouterPath.withdrawalRequest.name,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          '출금 하기',
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAvatar(String? imageUrl) {
    if (imageUrl != null && imageUrl.isNotEmpty) {
      return CircleAvatar(
        radius: 28,
        backgroundColor: AppColors.chatAvatarDefault,
        child: ClipOval(
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            width: 56,
            height: 56,
            fit: BoxFit.cover,
            placeholder: (context, url) =>
                const CircularProgressIndicator(strokeWidth: 2),
            errorWidget: (context, url, error) =>
                const Icon(Icons.person, color: Colors.white),
          ),
        ),
      );
    }

    return const CircleAvatar(
      radius: 28,
      backgroundColor: AppColors.chatAvatarDefault,
      child: Icon(Icons.person, color: Colors.white, size: 28),
    );
  }

  Widget _buildInfoChip({
    required IconData icon,
    required String text,
    Color iconColor = AppColors.textSecondary,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: iconColor),
        const SizedBox(width: 4),
        Text(
          text,
          style: AppTextStyles.caption.copyWith(color: AppColors.textSecondary),
        ),
      ],
    );
  }

  Widget _buildSkeletonText({required double width}) {
    return Container(
      width: width,
      height: 16,
      decoration: BoxDecoration(
        color: AppColors.muted,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
