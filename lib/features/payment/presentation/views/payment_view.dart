import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_info.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/payment_method.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/agreement.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_widget_options.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/features/payment/presentation/viewmodels/payment_viewmodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';

class PaymentView extends ConsumerStatefulWidget {
  final double amount;
  final String orderId;
  final String orderName;
  final String? customerName;
  final String? customerEmail;
  final String successUrl;
  final String failUrl;
  final String clientKey;

  const PaymentView({
    super.key,
    required this.amount,
    required this.orderId,
    required this.orderName,
    this.customerName,
    this.customerEmail,
    required this.successUrl,
    required this.failUrl,
    required this.clientKey,
  });

  @override
  ConsumerState<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends ConsumerState<PaymentView> {
  late PaymentWidget _paymentWidget;
  bool _isWidgetInitialized = false;

  // 상품 가격
  late int originPrice;
  late String orderName;

  @override
  void initState() {
    super.initState();
    originPrice = widget.amount.toInt();
    orderName = widget.orderName;

    // 토스 페이먼츠 초기화
    _initPaymentWidget();
  }

  Future<void> _initPaymentWidget() async {
    // 1. InAppWebView 플랫폼 인스턴스 확인
    if (!kIsWeb && InAppWebViewPlatform.instance == null) {
      if (mounted) {
        // _handlePaymentFail('이 기기에서는 결제 기능을 사용할 수 없습니다.');
      }
      return;
    }

    // 2. PaymentWidget 초기화
    _paymentWidget = PaymentWidget(
      clientKey: widget.clientKey,
      customerKey: 'CUSTOMER_@_${DateTime.now().millisecondsSinceEpoch}',
    );

    // 3. 결제 UI 렌더링
    _paymentWidget.renderPaymentMethods(
      selector: 'payment-methods',
      // 결제 금액
      amount: Amount(value: originPrice, currency: Currency.KRW, country: "KR"),
      options: RenderPaymentMethodsOptions(variantKey: "DEFAULT"),
    );

    // 4.약관동의 UI 렌더링
    _paymentWidget.renderAgreement(selector: 'agreement');

    setState(() {
      _isWidgetInitialized = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_isWidgetInitialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final paymentState = ref.watch(paymentViewModelProvider);
    final paymentRequest = paymentState.paymentRequest;

    return Scaffold(
      appBar: AppBar(
        title: const Text('주문 결제'),
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
      ),
      backgroundColor: AppColors.scaffoldBackground,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            if (paymentRequest != null)
              SliverToBoxAdapter(child: _buildTicketInfo(paymentState)),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Column(
                  children: [
                    PaymentMethodWidget(
                      paymentWidget: _paymentWidget,
                      selector: 'payment-methods',
                    ),
                    AgreementWidget(
                      paymentWidget: _paymentWidget,
                      selector: 'agreement',
                    ),
                    const SizedBox(height: AppSpacing.xl),
                    _buildPaymentButton(
                      orderId: widget.orderId,
                      orderName: widget.orderName,
                    ),
                    const SizedBox(height: AppSpacing.xl),
                  ],
                );
              }, childCount: 1),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTicketInfo(PaymentState state) {
    final req = state.paymentRequest!;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.card,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(5),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '티켓 정보',
            style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 티켓 이미지
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: 100,
                  height: 120,
                  color: AppColors.muted,
                  child: req.ticketImageUrl != null
                      ? CachedNetworkImage(
                          imageUrl: req.ticketImageUrl!,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                          errorWidget: (context, url, error) => const Icon(
                            Icons.image_not_supported,
                            color: AppColors.textTertiary,
                          ),
                        )
                      : const Icon(
                          Icons.confirmation_number,
                          color: AppColors.textTertiary,
                          size: 32,
                        ),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              // 티켓 상세 정보
              Expanded(
                child: Column(
                  children: [
                    _buildInfoRow('공연', req.eventTitle ?? '-'),
                    _buildInfoRow('일시', req.eventDate ?? '-'),
                    _buildInfoRow('장소', req.venueName ?? '-'),
                    const SizedBox(height: AppSpacing.xs),
                    const Divider(height: 1, color: AppColors.border),
                    const SizedBox(height: AppSpacing.xs),
                    _buildInfoRow('좌석', req.seatInfo ?? '-', isBold: true),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTextStyles.body2.copyWith(
              color: AppColors.textSecondary,
              fontSize: 13,
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 4,
            child: Text(
              value,
              style: AppTextStyles.body1.copyWith(
                fontSize: 14,
                fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
                color: AppColors.textPrimary,
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentButton({
    required String orderId,
    required String orderName,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: ElevatedButton(
        onPressed: () async {
          final paymentResult = await _paymentWidget.requestPayment(
            paymentInfo: PaymentInfo(orderId: orderId, orderName: orderName),
          );

          if (!mounted) return;

          if (paymentResult.success != null) {
            // 결제 성공 -> PaymentFinalView로 이동
            context.pushNamed(
              AppRouterPath.paymentFinal.name,
              extra: {
                'paymentKey': paymentResult.success!.paymentKey,
                'orderId': paymentResult.success!.orderId,
                'amount': paymentResult.success!.amount.toInt(),
              },
            );
          } else if (paymentResult.fail != null) {
            // 결제 실패 -> PaymentFinalView로 이동 (에러 정보 전달)
            context.pushNamed(
              AppRouterPath.paymentFinal.name,
              extra: {
                // 더미 데이터 (실패 시에는 결제승인 로직을 안타므로)
                'paymentKey': '',
                'orderId': orderId,
                'amount': 0,
                'frontendErrorCode': paymentResult.fail!.errorCode,
                'frontendErrorMessage': paymentResult.fail!.errorMessage,
              },
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.primaryForeground,
          minimumSize: const Size(double.infinity, 54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Text(
          '${NumberFormatUtil.formatNumber(originPrice)}원 결제하기',
          style: AppTextStyles.body1.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
