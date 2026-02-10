import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/change_password_viewmodel.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/widgets/password_input_field.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/widgets/password_strength_indicator.dart';

/// 비밀번호 변경 화면
class ChangePasswordView extends ConsumerStatefulWidget {
  const ChangePasswordView({super.key});

  @override
  ConsumerState<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends ConsumerState<ChangePasswordView> {
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _currentPasswordFocus = FocusNode();
  final _newPasswordFocus = FocusNode();
  final _confirmPasswordFocus = FocusNode();

  String? _currentPasswordError;
  String? _newPasswordError;
  String? _confirmPasswordError;

  int _passwordStrength = 0;

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    _currentPasswordFocus.dispose();
    _newPasswordFocus.dispose();
    _confirmPasswordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(changePasswordViewModelProvider);

    ref.listen(changePasswordViewModelProvider, (previous, next) {
      if (next.isSuccess) {
        HapticFeedback.mediumImpact();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                const Icon(Icons.check_circle, color: Colors.white),
                const SizedBox(width: AppSpacing.sm),
                Text(next.successMessage ?? '비밀번호가 변경되었습니다.'),
              ],
            ),
            backgroundColor: AppColors.success,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
        // 성공 후 뒤로가기
        Future.delayed(const Duration(milliseconds: 500), () {
          if (mounted) {
            context.pop();
          }
        });
      }

      if (next.errorMessage != null) {
        HapticFeedback.heavyImpact();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                const Icon(Icons.error_outline, color: Colors.white),
                const SizedBox(width: AppSpacing.sm),
                Expanded(child: Text(next.errorMessage!)),
              ],
            ),
            backgroundColor: AppColors.destructive,
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('비밀번호 변경'),
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: Column(
        children: [
          // 스크롤 가능한 컨텐츠 영역
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildInfoCard(),
                  const SizedBox(height: AppSpacing.lg),
                  PasswordInputField(
                    label: '현재 비밀번호',
                    hintText: '입력하세요',
                    controller: _currentPasswordController,
                    focusNode: _currentPasswordFocus,
                    errorText: _currentPasswordError,
                    onChanged: (_) => _clearFieldError('current'),
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => _newPasswordFocus.requestFocus(),
                    autofillHints: const [AutofillHints.password],
                  ),
                  const SizedBox(height: AppSpacing.md),
                  PasswordInputField(
                    label: '새 비밀번호',
                    hintText: '8자 이상 입력',
                    controller: _newPasswordController,
                    focusNode: _newPasswordFocus,
                    errorText: _newPasswordError,
                    onChanged: (value) {
                      _clearFieldError('new');
                      setState(() {
                        _passwordStrength = ref
                            .read(changePasswordViewModelProvider.notifier)
                            .calculatePasswordStrength(value);
                      });
                      HapticFeedback.selectionClick();
                    },
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () =>
                        _confirmPasswordFocus.requestFocus(),
                    autofillHints: const [AutofillHints.newPassword],
                  ),
                  PasswordStrengthIndicator(strength: _passwordStrength),
                  const SizedBox(height: AppSpacing.md),
                  PasswordInputField(
                    label: '새 비밀번호 확인',
                    hintText: '다시 입력하세요',
                    controller: _confirmPasswordController,
                    focusNode: _confirmPasswordFocus,
                    errorText: _confirmPasswordError,
                    onChanged: (_) => _clearFieldError('confirm'),
                    textInputAction: TextInputAction.done,
                    onEditingComplete: () {
                      _confirmPasswordFocus.unfocus();
                      if (!state.isLoading) _handleSubmit();
                    },
                    autofillHints: const [AutofillHints.newPassword],
                  ),
                  // 하단 버튼 높이만큼 여백 확보
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
          // 고정 하단 버튼 (RULE-04: Thumb-Zone Priority)
          _buildFixedBottomButton(state.isLoading),
        ],
      ),
    );
  }

  Widget _buildInfoCard() {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.info_outline,
                color: AppColors.primary,
                size: 20,
              ),
              const SizedBox(width: AppSpacing.sm),
              Text(
                '비밀번호 정책',
                style: AppTextStyles.body1.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          _buildPolicyItem('최소 8자 이상'),
          _buildPolicyItem('영문 대소문자, 숫자, 특수문자 중 3가지 이상 조합'),
        ],
      ),
    );
  }

  Widget _buildPolicyItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.xs),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(color: AppColors.primary)),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.body2.copyWith(color: AppColors.textPrimary),
            ),
          ),
        ],
      ),
    );
  }

  // 고정 하단 버튼 (엄지 자연 도달 영역 - RULE-04)
  Widget _buildFixedBottomButton(bool isLoading) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: SizedBox(
            width: double.infinity,
            height: 52, // 최소 터치 영역 44pt 보장
            child: ElevatedButton(
              onPressed: isLoading ? null : _handleSubmit,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.primaryForeground,
                disabledBackgroundColor: AppColors.border,
                disabledForegroundColor: AppColors.textTertiary,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : const Text(
                      '비밀번호 변경',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleSubmit() async {
    // 입력값 검증
    setState(() {
      _currentPasswordError = null;
      _newPasswordError = null;
      _confirmPasswordError = null;
    });

    final currentPassword = _currentPasswordController.text.trim();
    final newPassword = _newPasswordController.text.trim();
    final confirmPassword = _confirmPasswordController.text.trim();

    bool hasError = false;

    // RULE-08: Error Is UX Rule - 행동 가이드 중심 메시지
    if (currentPassword.isEmpty) {
      setState(() {
        _currentPasswordError = '입력해주세요';
      });
      hasError = true;
    }

    if (newPassword.isEmpty) {
      setState(() {
        _newPasswordError = '입력해주세요';
      });
      hasError = true;
    } else if (newPassword.length < 8) {
      setState(() {
        _newPasswordError = '최소 8자 이상 필요합니다';
      });
      hasError = true;
    } else if (!ref
        .read(changePasswordViewModelProvider.notifier)
        .validateNewPassword(newPassword)) {
      setState(() {
        _newPasswordError = '영문, 숫자, 특수문자 중 3가지 이상 조합하세요 (예: Pass123!)';
      });
      hasError = true;
    }

    if (confirmPassword.isEmpty) {
      setState(() {
        _confirmPasswordError = '입력해주세요';
      });
      hasError = true;
    } else if (newPassword != confirmPassword) {
      setState(() {
        _confirmPasswordError = '위의 비밀번호와 동일하게 입력하세요';
      });
      hasError = true;
    }

    if (hasError) {
      HapticFeedback.lightImpact();
      return;
    }

    // 비밀번호 변경 실행
    HapticFeedback.mediumImpact();
    final success = await ref
        .read(changePasswordViewModelProvider.notifier)
        .changePassword(
          currentPassword: currentPassword,
          newPassword: newPassword,
        );

    if (success) {
      // 성공 처리는 listener에서 수행
    }
  }

  void _clearFieldError(String field) {
    setState(() {
      switch (field) {
        case 'current':
          _currentPasswordError = null;
          break;
        case 'new':
          _newPasswordError = null;
          break;
        case 'confirm':
          _confirmPasswordError = null;
          break;
      }
    });
  }
}
