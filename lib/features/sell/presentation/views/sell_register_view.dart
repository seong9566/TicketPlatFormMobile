import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';

class SellRegisterView extends StatefulWidget {
  const SellRegisterView({super.key});

  @override
  State<SellRegisterView> createState() => _SellRegisterViewState();
}

class _SellRegisterViewState extends State<SellRegisterView> {
  // 상태 변수
  int _ticketCount = 1; // 1: 1매, 2: 2매 이상 (Enum으로 관리 가능하지만 간단히 int로)
  bool _isConsecutive = true;
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  @override
  void dispose() {
    _priceController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  bool get _isValid {
    // 가격 입력 여부 확인 등
    return _priceController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
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
                    _buildTicketCountSection(),
                    const SizedBox(height: AppSpacing.xl),
                    _buildConsecutiveSection(),
                    _buildImagePickerSection(),
                    const SizedBox(height: AppSpacing.xl),
                    _buildPriceSection(),
                    const SizedBox(height: AppSpacing.xl),
                    _buildNotesSection(),
                    const SizedBox(height: AppSpacing.xl),
                  ],
                ),
              ),
            ),
          ),
          _buildSubmitButton(),
        ],
      ),
    );
  }

  /// 판매 수량 선택 섹션
  Widget _buildTicketCountSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('판매 수량'),
        Row(
          children: [
            Expanded(
              child: _buildSelectButton(
                text: '1매',
                isSelected: _ticketCount == 1,
                onTap: () {
                  setState(() {
                    _ticketCount = 1;
                  });
                },
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: _buildSelectButton(
                text: '2매 이상',
                isSelected: _ticketCount == 2,
                onTap: () {
                  setState(() {
                    _ticketCount = 2;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// 연석 여부 선택 섹션 (2매 이상일 경우 표시)
  Widget _buildConsecutiveSection() {
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
                  value: _isConsecutive,
                  onChanged: (value) {
                    setState(() {
                      _isConsecutive = value;
                    });
                  },
                  activeColor: AppColors.primary,
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
        ],
      ),
      crossFadeState: _ticketCount == 2
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 200),
    );
  }

  /// 티켓 이미지 첨부 섹션
  Widget _buildImagePickerSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('티켓 이미지 (최대 1장)'),
        GestureDetector(
          onTap: () {
            // TODO: 이미지 피커 연동
          },
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
                  '사진 추가',
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// 판매 가격 입력 섹션
  Widget _buildPriceSection() {
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
          onChanged: (_) => setState(() {}),
        ),
        const SizedBox(height: AppSpacing.sm),
        // 안내 박스
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

  /// 특이사항 입력 섹션
  Widget _buildNotesSection() {
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

  Widget _buildSubmitButton() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: AppButton(
          text: '판매 등록하기',
          onPressed: _isValid
              ? () {
                  // TODO: 판매 등록 로직
                }
              : null,
          isLoading: false,
        ),
      ),
    );
  }
}
