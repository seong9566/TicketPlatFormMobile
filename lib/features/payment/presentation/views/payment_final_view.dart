import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/features/payment/presentation/viewmodels/payment_viewmodel.dart';
import 'package:ticket_platform_mobile/features/payment/presentation/views/payment_success_widget.dart';
import 'package:ticket_platform_mobile/features/payment/presentation/views/payment_failure_view.dart';
import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_final_view_entity.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';

class PaymentFinalView extends ConsumerStatefulWidget {
  final String paymentKey;
  final String orderId;
  final int amount;

  // Frontend failure properties (optional)
  final String? frontendErrorCode;
  final String? frontendErrorMessage;

  const PaymentFinalView({
    super.key,
    required this.paymentKey,
    required this.orderId,
    required this.amount,
    this.frontendErrorCode,
    this.frontendErrorMessage,
  });

  @override
  ConsumerState<PaymentFinalView> createState() => _PaymentFinalViewState();
}

class _PaymentFinalViewState extends ConsumerState<PaymentFinalView> {
  @override
  void initState() {
    super.initState();
    // If there is no frontend error, proceed to confirm payment
    if (widget.frontendErrorCode == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref
            .read(paymentViewModelProvider.notifier)
            .confirmPayment(
              paymentKey: widget.paymentKey,
              orderId: widget.orderId,
              amount: widget.amount,
            );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // 1. Determine local content based on state
    Widget content;

    // A. Frontend Fail Error
    if (widget.frontendErrorCode != null) {
      content = PaymentFailureWidget(
        errorCode: widget.frontendErrorCode ?? 'UNKNOWN',
        errorMessage: widget.frontendErrorMessage ?? '알 수 없는 오류가 발생했습니다.',
      );
    } else {
      final paymentState = ref.watch(paymentViewModelProvider);

      // B. Loading
      if (paymentState.isLoading) {
        content = const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        );
      }
      // C. Server Confirm Success
      else if (paymentState.paymentConfirm != null) {
        final confirm = paymentState.paymentConfirm!;
        content = PaymentSuccessWidget(
          paymentInfo: PaymentFinalViewEntity(
            paymentKey: confirm.paymentKey,
            orderId: confirm.orderId,
            amount: confirm.totalAmount,
            orderName: confirm.orderName,
          ),
        );
      }
      // D. Server Confirm Error
      else if (paymentState.errorMessage != null) {
        content = PaymentFailureWidget(
          errorCode: 'CONFIRM_FAILED',
          errorMessage: paymentState.errorMessage!,
        );
      }
      // E. Fallback (initial state or transient state)
      else {
        content = const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        );
      }
    }

    // 2. Return single Scaffold wrapping the determined content
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: content),
    );
  }
}
