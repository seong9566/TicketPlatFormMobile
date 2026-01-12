import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/constants/app_assets.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/sign_up_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';

class SignUpView extends ConsumerWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signUpViewModelProvider);
    final viewModel = ref.read(signUpViewModelProvider.notifier);

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
    state,
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
          _buildSocialLogin(),
          const SizedBox(height: AppSpacing.xl),
          _buildDivider(),
          const SizedBox(height: AppSpacing.xl),
          _buildEmailField(viewModel),
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

  Widget _buildSocialLogin() {
    return Column(
      children: [
        _buildKakaoButton(),
        const SizedBox(height: 12),
        _buildGoogleButton(),
      ],
    );
  }

  Widget _buildKakaoButton() {
    return InkWell(
      onTap: () {}, // TODO: Kakao Login
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(AppAssets.kakaoLogin, fit: BoxFit.contain),
    );
  }

  Widget _buildGoogleButton() {
    return InkWell(
      onTap: () {}, // TODO: Google Login
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.border.withValues(alpha: 0.8)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.googleLogo, width: 24, height: 24),
            const SizedBox(width: 12),
            const Text(
              '구글로 로그인',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1F1F1F),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: AppColors.border.withValues(alpha: 0.5),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '또는',
            style: TextStyle(color: AppColors.textTertiary, fontSize: 13),
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            color: AppColors.border.withValues(alpha: 0.5),
          ),
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
    );
  }

  Widget _buildPasswordField(state, SignUpViewModel viewModel) {
    return AppTextField(
      label: '비밀번호',
      hintText: '비밀번호를 입력하세요',
      obscureText: !state.isPasswordVisible,
      onChanged: viewModel.onPasswordChanged,
      suffixIcon: IconButton(
        icon: Icon(
          state.isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: AppColors.textTertiary,
        ),
        onPressed: viewModel.togglePasswordVisibility,
      ),
    );
  }

  Widget _buildConfirmPasswordField(state, SignUpViewModel viewModel) {
    return AppTextField(
      label: '비밀번호 확인',
      hintText: '비밀번호를 다시 입력하세요',
      obscureText: !state.isConfirmPasswordVisible,
      onChanged: viewModel.onConfirmPasswordChanged,
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

  Widget _buildAgreementCheckbox(state, SignUpViewModel viewModel) {
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

  Widget _buildSignUpButton(state, SignUpViewModel viewModel) {
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
