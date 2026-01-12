import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/constants/app_assets.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/auth/presentation/viewmodels/login_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginViewModelProvider);
    final viewModel = ref.read(loginViewModelProvider.notifier);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackground,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [_buildLoginCard(context, state, viewModel)],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginCard(
    BuildContext context,
    state,
    LoginViewModel viewModel,
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
          const SizedBox(height: 32),
          _buildEmailField(state, viewModel),
          const SizedBox(height: AppSpacing.md),
          _buildPasswordField(state, viewModel),
          const SizedBox(height: 24),
          _buildLoginButton(state, viewModel),
          const SizedBox(height: AppSpacing.md),
          _buildAccountFindLinks(context),
          const SizedBox(height: 24),
          _buildDivider(),
          const SizedBox(height: 24),
          _buildSocialLogin(),
          const SizedBox(height: 24),
          _buildSignUpLink(context),
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
              child: const Icon(
                Icons.confirmation_number_outlined,
                color: Colors.white,
                size: 28,
              ),
            ),
            const SizedBox(width: 12),
            Text('티켓허브', style: AppTextStyles.heading2.copyWith(fontSize: 28)),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          '간편하게 로그인하고 티켓을 거래하세요',
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
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: 48,
        child: Image.asset(AppAssets.kakaoLogin, fit: BoxFit.contain),
      ),
    );
  }

  Widget _buildGoogleButton() {
    return InkWell(
      onTap: () {}, // TODO: Google Login
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 42,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 12),
            Image.asset(AppAssets.googleLogo, width: 40, height: 40),
            const SizedBox(width: 10),
            const Text(
              'Google 계정으로 로그인',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Row(
      children: [
        Expanded(
          child: Divider(color: AppColors.border.withValues(alpha: 0.5)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '또는',
            style: AppTextStyles.caption.copyWith(
              color: AppColors.textTertiary,
            ),
          ),
        ),
        Expanded(
          child: Divider(color: AppColors.border.withValues(alpha: 0.5)),
        ),
      ],
    );
  }

  Widget _buildEmailField(state, LoginViewModel viewModel) {
    return AppTextField(
      label: '이메일 또는 아이디',
      hintText: 'example@email.com',
      onChanged: viewModel.onEmailChanged,
    );
  }

  Widget _buildPasswordField(state, LoginViewModel viewModel) {
    return AppTextField(
      label: '비밀번호',
      hintText: '비밀번호를 입력하세요',
      obscureText: !state.isPasswordVisible,
      suffixIcon: IconButton(
        icon: Icon(
          state.isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: AppColors.textTertiary,
        ),
        onPressed: viewModel.togglePasswordVisibility,
      ),
      onChanged: viewModel.onPasswordChanged,
    );
  }

  Widget _buildLoginButton(state, LoginViewModel viewModel) {
    return AppButton(
      text: '로그인',
      isLoading: state.isLoading,
      onPressed: viewModel.login,
    );
  }

  Widget _buildAccountFindLinks(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTextLink(
          '아이디 찾기',
          () => context.push(AppRouterPath.findId),
          color: AppColors.textTertiary,
        ),
        const SizedBox(width: 12),
        Container(
          width: 1,
          height: 12,
          color: AppColors.border.withValues(alpha: 0.5),
        ),
        const SizedBox(width: 12),
        _buildTextLink(
          '비밀번호 찾기',
          () => context.push(AppRouterPath.findPassword),
          color: AppColors.textTertiary,
        ),
      ],
    );
  }

  Widget _buildSignUpLink(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '계정이 없으신가요? ',
          style: TextStyle(color: AppColors.textSecondary, fontSize: 13),
        ),
        _buildTextLink(
          '회원가입',
          () => context.push(AppRouterPath.signUp),
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }

  Widget _buildTextLink(
    String text,
    VoidCallback onTap, {
    Color? color,
    FontWeight? fontWeight,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: AppTextStyles.body2.copyWith(
          color: color ?? AppColors.textSecondary,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
