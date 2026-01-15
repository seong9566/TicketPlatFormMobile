import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_register_state.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_register_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';

class SellRegisterView extends ConsumerStatefulWidget {
  final String eventId;

  const SellRegisterView({super.key, required this.eventId});

  @override
  ConsumerState<SellRegisterView> createState() => _SellRegisterViewState();
}

class _SellRegisterViewState extends ConsumerState<SellRegisterView> {
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();
  static const int _maxImages = 5;

  @override
  void dispose() {
    _priceController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _pickImageFromGallery() async {
    final state = ref.read(sellRegisterViewModelProvider);
    if (state.images.length >= _maxImages) {
      _showMaxImagesSnackBar();
      return;
    }

    final XFile? image = await _imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (image != null) {
      ref
          .read(sellRegisterViewModelProvider.notifier)
          .addImage(File(image.path));
    }
  }

  Future<void> _pickImageFromCamera() async {
    final state = ref.read(sellRegisterViewModelProvider);
    if (state.images.length >= _maxImages) {
      _showMaxImagesSnackBar();
      return;
    }

    final XFile? image = await _imagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 80,
    );

    if (image != null) {
      ref
          .read(sellRegisterViewModelProvider.notifier)
          .addImage(File(image.path));
    }
  }

  void _removeImage(int index) {
    ref.read(sellRegisterViewModelProvider.notifier).removeImage(index);
  }

