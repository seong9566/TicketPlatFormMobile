import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_entities.dart';
import 'package:ticket_platform_mobile/features/payment/domain/usecases/payment_params.dart';
import 'package:ticket_platform_mobile/features/chat/domain/usecases/send_message_usecase.dart';
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
    int? roomId,
  }) = _PaymentState;
}

@Riverpod(keepAlive: true)
class PaymentViewModel extends _$PaymentViewModel {
  @override
  PaymentState build() {
    return const PaymentState();
  }

  // 결제 정보 요청
  Future<void> requestPayment({
    required int transactionId,
    required int amount,
    required String orderName,
    required String customerName,
    required String customerEmail,
    String? eventTitle,
    String? eventDate,
    String? seatInfo,
    String? ticketImageUrl,
    String? venueName,
    int? roomId,
  }) async {
    state = state.copyWith(isLoading: true, errorMessage: null, roomId: roomId);
    try {
      final params = RequestPaymentParams(
        transactionId: transactionId,
        amount: amount,
        orderName: orderName,
        customerName: customerName,
        customerEmail: customerEmail,
        eventTitle: eventTitle,
        eventDate: eventDate,
        seatInfo: seatInfo,
        ticketImageUrl: ticketImageUrl,
        venueName: venueName,
      );
      final result = await ref.read(requestPaymentUseCaseProvider).call(params);

      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false, paymentRequest: result);
    } catch (e) {
      if (!ref.mounted) return;
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  // 토스 위젯으로 인증 완료 후 받은 정보를 서버에 전송
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

      // 결제 성공 후 채팅 메시지 전송 (roomId가 있는 경우)
      if (state.roomId != null) {
        try {
          await ref
              .read(sendMessageUsecaseProvider)
              .call(
                SendMessageParams(
                  roomId: state.roomId!,
                  message: '결제가 완료되었습니다. 상품을 전송해주세요.',
                ),
              );
        } catch (e) {
          // 메시지 전송 실패는 상세 에러로 처리하지 않음 (결제는 성공했으므로)
          print('결제 완료 메시지 전송 실패: $e');
        }
      }

      state = state.copyWith(isLoading: false, paymentConfirm: result);
      return true;
    } catch (e) {
      if (!ref.mounted) return false;
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
      return false;
    }
  }

  void setFailure(String message) {
    state = state.copyWith(errorMessage: message);
  }
}
