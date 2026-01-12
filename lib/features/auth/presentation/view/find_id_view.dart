import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/find_id_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';

class FindIdView extends ConsumerWidget {
  const FindIdView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(findIdViewModelProvider);
    final viewModel = ref.read(findIdViewModelProvider.notifier);

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
                    _buildPhoneField(state, viewModel),
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
          '아이디 찾기',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          '가입 시 등록한 휴대폰 번호를 입력해주세요',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: AppColors.textSecondary),
        ),
      ],
    );
  }

  Widget _buildPhoneField(state, FindIdViewModel viewModel) {
    return AppTextField(
      label: '휴대폰 번호',
      hintText: '010-0000-0000',
      keyboardType: TextInputType.phone,
      onChanged: viewModel.onPhoneNumberChanged,
    );
  }

  Widget _buildSubmitButton(state, FindIdViewModel viewModel) {
    return AppButton(
      text: '아이디 찾기',
      isLoading: state.isLoading,
      onPressed: viewModel.findId,
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('비밀번호가 기억나지 않으세요? ', style: AppTextStyles.body2),
        GestureDetector(
          onTap: () => context.pushReplacement(AppRouterPath.findPassword),
          child: const Text(
            '비밀번호 찾기',
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
