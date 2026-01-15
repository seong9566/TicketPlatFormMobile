import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/ui_models/my_profile_ui_model.dart';
import 'package:ticket_platform_mobile/features/profile/presentation/viewmodels/profile_edit_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';

class ProfileEditView extends ConsumerStatefulWidget {
  final MyProfileUiModel? profile;

  const ProfileEditView({super.key, this.profile});

  @override
  ConsumerState<ProfileEditView> createState() => _ProfileEditViewState();
}

class _ProfileEditViewState extends ConsumerState<ProfileEditView> {
  late final TextEditingController _nicknameController;
  late final TextEditingController _emailController;
  XFile? _selectedImage;

  @override
  void initState() {
    super.initState();
    _nicknameController = TextEditingController(
      text: widget.profile?.nickname ?? '',
    );
    _emailController = TextEditingController(text: widget.profile?.email ?? '');

    // 닉네임 글자 수 실시간 업데이트
    _nicknameController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _nicknameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  /// 저장 처리
  Future<void> _handleSave() async {
    final nickname = _nicknameController.text.trim();

    // 닉네임 유효성 검증
    if (nickname.isNotEmpty && (nickname.length < 2 || nickname.length > 20)) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('닉네임은 2~20자 이내로 입력해주세요')));
      return;
    }

    final viewModel = ref.read(profileEditViewModelProvider.notifier);
    final success = await viewModel.updateProfile(
      nickname: nickname.isNotEmpty ? nickname : null,
      profileImage: _selectedImage,
    );

    if (success && mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('프로필이 수정되었습니다')));
      context.pop();
    } else if (mounted) {
      final state = ref.read(profileEditViewModelProvider);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(state.errorMessage ?? '프로필 수정에 실패했습니다')),
      );
    }
  }

  /// 이미지 선택
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 512,
      maxHeight: 512,
      imageQuality: 80,
    );

    if (image != null) {
      setState(() {
        _selectedImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final editState = ref.watch(profileEditViewModelProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('프로필 수정', style: AppTextStyles.body1),
        backgroundColor: Colors.white,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  children: [
                    const SizedBox(height: AppSpacing.xl),
                    _buildAvatarSection(),
                    const SizedBox(height: 40),
                    _buildNicknameSection(),
                    const SizedBox(height: AppSpacing.xl),
                    _buildEmailSection(),
                  ],
                ),
              ),
            ),
            _buildBottomButton(editState.isLoading),
          ],
        ),
      ),
    );
  }

  /// 프로필 이미지 섹션
  Widget _buildAvatarSection() {
    return Column(
      children: [
        GestureDetector(
          onTap: _pickImage,
          child: Stack(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFDE68A),
                ),
                child: _buildAvatarImage(),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          '프로필 사진을 변경하려면 카메라 아이콘을 눌러주세요',
          style: AppTextStyles.caption.copyWith(color: AppColors.textSecondary),
        ),
      ],
    );
  }

  Widget _buildAvatarImage() {
    // 새로 선택한 이미지가 있으면 표시 (로컬 파일)
    if (_selectedImage != null) {
      return ClipOval(
        child: Image.file(
          File(_selectedImage!.path),
          width: 100,
          height: 100,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => _buildDefaultIcon(),
        ),
      );
    }

    // 기존 프로필 이미지가 있으면 표시 (네트워크 이미지)
    final imageUrl = widget.profile?.profileImageUrl;
    if (imageUrl != null && imageUrl.isNotEmpty) {
      return ClipOval(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
          placeholder: (context, url) =>
              const CircularProgressIndicator(strokeWidth: 2),
          errorWidget: (context, url, error) => _buildDefaultIcon(),
        ),
      );
    }

    return _buildDefaultIcon();
  }

  Widget _buildDefaultIcon() {
    return const Icon(Icons.person_outline, size: 48, color: Color(0xFF92400E));
  }

  /// 닉네임 입력 섹션
  Widget _buildNicknameSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('닉네임', style: AppTextStyles.body2),
        const SizedBox(height: AppSpacing.xs),
        TextField(
          controller: _nicknameController,
          maxLength: 20,
          decoration: InputDecoration(
            hintText: '닉네임을 입력해주세요',
            counterText: '',
            filled: true,
            fillColor: AppColors.background,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.border),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.sm,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '2~20자 이내로 입력해주세요',
              style: AppTextStyles.caption.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            Text(
              '${_nicknameController.text.length}/20',
              style: AppTextStyles.caption.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// 이메일 입력 섹션 (Read Only)
  Widget _buildEmailSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('이메일', style: AppTextStyles.body2),
        const SizedBox(height: AppSpacing.xs),
        TextField(
          controller: _emailController,
          readOnly: true,
          style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.scaffoldBackground,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.sm,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          '* 이메일은 변경할 수 없습니다',
          style: AppTextStyles.caption.copyWith(color: AppColors.textSecondary),
        ),
      ],
    );
  }

  /// 하단 저장 버튼
  Widget _buildBottomButton(bool isLoading) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: AppButton(
        text: '저장하기',
        isLoading: isLoading,
        onPressed: isLoading ? null : _handleSave,
      ),
    );
  }
}
