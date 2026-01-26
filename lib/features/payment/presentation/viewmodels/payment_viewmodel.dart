import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/request/payment_confirm_req_dto.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/request/payment_request_req_dto.dart';
import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_entities.dart';
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

@riverpod
class PaymentViewModel extends _$PaymentViewModel {
  @override
  PaymentState build() {
    return const PaymentState();
  }

  Future<void> requestPayment(PaymentRequestReqDto req) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final result = await ref.read(requestPaymentUseCaseProvider).call(req);
      state = state.copyWith(isLoading: false, paymentRequest: result);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<bool> confirmPayment(PaymentConfirmReqDto req) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final result = await ref.read(confirmPaymentUseCaseProvider).call(req);
      state = state.copyWith(isLoading: false, paymentConfirm: result);
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
      return false;
    }
  }
}
