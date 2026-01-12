import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/find_password_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';

class FindPasswordView extends ConsumerWidget {
  const FindPasswordView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(findPasswordViewModelProvider);
    final viewModel = ref.read(findPasswordViewModelProvider.notifier);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackground,
        appBar: AppBar(
          backgroundColor: AppColors.scaffoldBackground,
          elevation: 0,
          leadingWidth: 200,
          leading: TextButton.icon(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back, color: AppColors.textSecondary),
            label: const Text(
              '로그인으로 돌아가기',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 40,
                ),
                decoration: BoxDecoration(
                  color: AppColors.card,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildHeader(),
                    const SizedBox(height: AppSpacing.xl),
                    _buildEmailField(state, viewModel),
                    const SizedBox(height: AppSpacing.xl),
                    _buildSubmitButton(state, viewModel),
                    const SizedBox(height: AppSpacing.xl),
                    _buildFooter(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.confirmation_number_outlined,
            color: Colors.white,
            size: 28,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          '티켓허브',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          '비밀번호 찾기',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          '가입한 이메일 주소로 비밀번호 재설정 링크를 보내드립니다',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: AppColors.textSecondary),
        ),
      ],
    );
  }

  Widget _buildEmailField(state, FindPasswordViewModel viewModel) {
    return AppTextField(
      label: '이메일',
      hintText: 'example@email.com',
      keyboardType: TextInputType.emailAddress,
      onChanged: viewModel.onEmailChanged,
    );
  }

  Widget _buildSubmitButton(state, FindPasswordViewModel viewModel) {
    return AppButton(
      text: '재설정 링크 보내기',
      isLoading: state.isLoading,
      onPressed: viewModel.sendResetLink,
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('아이디가 기억나지 않으세요? ', style: AppTextStyles.body2),
        GestureDetector(
          onTap: () => context.pushReplacement(AppRouterPath.findId),
          child: const Text(
            '아이디 찾기',
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
