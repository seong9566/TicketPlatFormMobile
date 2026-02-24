import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/ui_models/my_profile_ui_model.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_viewmodel.dart';

class ProfileHeaderSection extends ConsumerWidget {
  const ProfileHeaderSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(profileViewModelProvider);

    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: asyncState.when(
        loading: () => _buildContent(null, context: context, isLoading: true),
        error: (error, stack) =>
            _buildContent(null, context: context, errorMessage: '프로필 로드 실패'),
        data: (state) => _buildContent(state.profile, context: context),
      ),
    );
  }

  Widget _buildContent(
    MyProfileUiModel? profile, {
    required BuildContext context,
    bool isLoading = false,
    String? errorMessage,
  }) {
    return Row(
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
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
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
