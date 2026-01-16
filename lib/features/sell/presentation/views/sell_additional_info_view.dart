import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_register_state.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_register_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_toggle.dart';

/// 6단계: 추가 정보 입력 및 등록 화면
class SellAdditionalInfoView extends ConsumerStatefulWidget {
  final String eventId;

  const SellAdditionalInfoView({super.key, required this.eventId});

  @override
  ConsumerState<SellAdditionalInfoView> createState() =>
      _SellAdditionalInfoViewState();
}

class _SellAdditionalInfoViewState
    extends ConsumerState<SellAdditionalInfoView> {
  final TextEditingController _notesController = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();
  static const int _maxImages = 5;

  @override
  void dispose() {
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

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppSpacing.lg),
                  Text('이미지와 설명을 추가해주세요', style: AppTextStyles.heading2),
                  const SizedBox(height: AppSpacing.xl),
                  _buildImagePickerSection(state),
                  const SizedBox(height: AppSpacing.xl),
                  _buildSpecialNotesSection(state),
                  const SizedBox(height: AppSpacing.xl),
                  _buildDealMethodSection(state),
                  const SizedBox(height: AppSpacing.xl),
                  _buildTicketHoldingSection(state),
                  const SizedBox(height: AppSpacing.xl),
                  _buildDescriptionSection(state),
                  const SizedBox(height: AppSpacing.xl),
                  _buildSummarySection(state),
                ],
              ),
            ),
          ),
        ),
        _buildSubmitButton(state),
      ],
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
              if (state.images.length < _maxImages) _buildAddImageButton(),
              ...state.images.asMap().entries.map((entry) {
                return _buildSelectedImageItem(entry.key, entry.value);
              }),
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
        const SizedBox(height: AppSpacing.xs),
        Text(
          '좌석 번호가 보이는 티켓 사진을 올려주세요',
          style: AppTextStyles.caption.copyWith(color: AppColors.textTertiary),
        ),
      ],
    );
  }

  Widget _buildSelectedImageItem(int index, File imageFile) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSpacing.sm),
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
          border: Border.all(
            color: AppColors.primary.withValues(alpha: 0.5),
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.camera_alt_outlined, color: AppColors.primary),
            const SizedBox(height: 4),
            Text(
              '0/5',
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

  Widget _buildSpecialNotesSection(SellRegisterState state) {
    final tags = [
      '예매처 ID로 전달',
      '현장발권',
      '모바일티켓',
      '할인티켓(증빙필요)',
      '신분증필요',
      '시야제한석',
      '현장도움',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('특이사항 (중복 선택 가능)'),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: tags.map((tag) {
            final isSelected = state.noteTags.contains(tag);
            return FilterChip(
              label: Text(tag),
              selected: isSelected,
              onSelected: (selected) {
                ref
                    .read(sellRegisterViewModelProvider.notifier)
                    .toggleNoteTag(tag);
              },
              selectedColor: AppColors.primary.withValues(alpha: 0.2),
              checkmarkColor: AppColors.primary,
              labelStyle: AppTextStyles.body2.copyWith(
                color: isSelected ? AppColors.primary : AppColors.textPrimary,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
              backgroundColor: AppColors.inputBackground,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: isSelected ? AppColors.primary : Colors.transparent,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildDealMethodSection(SellRegisterState state) {
    final methods = ['PIN거래', '배송거래', '현장거래', '기타거래'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('거래 방식'),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: methods.map((method) {
            final isSelected = state.dealMethod == method;
            return ChoiceChip(
              label: Text(method),
              selected: isSelected,
              onSelected: (selected) {
                ref
                    .read(sellRegisterViewModelProvider.notifier)
                    .updateDealMethod(selected ? method : '');
                // Note: single select, likely can't deselect to empty if required, but logic allows it currently.
              },
              selectedColor: AppColors.primary.withValues(alpha: 0.2),
              // checkmarkColor: AppColors.primary, // ChoiceChip doesn't have checkmarkColor directly usually, style label
              labelStyle: AppTextStyles.body2.copyWith(
                color: isSelected ? AppColors.primary : AppColors.textPrimary,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
              backgroundColor: AppColors.inputBackground,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: isSelected ? AppColors.primary : Colors.transparent,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildTicketHoldingSection(SellRegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppToggle(
          value: state.isHolding,
          onChanged: (value) {
            ref
                .read(sellRegisterViewModelProvider.notifier)
                .updateIsHolding(value);
          },
          label: '티켓 보유 여부',
          activeColor: AppColors.primary,
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          state.isHolding ? '보유' : '미보유 (예매 완료 후 수령대기중)',
          style: AppTextStyles.body2.copyWith(
            color: state.isHolding ? AppColors.primary : AppColors.textTertiary,
          ),
        ),
      ],
    );
  }

  Widget _buildDescriptionSection(SellRegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('거래 설명 (선택)'),
        Container(
          height: 120,
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.border),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  controller: _notesController,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: '구매자에게 전달할 추가 정보를 입력해주세요.\n예: 직거래 가능, 양도 사유 등',
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
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '${_notesController.text.length}/500',
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.textTertiary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSummarySection(SellRegisterState state) {
    final eventTitle = state.selectedEvent?.title ?? '';
    final date = state.selectedSchedule?.date;
    final dateStr = date != null ? DateFormatUtil.formatWithDay(date) : '';
    final seatInfo = state.seatInfo;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.inputBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '등록 요약',
            style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: AppSpacing.md),
          _buildSummaryRow('공연', eventTitle),
          const SizedBox(height: AppSpacing.sm),
          _buildSummaryRow('일시', dateStr),
          const SizedBox(height: AppSpacing.sm),
          _buildSummaryRow('좌석', seatInfo),
          const SizedBox(height: AppSpacing.sm),
          _buildSummaryRow('수량', '${state.quantity}매'),
          const SizedBox(height: AppSpacing.sm),
          _buildSummaryRow(
            '가격',
            '${state.price}원',
            valueColor: AppColors.primary,
            isBold: true,
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(
    String label,
    String value, {
    Color? valueColor,
    bool isBold = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 60,
          child: Text(
            label,
            style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: AppTextStyles.body2.copyWith(
              color: valueColor ?? AppColors.textPrimary,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }

  Widget _buildLabel(String text, {double bottomPadding = AppSpacing.xs}) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: Text(
        text,
        style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildSubmitButton(SellRegisterState state) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: AppButton(
          text: '티켓 등록하기',
          onPressed: _submitTicket,
          isLoading: state.isLoading,
        ),
      ),
    );
  }
}
