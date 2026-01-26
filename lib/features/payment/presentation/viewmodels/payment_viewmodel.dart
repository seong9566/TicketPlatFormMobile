import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_entities.dart';
import 'package:ticket_platform_mobile/features/payment/domain/usecases/payment_params.dart';
import 'package:ticket_platform_mobile/features/payment/presentation/providers/payment_providers_di.dart';

part 'payment_viewmodel.freezed.dart';
part 'payment_viewmodel.g.dart';

@freezed
abstract class PaymentState with _$PaymentState {
  const factory PaymentState({
    @Default(false) bool isLoading,
    PaymentRequestEntity? paymentRequest,
    PaymentConfirmEntity? paymentConfirm,
    String? errorMessage,
  }) = _PaymentState;
}

@Riverpod(keepAlive: true)
class PaymentViewModel extends _$PaymentViewModel {
  @override
  PaymentState build() {
    return const PaymentState();
  }

  Future<void> requestPayment({
    required int transactionId,
    required int amount,
    required String orderName,
    required String customerName,
    required String customerEmail,
  }) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final params = RequestPaymentParams(
        transactionId: transactionId,
        amount: amount,
        orderName: orderName,
        customerName: customerName,
        customerEmail: customerEmail,
      );
      final result = await ref.read(requestPaymentUseCaseProvider).call(params);

      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false, paymentRequest: result);
    } catch (e) {
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<bool> confirmPayment({
    required String paymentKey,
    required String orderId,
    required int amount,
  }) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final params = ConfirmPaymentParams(
        paymentKey: paymentKey,
        orderId: orderId,
        amount: amount,
      );
      final result = await ref.read(confirmPaymentUseCaseProvider).call(params);

      if (!ref.mounted) return false;
      state = state.copyWith(isLoading: false, paymentConfirm: result);
      return true;
    } catch (e) {
      if (!ref.mounted) return false;
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
      return false;
    }
  }
}
