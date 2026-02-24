import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/payment/domain/entities/payment_entities.dart';
import 'package:tosspayments_widget_sdk_flutter/model/paymentData.dart';
import 'package:tosspayments_widget_sdk_flutter/model/tosspayments_result.dart';
import 'package:tosspayments_widget_sdk_flutter/pages/tosspayments_sdk_flutter.dart';

class PaymentView extends StatefulWidget {
  final PaymentRequestEntity paymentRequest;

  const PaymentView({super.key, required this.paymentRequest});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  bool _isLaunchingPayment = false;

  PaymentRequestEntity get _request => widget.paymentRequest;

  int get _amount => _request.amount;

  Future<void> _openPaymentWindow() async {
    if (_isLaunchingPayment) {
      return;
    }

    setState(() {
      _isLaunchingPayment = true;
    });

    final result = await Navigator.of(context).push<Result>(
      MaterialPageRoute(
        builder: (context) => _TossPaymentWindowPage(
          clientKey: _request.clientKey,
          paymentData: PaymentData(
            paymentMethod: '카드',
            amount: _amount,
            orderId: _request.orderId,
            orderName: _request.orderName,
            customerName: _request.customerName,
            customerEmail: _request.customerEmail,
            successUrl: _request.successUrl,
            failUrl: _request.failUrl,
          ),
        ),
      ),
    );

    if (!mounted) {
      return;
    }

    setState(() {
      _isLaunchingPayment = false;
    });

    if (result == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('결제가 취소되었습니다.')));
      return;
    }

    if (result.success != null) {
      final success = result.success!;
      context.pushNamed(
        AppRouterPath.paymentFinal.name,
        extra: {
          'paymentKey': success.paymentKey,
          'orderId': success.orderId,
          'amount': success.amount.toInt(),
        },
      );
      return;
    }

    if (result.fail != null) {
      final fail = result.fail!;
      context.pushNamed(
        AppRouterPath.paymentFinal.name,
        extra: {
          'paymentKey': '',
          'orderId': fail.orderId,
          'amount': 0,
          'frontendErrorCode': fail.errorCode,
          'frontendErrorMessage': fail.errorMessage,
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final ticketInfo = _request.ticketInfo;
    final eventInfo = _request.eventInfo;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('결제 진행'),
        elevation: 0,
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.textPrimary,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.lg,
                    vertical: AppSpacing.md,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const _PaymentSectionHeader(title: '구매할 티켓 정보'),
                      const SizedBox(height: AppSpacing.lg),
                      _PaymentTicketInfoSection(
                        orderName: _request.orderName,
                        ticketInfo: ticketInfo,
                        eventInfo: eventInfo,
                        fallbackAmount: _amount,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                  child: Divider(
                    thickness: 1,
                    height: 1,
                    color: AppColors.border,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.lg,
                    vertical: AppSpacing.lg,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const _PaymentSectionHeader(title: '결제 안내'),
                      const SizedBox(height: AppSpacing.md),
                      const _PaymentGuideSection(),
                    ],
                  ),
                ),
                const SizedBox(height: 48.0),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: AppSpacing.md,
          right: AppSpacing.md,
          top: AppSpacing.sm,
          bottom: MediaQuery.paddingOf(context).bottom + AppSpacing.md,
        ),
        child: SizedBox(
          height: 56,
          child: ElevatedButton(
            onPressed: _isLaunchingPayment ? null : _openPaymentWindow,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              disabledBackgroundColor: AppColors.primary.withValues(alpha: 0.6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.lg),
              ),
              elevation: 0,
            ),
            child: _isLaunchingPayment
                ? const SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.2,
                      color: Colors.white,
                    ),
                  )
                : Text(
                    '${NumberFormatUtil.formatNumber(_amount)}원 결제하기',
                    style: AppTextStyles.body1.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

class _PaymentSectionHeader extends StatelessWidget {
  final String title;

  const _PaymentSectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.heading3.copyWith(fontWeight: FontWeight.w800),
    );
  }
}

// class _PaymentAmountCard extends StatelessWidget {
//   final int amount;

//   const _PaymentAmountCard({required this.amount});

