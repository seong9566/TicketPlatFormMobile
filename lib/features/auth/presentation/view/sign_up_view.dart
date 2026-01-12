import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/sign_up_state.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/sign_up_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_dialog.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';

class SignUpView extends ConsumerStatefulWidget {
  const SignUpView({super.key});

  @override
  ConsumerState<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends ConsumerState<SignUpView> {
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _phoneFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _confirmPasswordFocus = FocusNode();

  @override
  void dispose() {
    _emailFocus.dispose();
    _phoneFocus.dispose();
    _passwordFocus.dispose();
    _confirmPasswordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(signUpViewModelProvider);
    final viewModel = ref.read(signUpViewModelProvider.notifier);

    ref.listen(signUpViewModelProvider.select((s) => s.isSuccess), (
      previous,
      next,
    ) {
      if (next) {
        AppDialog.showAlert(
          context: context,
          barrierDismissible: false,
          title: '회원가입 성공',
          content: '회원가입이 완료되었습니다.\n로그인해주세요.',
          onConfirm: () => context.pop(),
        );
      }
    });

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackground,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: _buildSignUpCard(context, state, viewModel),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpCard(
    BuildContext context,
    SignUpState state,
    SignUpViewModel viewModel,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
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
          _buildEmailField(viewModel),
          const SizedBox(height: AppSpacing.md),
          _buildPhoneField(viewModel),
          const SizedBox(height: AppSpacing.md),
          _buildPasswordField(state, viewModel),
          const SizedBox(height: AppSpacing.md),
          _buildConfirmPasswordField(state, viewModel),
          const SizedBox(height: AppSpacing.md),
          _buildAgreementCheckbox(state, viewModel),
          if (state.errorMessage != null) ...[
            const SizedBox(height: 16),
            Text(
              state.errorMessage!,
              style: const TextStyle(
                color: AppColors.destructive,
                fontSize: 13,
              ),
            ),
          ],
          const SizedBox(height: AppSpacing.xl),
          _buildSignUpButton(state, viewModel),
          const SizedBox(height: AppSpacing.xl),
          _buildFooter(context),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.confirmation_number, color: Colors.white),
            ),
            const SizedBox(width: 12),
            const Text('티켓허브', style: AppTextStyles.heading2),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          '회원가입하고 티켓 거래를 시작하세요',
          style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
        ),
      ],
    );
  }

  Widget _buildEmailField(SignUpViewModel viewModel) {
    return AppTextField(
      label: '이메일',
      hintText: 'example@email.com',
      onChanged: viewModel.onEmailChanged,
      keyboardType: TextInputType.emailAddress,
      focusNode: _emailFocus,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (_) => _phoneFocus.requestFocus(),
    );
  }

  Widget _buildPhoneField(SignUpViewModel viewModel) {
    return AppTextField(
      label: '휴대폰 번호',
      hintText: '010-1234-5678',
      onChanged: viewModel.onPhoneChanged,
      keyboardType: TextInputType.phone,
      focusNode: _phoneFocus,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (_) => _passwordFocus.requestFocus(),
    );
  }

  Widget _buildPasswordField(SignUpState state, SignUpViewModel viewModel) {
    return AppTextField(
      label: '비밀번호',
      hintText: '비밀번호를 입력하세요',
      obscureText: !state.isPasswordVisible,
      onChanged: viewModel.onPasswordChanged,
      focusNode: _passwordFocus,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (_) => _confirmPasswordFocus.requestFocus(),
      suffixIcon: IconButton(
        icon: Icon(
          state.isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: AppColors.textTertiary,
        ),
        onPressed: viewModel.togglePasswordVisibility,
      ),
    );
  }

  Widget _buildConfirmPasswordField(
    SignUpState state,
    SignUpViewModel viewModel,
  ) {
    return AppTextField(
      label: '비밀번호 확인',
      hintText: '비밀번호를 다시 입력하세요',
      obscureText: !state.isConfirmPasswordVisible,
      onChanged: viewModel.onConfirmPasswordChanged,
      focusNode: _confirmPasswordFocus,
      textInputAction: TextInputAction.done,
      onFieldSubmitted: (_) => viewModel.signUp(),
      suffixIcon: IconButton(
        icon: Icon(
          state.isConfirmPasswordVisible
              ? Icons.visibility
              : Icons.visibility_off,
          color: AppColors.textTertiary,
        ),
        onPressed: viewModel.toggleConfirmPasswordVisibility,
      ),
    );
  }

  Widget _buildAgreementCheckbox(SignUpState state, SignUpViewModel viewModel) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: state.isAgreed,
            onChanged: viewModel.toggleAgreed,
            activeColor: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: AppTextStyles.caption.copyWith(
                color: AppColors.textPrimary,
              ),
              children: [
                TextSpan(
                  text: '이용약관',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const TextSpan(text: ' 및 '),
                TextSpan(
                  text: '개인정보처리방침',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const TextSpan(text: '에 동의합니다.'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpButton(SignUpState state, SignUpViewModel viewModel) {
    return AppButton(
      text: '회원가입',
      isLoading: state.isLoading,
      onPressed: viewModel.signUp,
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '이미 계정이 있으신가요?',
          style: TextStyle(color: AppColors.textSecondary, fontSize: 13),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () => context.pop(),
          child: const Text(
            '로그인',
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
