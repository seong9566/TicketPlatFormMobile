import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
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
  return showGeneralDialog<int>(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'Dismiss',
    barrierColor: Colors.black.withOpacity(0.4),
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, animation, secondaryAnimation) {
      return _QuantityInputDialog(
        maxQuantity: maxQuantity,
        unitPrice: unitPrice,
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: CurvedAnimation(parent: animation, curve: Curves.easeOutBack),
        child: FadeTransition(opacity: animation, child: child),
      );
    },
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

class _QuantityInputDialogState extends State<_QuantityInputDialog>
    with SingleTickerProviderStateMixin {
  late int _selectedQuantity;
  late TextEditingController _controller;
  late AnimationController _shakeController;

  @override
  void initState() {
    super.initState();
    _selectedQuantity = 1;
    _controller = TextEditingController(text: '1');
    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _shakeController.dispose();
    super.dispose();
  }

  void _incrementQuantity() {
    if (_selectedQuantity < widget.maxQuantity) {
      HapticFeedback.lightImpact();
      setState(() {
        _selectedQuantity++;
        _controller.text = _selectedQuantity.toString();
      });
    } else {
      HapticFeedback.heavyImpact();
      _shakeController.forward(from: 0);
    }
  }

  void _decrementQuantity() {
    if (_selectedQuantity > 1) {
      HapticFeedback.lightImpact();
      setState(() {
        _selectedQuantity--;
        _controller.text = _selectedQuantity.toString();
      });
    } else {
      HapticFeedback.mediumImpact();
    }
  }

  void _onTextChanged(String value) {
    final parsedValue = int.tryParse(value);
    if (parsedValue != null) {
      if (parsedValue >= 1 && parsedValue <= widget.maxQuantity) {
        setState(() {
          _selectedQuantity = parsedValue;
        });
      } else if (parsedValue > widget.maxQuantity) {
        setState(() {
          _selectedQuantity = widget.maxQuantity;
          _controller.text = widget.maxQuantity.toString();
          _controller.selection = TextSelection.fromPosition(
            TextPosition(offset: _controller.text.length),
          );
        });
      }
    }
  }

  int get _totalAmount => widget.unitPrice * _selectedQuantity;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      child: _buildDialogContent(),
    );
  }

  Widget _buildDialogContent() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(28),
            border: Border.all(
              color: Colors.white.withOpacity(0.5),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
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
              _buildUnitPriceInfo(),
              const SizedBox(height: 24),
              _buildQuantitySelector(),
              const SizedBox(height: 32),
              _buildDivider(),
              const SizedBox(height: 20),
              _buildTotalAmountRow(),
              const SizedBox(height: 32),
              _buildActions(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '수량 선택',
              style: AppTextStyles.heading2.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '구매하실 티켓의 수량을 선택해주세요',
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textSecondary,
                fontSize: 13,
              ),
            ),
          ],
        ),
        _CloseButton(onPressed: () => context.pop()),
      ],
    );
  }

  Widget _buildUnitPriceInfo() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.muted,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.confirmation_number_outlined,
                size: 18,
                color: AppColors.textSecondary,
              ),
              const SizedBox(width: 8),
              Text(
                '티켓 단가',
                style: AppTextStyles.body2.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Text(
            NumberFormatUtil.formatPrice(widget.unitPrice),
            style: AppTextStyles.body1.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuantitySelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _AnimatedScaleButton(
          icon: Icons.remove,
          onPressed: _selectedQuantity > 1 ? _decrementQuantity : null,
          enabled: _selectedQuantity > 1,
        ),
        Expanded(
          child: AnimatedBuilder(
            animation: _shakeController,
            builder: (context, child) {
              final offset =
                  10 *
                  _shakeController.value *
                  (0.5 - (0.5 - _shakeController.value).abs()).sign;
              return Transform.translate(
                offset: Offset(offset, 0),
                child: Container(
                  height: 56,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.border),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: TextField(
                    controller: _controller,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.heading1.copyWith(
                      fontSize: 24,
                      color: AppColors.primary,
                      height: 1.0,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      isDense: true,
                    ),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: _onTextChanged,
                  ),
                ),
              );
            },
          ),
        ),
        _AnimatedScaleButton(
          icon: Icons.add,
          onPressed: _selectedQuantity < widget.maxQuantity
              ? _incrementQuantity
              : null,
          enabled: _selectedQuantity < widget.maxQuantity,
          isPrimary: true,
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.border.withOpacity(0.1),
            AppColors.border,
            AppColors.border.withOpacity(0.1),
          ],
        ),
      ),
    );
  }

  Widget _buildTotalAmountRow() {
    return Column(
      children: [
        Text(
          '총 결제 예정 금액',
          style: AppTextStyles.body2.copyWith(
            color: AppColors.textSecondary,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          NumberFormatUtil.formatPrice(_totalAmount),
          style: AppTextStyles.heading1.copyWith(
            color: AppColors.primary,
            fontSize: 32,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }

  Widget _buildActions() {
    return Row(
      children: [
        Expanded(
          child: _ActionButton(
            text: '취소',
            onPressed: () => context.pop(),
            isPrimary: false,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _ActionButton(
            text: '확인',
            onPressed: () {
              HapticFeedback.mediumImpact();
              context.pop(_selectedQuantity);
            },
            isPrimary: true,
          ),
        ),
      ],
    );
  }
}

class _AnimatedScaleButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final bool enabled;
  final bool isPrimary;

  const _AnimatedScaleButton({
    required this.icon,
    required this.onPressed,
    required this.enabled,
    this.isPrimary = false,
  });

  @override
  State<_AnimatedScaleButton> createState() => _AnimatedScaleButtonState();
}

class _AnimatedScaleButtonState extends State<_AnimatedScaleButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.9,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: widget.enabled ? (_) => _controller.forward() : null,
      onTapUp: widget.enabled
          ? (_) {
              _controller.reverse();
              widget.onPressed?.call();
            }
          : null,
      onTapCancel: widget.enabled ? () => _controller.reverse() : null,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: widget.enabled
                ? (widget.isPrimary ? AppColors.primary : Colors.white)
                : AppColors.disabled.withOpacity(0.3),
            shape: BoxShape.circle,
            border: widget.isPrimary || !widget.enabled
                ? null
                : Border.all(color: AppColors.border),
            boxShadow: widget.enabled
                ? [
                    BoxShadow(
                      color:
                          (widget.isPrimary ? AppColors.primary : Colors.black)
                              .withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          child: Icon(
            widget.icon,
            color: widget.enabled
                ? (widget.isPrimary ? Colors.white : AppColors.textPrimary)
                : Colors.white,
            size: 24,
          ),
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isPrimary;

  const _ActionButton({
    required this.text,
    required this.onPressed,
    required this.isPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isPrimary ? AppColors.primary : Colors.white,
          foregroundColor: isPrimary ? Colors.white : AppColors.textPrimary,
          elevation: isPrimary ? 8 : 0,
          shadowColor: isPrimary ? AppColors.primary.withOpacity(0.4) : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: isPrimary
                ? BorderSide.none
                : const BorderSide(color: AppColors.border),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.body1.copyWith(
            color: isPrimary ? Colors.white : AppColors.textPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class _CloseButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _CloseButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.gray100,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.close,
          size: 20,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}