//   @override
//   Widget build(BuildContext context) {
//     return _PaymentCard(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             '총 결제 금액',
//             style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
//           ),
//           const SizedBox(height: AppSpacing.xs),
//           Text(
//             _formatAmount(amount),
//             style: AppTextStyles.heading2.copyWith(fontWeight: FontWeight.w800),
//           ),
//           const SizedBox(height: AppSpacing.sm),
//           const Divider(height: 1, color: AppColors.border),
//           const SizedBox(height: AppSpacing.sm),
//           _PaymentLabeledRow(
//             label: '결제수단',
//             value: '카드',
//             valueStyle: AppTextStyles.body2.copyWith(
//               color: AppColors.textPrimary,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class _PaymentTicketInfoSection extends StatelessWidget {
  final String orderName;
  final PaymentTicketInfoEntity? ticketInfo;
  final PaymentEventInfoEntity? eventInfo;
  final int fallbackAmount;

  const _PaymentTicketInfoSection({
    required this.orderName,
    required this.ticketInfo,
    required this.eventInfo,
    required this.fallbackAmount,
  });

  @override
  Widget build(BuildContext context) {
    final quantity = ticketInfo?.quantity != null
        ? '${ticketInfo!.quantity}매'
        : '-';
    final unitPrice = ticketInfo?.unitPrice != null
        ? NumberFormatUtil.formatPrice(ticketInfo!.unitPrice!)
        : '-';
    final totalAmount = ticketInfo?.totalAmount ?? fallbackAmount;
    final title = _textOrDash(eventInfo?.title ?? orderName);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _TicketThumbnail(url: ticketInfo?.thumbnailUrl),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.body1.copyWith(
                      fontWeight: FontWeight.w700,
                      height: 1.35,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  _PaymentLabeledRow(
                    label: '공연 일시',
                    value: DateFormatUtil.formatStringDateTime(
                      eventInfo?.eventDateTime,
                    ),
                  ),
                  _PaymentLabeledRow(
                    label: '공연 장소',
                    value: _textOrDash(eventInfo?.venueName),
                  ),
                  _PaymentLabeledRow(
                    label: '좌석',
                    value: _textOrDash(ticketInfo?.seatInfo),
                  ),
                  _PaymentLabeledRow(label: '수량', value: quantity),
                  _PaymentLabeledRow(label: '장당 금액', value: unitPrice),
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: AppSpacing.lg),
          child: Divider(height: 1, color: AppColors.border),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '총 결제 금액',
              style: AppTextStyles.body1.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              NumberFormatUtil.formatPrice(totalAmount),
              style: AppTextStyles.heading2.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _PaymentGuideSection extends StatelessWidget {
  const _PaymentGuideSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        _GuideBullet(text: '결제 버튼을 누르면 결제창으로 이동합니다.'),
        SizedBox(height: AppSpacing.sm),
        _GuideBullet(text: '결제가 완료되면 자동으로 승인 절차를 진행합니다.'),
        SizedBox(height: AppSpacing.sm),
        _GuideBullet(text: '오류가 발생하면 결제 완료 화면에서 실패 사유를 확인할 수 있습니다.'),
      ],
    );
  }
}

class _TicketThumbnail extends StatelessWidget {
  final String? url;

  const _TicketThumbnail({required this.url});

  @override
  Widget build(BuildContext context) {
    final hasImage = url != null && url!.trim().isNotEmpty;

    return ClipRRect(
      borderRadius: BorderRadius.circular(AppRadius.md),
      child: Container(
        width: 96,
        height: 96,
        color: AppColors.muted,
        child: hasImage
            ? CachedNetworkImage(
                imageUrl: url!,
                fit: BoxFit.cover,
                errorWidget: (context, _, __) => const Icon(
                  Icons.confirmation_number_outlined,
                  color: AppColors.textTertiary,
                  size: 24,
                ),
              )
            : const Icon(
                Icons.confirmation_number_outlined,
                color: AppColors.textTertiary,
                size: 24,
              ),
      ),
    );
  }
}

class _PaymentLabeledRow extends StatelessWidget {
  final String label;
  final String value;

  const _PaymentLabeledRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            child: Text(
              label,
              style: AppTextStyles.caption.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Text(
              value,
              style: AppTextStyles.body2.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class _GuideBullet extends StatelessWidget {
  final String text;

  const _GuideBullet({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 4),
          child: Icon(Icons.check_circle, size: 14, color: AppColors.primary),
        ),
        const SizedBox(width: AppSpacing.xs),
        Expanded(
          child: Text(
            text,
            style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
          ),
        ),
      ],
    );
  }
}

class _TossPaymentWindowPage extends StatelessWidget {
  final String clientKey;
  final PaymentData paymentData;

  const _TossPaymentWindowPage({
    required this.clientKey,
    required this.paymentData,
  });

  @override
  Widget build(BuildContext context) {
    return TossPayments(
      clientKey: clientKey,
      data: paymentData,
      success: (dynamic result) {
        final success = result as Success;
        Navigator.of(context).pop(Result(success: success));
      },
      fail: (dynamic result) {
        final fail = result as Fail;
        Navigator.of(context).pop(Result(fail: fail));
      },
    );
  }
}

String _textOrDash(String? value) {
  if (value == null || value.trim().isEmpty) {
    return '-';
  }
  return value.trim();
}
