import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/text_field_formatter.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_register_state.dart';
import 'package:ticket_platform_mobile/features/sell/presentation/viewmodels/sell_register_viewmodel.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_button.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_text_field.dart';
import 'package:ticket_platform_mobile/shared/widgets/app_toggle.dart';

/// 5단계: 수량 및 가격 설정 화면
class SellPriceView extends ConsumerStatefulWidget {
  final String eventId;

  const SellPriceView({super.key, required this.eventId});

  @override
  ConsumerState<SellPriceView> createState() => _SellPriceViewState();
}

class _SellPriceViewState extends ConsumerState<SellPriceView> {
  final TextEditingController _priceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // 기존 입력값이 있으면 컨트롤러에 초기화
    final state = ref.read(sellRegisterViewModelProvider);
    if (state.price.isNotEmpty) {
      _priceController.text = state.price;
    }
    // 정가 조회 호출
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(sellRegisterViewModelProvider.notifier).loadOriginalPrice();
    });
  }

  @override
  void dispose() {
    _priceController.dispose();
    super.dispose();
  }

  void _onConfirm() {
    context.pushNamed(
      AppRouterPath.sellAdditionalInfo.name,
      pathParameters: {'eventId': widget.eventId},
    );
  }

  // 정가보다 높은지 확인
  bool _isPriceInvalid(SellRegisterState state) {
    if (state.originalPrice == null || state.price.isEmpty) return false;
    final inputPrice = int.tryParse(state.price.replaceAll(',', '')) ?? 0;
    final totalOriginalPrice = state.originalPrice! * state.quantity;
    return inputPrice > totalOriginalPrice;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(sellRegisterViewModelProvider);

    // ViewModel에서 가격이 자동 계산되어 변경될 때 컨트롤러 동기화
    ref.listen(sellRegisterViewModelProvider.select((s) => s.price), (
      previous,
      next,
    ) {
      if (next != _priceController.text) {
        _priceController.text = next;
      }
    });

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
                  Text('수량과 가격을 설정해주세요', style: AppTextStyles.heading2),
                  const SizedBox(height: AppSpacing.xl),
                  // 판매 수량
                  _buildQuantitySection(state),
                  const SizedBox(height: AppSpacing.xl),

                  // 정가
                  _buildListPriceSection(state),
                  const SizedBox(height: AppSpacing.xl),

                  // 판매가
                  _buildPriceSection(state),
                ],
              ),
            ),
          ),
        ),
        _buildNextButton(state),
      ],
    );
  }

  Widget _buildQuantitySection(SellRegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('판매 수량'),
        const SizedBox(height: AppSpacing.sm),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildQuantityButton(
              icon: Icons.remove,
              onTap: () => ref
                  .read(sellRegisterViewModelProvider.notifier)
                  .decrementQuantity(),
              isEnabled: state.quantity > 1,
            ),
            Container(
              alignment: Alignment.center,
              width: 80,
              child: Text(
                '${state.quantity}매',
                style: AppTextStyles.heading2.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildQuantityButton(
              icon: Icons.add,
              onTap: () => ref
                  .read(sellRegisterViewModelProvider.notifier)
                  .incrementQuantity(),
              isEnabled: true,
            ),
          ],
        ),
        if (state.quantity >= 2) ...[
          const SizedBox(height: AppSpacing.lg),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.xs,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(12),
            ),
            child: AppToggle(
              value: state.isConsecutive,
              onChanged: (value) {
                ref
                    .read(sellRegisterViewModelProvider.notifier)
                    .updateIsConsecutive(value);
              },
              label: '연석 여부',
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildQuantityButton({
    required IconData icon,
    required VoidCallback onTap,
    required bool isEnabled,
  }) {
    return GestureDetector(
      onTap: isEnabled ? onTap : null,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: isEnabled
              ? AppColors.inputBackground
              : AppColors.inputBackground.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          color: isEnabled ? Colors.black : AppColors.textTertiary,
        ),
      ),
    );
  }

  Widget _buildListPriceSection(SellRegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('정가'),
        const SizedBox(height: AppSpacing.sm),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.md,
            horizontal: AppSpacing.md,
          ),
          decoration: BoxDecoration(
            color: AppColors.inputBackground,
            borderRadius: BorderRadius.circular(12),
          ),
          child: _buildOriginalPriceContent(
            state.originalPrice,
            state.quantity,
          ),
        ),
      ],
    );
  }

  Widget _buildPriceSection(SellRegisterState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel('판매 가격', isRequired: true),
        AppTextField(
          label: '',
          textAlign: TextAlign.end,
          inputFormatters: [PriceFormatter()],
          controller: _priceController,
          keyboardType: TextInputType.number,

          hintText: '0',
          suffixIcon: Container(
            width: 40,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: AppSpacing.md + 4),
            child: Text('원', style: AppTextStyles.body1),
          ),
          onChanged: (value) {
            ref.read(sellRegisterViewModelProvider.notifier).updatePrice(value);
          },
        ),
        const SizedBox(height: AppSpacing.sm),
        if (state.originalPrice != null && _isPriceInvalid(state))
          Padding(
            padding: const EdgeInsets.only(top: AppSpacing.xs),
            child: Text(
              '판매 가격은 정가 총액(${NumberFormatUtil.formatPrice(state.originalPrice! * state.quantity)})보다 높을 수 없습니다.',
              style: AppTextStyles.caption.copyWith(color: Colors.red),
            ),
          ),
      ],
    );
  }

  Widget _buildOriginalPriceContent(int? originalPrice, int quantity) {
    if (originalPrice == null) {
      return Text(
        '정가 정보 없음',
        style: AppTextStyles.body1.copyWith(color: AppColors.textTertiary),
        textAlign: TextAlign.center,
      );
    }
    final totalPrice = originalPrice * quantity;
    final formattedNumber = NumberFormatUtil.formatNumber(totalPrice);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '정가 총액',
          style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              formattedNumber,
              style: AppTextStyles.body1.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              width: 40, // 텍스트 필드의 suffixIcon 너비와 동일하게 설정
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 4.0),
              child: Text(
                '원',
                style: AppTextStyles.body1.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLabel(String text, {bool isRequired = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xs),
      child: RichText(
        text: TextSpan(
          text: text,
          style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.w600),
          children: [
            if (isRequired)
              TextSpan(
                text: ' *',
                style: AppTextStyles.body1.copyWith(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildNextButton(SellRegisterState state) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: AppButton(
          text: '다음',
          onPressed: (state.isPriceStepValid) ? _onConfirm : null,
          backgroundColor: (state.isPriceStepValid)
              ? AppColors.primary
              : AppColors.disabled,
        ),
      ),
    );
  }
}
