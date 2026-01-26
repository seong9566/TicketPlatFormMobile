import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:intl/intl.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/payment/presentation/viewmodels/payment_viewmodel.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/payment_method.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/agreement.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_widget_options.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_info.dart';

class PaymentWebView extends ConsumerStatefulWidget {
  final double amount;
  final String orderId;
  final String orderName;
  final String? customerName;
  final String? customerEmail;
  final String successUrl;
  final String failUrl;

  const PaymentWebView({
    super.key,
    required this.amount,
    required this.orderId,
    required this.orderName,
    this.customerName,
    this.customerEmail,
    required this.successUrl,
    required this.failUrl,
  });

  @override
  ConsumerState<PaymentWebView> createState() => _PaymentWebViewState();
}

class _PaymentWebViewState extends ConsumerState<PaymentWebView> {
  late PaymentWidget _paymentWidget;
  bool _isWidgetInitialized = false;
  PaymentMethodWidgetControl? _paymentMethodWidgetControl;
  AgreementWidgetControl? _agreementWidgetControl;
  final _currencyFormat = NumberFormat.currency(locale: 'ko_KR', symbol: '₩');
  // 추후 env파일로 뺄 것.
  final clientKey = "test_ck_O6BYq7GWPVvglqzGdNwrNE5vbo1d";
  @override
  void initState() {
    super.initState();
    _initPaymentWidget();
  }

  Future<void> _initPaymentWidget() async {
    // 1. InAppWebView 플랫폼 인스턴스 확인
    if (!kIsWeb && InAppWebViewPlatform.instance == null) {
      if (mounted) {
        _handlePaymentFail('이 기기에서는 결제 기능을 사용할 수 없습니다.');
      }
      return;
    }

    // 2. PaymentWidget 초기화
    _paymentWidget = PaymentWidget(
      clientKey: clientKey,
      customerKey: 'CUSTOMER_@_${DateTime.now().millisecondsSinceEpoch}',
    );

    _paymentWidget
        .renderPaymentMethods(
          selector: 'payment-methods',
          amount: Amount(
            value: widget.amount.toInt(),
            currency: Currency.KRW,
            country: "KR",
          ),
          options: RenderPaymentMethodsOptions(variantKey: "DEFAULT"),
        )
        .then((control) {
          _paymentMethodWidgetControl = control;
        });
    _paymentWidget.renderAgreement(selector: 'agreement').then((control) {
      _agreementWidgetControl = control;
    });

    setState(() {
      _isWidgetInitialized = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_isWidgetInitialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  PaymentMethodWidget(
                    paymentWidget: _paymentWidget,
                    selector: 'methods',
                  ),
                  AgreementWidget(
                    paymentWidget: _paymentWidget,
                    selector: 'agreement',
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final paymentResult = await _paymentWidget.requestPayment(
                        paymentInfo: const PaymentInfo(
                          orderId: 'qbG6J_CqR-bKzGcDiQr_L',
                          orderName: '토스 티셔츠 외 2건',
                        ),
                      );
                      if (paymentResult.success != null) {
                        // 결제 성공 처리
                      } else if (paymentResult.fail != null) {
                        // 결제 실패 처리
                      }
                    },
                    child: const Text('결제하기'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final selectedPaymentMethod =
                          await _paymentMethodWidgetControl
                              ?.getSelectedPaymentMethod();
                      print(
                        '${selectedPaymentMethod?.method} ${selectedPaymentMethod?.easyPay?.provider ?? ''}',
                      );
                    },
                    child: const Text('선택한 결제수단 출력'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final agreementStatus = await _agreementWidgetControl
                          ?.getAgreementStatus();
                      print('${agreementStatus?.agreedRequiredTerms}');
                    },
                    child: const Text('약관 동의 상태 출력'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await _paymentMethodWidgetControl?.updateAmount(
                        amount: 300,
                      );
                      print('결제 금액이 300원으로 변경되었습니다.');
                    },
                    child: const Text('결제 금액 변경'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _requestPayment() async {
    try {
      final result = await _paymentWidget.requestPayment(
        paymentInfo: PaymentInfo(
          orderId: widget.orderId,
          orderName: widget.orderName,
          customerName: widget.customerName,
          customerEmail: widget.customerEmail,
        ),
      );

      if (result.success != null) {
        _handlePaymentSuccess(
          result.success!.paymentKey,
          result.success!.orderId,
          result.success!.amount.toInt(),
        );
      } else if (result.fail != null) {
        _handlePaymentFail(result.fail!.errorMessage);
      }
    } catch (e) {
      _handlePaymentFail(e.toString());
    }
  }

  Future<void> _handlePaymentSuccess(
    String paymentKey,
    String orderId,
    int amount,
  ) async {
    final success = await ref
        .read(paymentViewModelProvider.notifier)
        .confirmPayment(
          paymentKey: paymentKey,
          orderId: orderId,
          amount: amount,
        );

    if (success && mounted) {
      context.pop(true);
    }
  }

  void _handlePaymentFail(String message) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: AppColors.destructive,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
      context.pop(false);
    }
  }
}
