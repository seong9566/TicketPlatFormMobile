import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/home/presentation/views/main_tab_view.dart';
import 'package:ticket_platform_mobile/features/reputation/presentation/viewmodels/reputation_write_state.dart';
import 'package:ticket_platform_mobile/features/reputation/presentation/viewmodels/reputation_write_viewmodel.dart';
import 'package:ticket_platform_mobile/features/reputation/presentation/views/widgets/star_rating_widget.dart';

class ReputationWriteView extends ConsumerStatefulWidget {
  const ReputationWriteView({
    super.key,
    required this.transactionId,
    required this.sellerNickname,
    this.onSuccess,
  });

  final int transactionId;
  final String sellerNickname;
  final VoidCallback? onSuccess;

  @override
  ConsumerState<ReputationWriteView> createState() =>
      _ReputationWriteViewState();
}

class _ReputationWriteViewState extends ConsumerState<ReputationWriteView> {
  bool _showSuccessScreen = false;
  bool _isAutoNavigating = false;

  Future<void> _navigateToChatView() async {
    if (_isAutoNavigating) {
      return;
    }
    _isAutoNavigating = true;
    await Future<void>.delayed(const Duration(milliseconds: 1200));
    if (!mounted) {
      return;
    }
    ref.read(currentTabIndexProvider.notifier).setIndex(1);
    context.goNamed(AppRouterPath.home.name);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(reputationWriteViewModelProvider);
    final vm = ref.read(reputationWriteViewModelProvider.notifier);

    ref.listen<ReputationWriteState>(reputationWriteViewModelProvider, (
      previous,
      next,
    ) {
      if (next.errorMessage != null &&
          previous?.errorMessage != next.errorMessage) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(next.errorMessage!)));
        vm.clearError();
      }

      if ((previous?.isSuccess ?? false) == false && next.isSuccess) {
        widget.onSuccess?.call();
        setState(() {
          _showSuccessScreen = true;
        });
        _navigateToChatView();
      }
    });

    if (_showSuccessScreen) {
      return Scaffold(
        appBar: AppBar(title: const Text('리뷰 완료'), centerTitle: true),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 76,
                  height: 76,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryLight,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check_rounded,
                    size: 44,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
                Text(
                  '리뷰가 등록되었습니다',
                  style: AppTextStyles.heading3.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  '채팅 목록으로 이동합니다.',
                  style: AppTextStyles.body2.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('리뷰 작성'), centerTitle: true),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.sellerNickname}님은 어떠셨나요?',
                style: AppTextStyles.heading3.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              StarRatingWidget(
                currentScore: state.selectedScore,
                onScoreSelected: vm.selectScore,
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: state.isSubmitting || state.selectedScore <= 0
                      ? null
                      : () => vm.submit(widget.transactionId),
                  child: state.isSubmitting
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.white,
                            ),
                          ),
                        )
                      : const Text('제출'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
