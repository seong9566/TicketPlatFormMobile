import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';

/// 결제 요청 수량 입력 다이얼로그
///
/// [maxQuantity]: 선택 가능한 최대 수량
/// [unitPrice]: 티켓 1장당 가격 (KRW)
///
/// Returns: 선택된 수량 (취소 시 null)
Future<int?> showQuantityInputDialog({
  required BuildContext context,
  required int maxQuantity,
  required int unitPrice,
}) {
  return showDialog<int>(
    context: context,
    barrierDismissible: true,
    builder: (context) =>
        _QuantityInputDialog(maxQuantity: maxQuantity, unitPrice: unitPrice),
  );
}

class _QuantityInputDialog extends StatefulWidget {
  final int maxQuantity;
  final int unitPrice;

  const _QuantityInputDialog({
    required this.maxQuantity,
    required this.unitPrice,
  });

  @override
  State<_QuantityInputDialog> createState() => _QuantityInputDialogState();
}

class _QuantityInputDialogState extends State<_QuantityInputDialog> {
  late int _selectedQuantity;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _selectedQuantity = 1;
    _controller = TextEditingController(text: '1');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _incrementQuantity() {
    if (_selectedQuantity < widget.maxQuantity) {
      setState(() {
        _selectedQuantity++;
        _controller.text = _selectedQuantity.toString();
      });
    }
  }

  void _decrementQuantity() {
    if (_selectedQuantity > 1) {
      setState(() {
        _selectedQuantity--;
        _controller.text = _selectedQuantity.toString();
      });
    }
  }

  void _onTextChanged(String value) {
    final parsedValue = int.tryParse(value);
    if (parsedValue != null &&
        parsedValue >= 1 &&
        parsedValue <= widget.maxQuantity) {
      setState(() {
        _selectedQuantity = parsedValue;
      });
    }
  }

  int get _totalAmount => widget.unitPrice * _selectedQuantity;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildDialogContent(),
    );
  }

  Widget _buildDialogContent() {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeader(),
          const SizedBox(height: AppSpacing.lg),
          _buildUnitPriceRow(),
          const SizedBox(height: AppSpacing.md),
          _buildQuantitySelector(),
          const SizedBox(height: AppSpacing.lg),
          _buildDivider(),
          const SizedBox(height: AppSpacing.md),
          _buildTotalAmountRow(),
          const SizedBox(height: AppSpacing.xl),
          _buildActions(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Expanded(
          child: Text(
            '결제 요청 수량 선택',
            style: AppTextStyles.heading3.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.close,
            color: AppColors.textTertiary,
            size: 24,
          ),
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
        ),
      ],
    );
  }

  Widget _buildUnitPriceRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '티켓 단가',
          style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
        ),
        Text(
          NumberFormatUtil.formatPrice(widget.unitPrice),
          style: AppTextStyles.body1.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildQuantitySelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '수량',
          style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
        ),
        Row(
          children: [
            _buildQuantityButton(
              icon: Icons.remove,
              onPressed: _selectedQuantity > 1 ? _decrementQuantity : null,
            ),
            const SizedBox(width: AppSpacing.sm),
            _buildQuantityInput(),
            const SizedBox(width: AppSpacing.sm),
            _buildQuantityButton(
              icon: Icons.add,
              onPressed: _selectedQuantity < widget.maxQuantity
                  ? _incrementQuantity
                  : null,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildQuantityButton({
    required IconData icon,
    required VoidCallback? onPressed,
  }) {
    return SizedBox(
      width: 36,
      height: 36,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: onPressed != null
              ? AppColors.primary
              : AppColors.disabled,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Icon(icon, size: 20),
      ),
    );
  }

  Widget _buildQuantityInput() {
    return Container(
      width: 60,
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        style: AppTextStyles.body1.copyWith(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w600,
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
          isDense: true,
        ),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onChanged: _onTextChanged,
      ),
    );
  }

  Widget _buildDivider() {
    return Container(height: 1, color: AppColors.border);
  }

  Widget _buildTotalAmountRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '총 금액',
          style: AppTextStyles.body1.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          NumberFormatUtil.formatPrice(_totalAmount),
          style: AppTextStyles.heading3.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildActions() {
    return Row(
      children: [
        Expanded(
          child: _buildButton(
            text: '취소',
            onPressed: () => context.pop(),
            color: Colors.white,
            textColor: AppColors.textPrimary,
            hasBorder: true,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildButton(
            text: '확인',
            onPressed: () => context.pop(_selectedQuantity),
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }

  Widget _buildButton({
    required String text,
    required VoidCallback onPressed,
    required Color color,
    Color textColor = Colors.white,
    bool hasBorder = false,
  }) {
    return SizedBox(
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: hasBorder
                ? const BorderSide(color: AppColors.border)
                : BorderSide.none,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
