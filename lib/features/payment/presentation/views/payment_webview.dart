import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/features/payment/data/dto/request/payment_confirm_req_dto.dart';
import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_entities.dart';
import 'package:ticket_platform_mobile/features/payment/presentation/viewmodels/payment_viewmodel.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebView extends ConsumerStatefulWidget {
  final PaymentRequestEntity paymentRequest;

  const PaymentWebView({super.key, required this.paymentRequest});

  @override
  ConsumerState<PaymentWebView> createState() => _PaymentWebViewState();
}

class _PaymentWebViewState extends ConsumerState<PaymentWebView> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initWebView();
  }

  void _initWebView() {
    final html = _generateTossPaymentHTML();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            if (url.contains('payment/success')) {
              _handlePaymentSuccess(url);
            } else if (url.contains('payment/fail')) {
              _handlePaymentFail(url);
            }
          },
          onPageFinished: (url) {
            setState(() {
              _isLoading = false;
            });
          },
        ),
      )
      ..loadHtmlString(html);
  }

  String _generateTossPaymentHTML() {
    final pr = widget.paymentRequest;
    return '''
    <!DOCTYPE html>
    <html>
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <script src="https://js.tosspayments.com/v1"></script>
      <style>
        body { margin: 0; padding: 16px; font-family: -apple-system, sans-serif; }
        #payment-button {
          width: 100%;
          padding: 16px;
          background-color: #3182f6;
          color: white;
          border: none;
          border-radius: 12px;
          font-size: 16px;
          font-weight: bold;
          cursor: pointer;
          margin-top: 24px;
        }
      </style>
    </head>
    <body>
      <div id="payment-method"></div>
      <button id="payment-button">결제하기</button>

      <script>
        const tossPayments = TossPayments('${pr.clientKey}');
        const paymentWidget = tossPayments.widgets({ customerKey: 'CUSTOMER_${DateTime.now().millisecondsSinceEpoch}' });

        paymentWidget.renderPaymentMethods('#payment-method', { value: ${pr.amount} });

        document.getElementById('payment-button').addEventListener('click', function() {
          paymentWidget.requestPayment({
            orderId: '${pr.orderId}',
            orderName: '${pr.orderName}',
            customerName: '${pr.customerName ?? ""}',
            customerEmail: '${pr.customerEmail ?? ""}',
            successUrl: '${pr.successUrl}',
            failUrl: '${pr.failUrl}',
          });
        });
      </script>
    </body>
    </html>
    ''';
  }

  Future<void> _handlePaymentSuccess(String url) async {
    final uri = Uri.parse(url);
    final paymentKey = uri.queryParameters['paymentKey'];
    final orderId = uri.queryParameters['orderId'];
    final amountStr = uri.queryParameters['amount'];

    if (paymentKey != null && orderId != null && amountStr != null) {
      final amount = int.parse(amountStr);
      final success = await ref
          .read(paymentViewModelProvider.notifier)
          .confirmPayment(
            PaymentConfirmReqDto(
              paymentKey: paymentKey,
              orderId: orderId,
              amount: amount,
            ),
          );

      if (success && mounted) {
        context.pop(true); // 결과 전달하며 팝
      }
    }
  }

  void _handlePaymentFail(String url) {
    final uri = Uri.parse(url);
    final message = uri.queryParameters['message'] ?? '결제 실패';
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: AppColors.destructive,
        ),
      );
      context.pop(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('결제하기'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          if (_isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