  void _showMaxImagesSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('최대 $_maxImages장까지 업로드 가능합니다.'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _showImageSourceBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: AppSpacing.md),
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: AppColors.border,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            ListTile(
              leading: const Icon(
                Icons.photo_library,
                color: AppColors.primary,
              ),
              title: const Text('갤러리에서 선택'),
              onTap: () {
                context.pop();
                _pickImageFromGallery();
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt, color: AppColors.primary),
              title: const Text('카메라로 촬영'),
              onTap: () {
                context.pop();
                _pickImageFromCamera();
              },
            ),
            const SizedBox(height: AppSpacing.md),
          ],
        ),
      ),
    );
  }

  Future<void> _submitTicket() async {
    final result = await ref
        .read(sellRegisterViewModelProvider.notifier)
        .registerTicket();

    if (!mounted) return;

    if (result != null) {
      ref.read(sellRegisterViewModelProvider.notifier).reset();
      _showSuccessDialog(result.ticketId);
    } else {
      final state = ref.read(sellRegisterViewModelProvider);
      if (state.errorMessage != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('등록 실패: ${state.errorMessage}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _showSuccessDialog(int ticketId) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Row(
          children: [
            Icon(Icons.check_circle, color: AppColors.primary, size: 28),
            SizedBox(width: AppSpacing.sm),
            Text('등록 완료'),
          ],
        ),
        content: const Text('티켓 판매 등록이 완료되었습니다.\n검수 후 판매가 시작됩니다.'),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
              context.go(AppRouterPath.home.path);
            },
            child: const Text('확인'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(sellRegisterViewModelProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTicketCountSection(state),
                    const SizedBox(height: AppSpacing.xl),
                    _buildConsecutiveSection(state),
                    _buildImagePickerSection(state),
                    const SizedBox(height: AppSpacing.xl),
                    _buildPriceSection(state),
                    const SizedBox(height: AppSpacing.xl),
                    _buildNotesSection(state),
                    const SizedBox(height: AppSpacing.xl),
                  ],
                ),
              ),
            ),
          ),
          _buildSubmitButton(state),
        ],
      ),
    );
  }

  Widget _buildTicketCountSection(SellRegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('판매 수량'),
        Row(
          children: [
            Expanded(
              child: _buildSelectButton(
                text: '1매',
                isSelected: state.quantity == 1,
                onTap: () => ref
                    .read(sellRegisterViewModelProvider.notifier)
                    .updateQuantity(1),
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: _buildSelectButton(
                text: '2매 이상',
                isSelected: state.quantity == 2,
                onTap: () => ref
                    .read(sellRegisterViewModelProvider.notifier)
                    .updateQuantity(2),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildConsecutiveSection(SellRegisterState state) {
    return AnimatedCrossFade(
      firstChild: Container(),
      secondChild: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.sm,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('연석 여부', style: AppTextStyles.body1),
                Switch(
                  value: state.isConsecutive,
                  onChanged: (value) => ref
                      .read(sellRegisterViewModelProvider.notifier)
                      .updateIsConsecutive(value),
                  activeTrackColor: AppColors.primary.withValues(alpha: 0.5),
                  activeColor: AppColors.primary,
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
        ],
      ),
      crossFadeState: state.quantity == 2
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 200),
    );
  }

  Widget _buildImagePickerSection(SellRegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('티켓 이미지 (최대 $_maxImages장)'),
        const SizedBox(height: AppSpacing.xs),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...state.images.asMap().entries.map((entry) {
                return _buildSelectedImageItem(entry.key, entry.value);
              }),
              if (state.images.length < _maxImages) _buildAddImageButton(),
            ],
          ),
        ),
        if (state.images.isNotEmpty) ...[
          const SizedBox(height: AppSpacing.sm),
          Text(
            '${state.images.length}/$_maxImages장 선택됨',
            style: AppTextStyles.caption.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildSelectedImageItem(int index, File imageFile) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSpacing.sm),
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: FileImage(imageFile),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 4,
            right: 4,
            child: GestureDetector(
              onTap: () => _removeImage(index),
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.6),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.close, color: Colors.white, size: 16),
              ),
            ),
          ),
          if (index == 0)
            Positioned(
              bottom: 4,
              left: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '대표',
                  style: AppTextStyles.caption.copyWith(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildAddImageButton() {
    return GestureDetector(
      onTap: _showImageSourceBottomSheet,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: const Color(0xFFF5F9F7),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.primary.withValues(alpha: 0.5)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.camera_alt_outlined, color: AppColors.primary),
            const SizedBox(height: 4),
            Text(
              '사진 추가',
              style: AppTextStyles.caption.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceSection(SellRegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('판매 가격'),
        AppTextField(
          label: '',
          controller: _priceController,
          keyboardType: TextInputType.number,
          hintText: '0',
          suffixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              '원',
              style: AppTextStyles.body1,
              textAlign: TextAlign.center,
            ),
          ),
          onChanged: (value) {
            ref.read(sellRegisterViewModelProvider.notifier).updatePrice(value);
          },
        ),
        const SizedBox(height: AppSpacing.sm),
        Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.error_outline,
                color: AppColors.textSecondary,
                size: 20,
              ),
              const SizedBox(width: AppSpacing.xs),
              Expanded(
                child: Text(
                  '티켓은 정가 이하로만 판매할 수 있습니다.',
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNotesSection(SellRegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('특이사항'),
        Container(
          height: 120,
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.border),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: _notesController,
            maxLines: null,
            decoration: InputDecoration(
              hintText: '구매자에게 전달할 특이사항을 입력해주세요.\n(선택)',
              hintStyle: AppTextStyles.body2.copyWith(
                color: AppColors.textTertiary,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
            ),
            style: AppTextStyles.body2,
            onChanged: (value) {
              ref
                  .read(sellRegisterViewModelProvider.notifier)
                  .updateDescription(value);
            },
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        '판매 정보 입력',
        style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => context.pop(),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xs),
      child: Text(
        text,
        style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildSelectButton({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFE8F5E9) : Colors.white,
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.border,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: AppTextStyles.body1.copyWith(
            color: isSelected ? AppColors.primary : AppColors.textSecondary,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton(SellRegisterState state) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: AppButton(
          text: '판매 등록하기',
          onPressed: state.isRegisterValid ? _submitTicket : null,
          isLoading: state.isLoading,
        ),
      ),
    );
  }
}
