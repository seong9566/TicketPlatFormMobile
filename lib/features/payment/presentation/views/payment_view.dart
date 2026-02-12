import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_platform_mobile/core/router/app_router_path.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_radius.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:tosspayments_widget_sdk_flutter/model/paymentData.dart';
import 'package:tosspayments_widget_sdk_flutter/model/tosspayments_result.dart';
import 'package:tosspayments_widget_sdk_flutter/pages/tosspayments_sdk_flutter.dart';

class PaymentView extends StatefulWidget {
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
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  bool _isLaunchingPayment = false;

  int get _amount => widget.amount.toInt();

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
          clientKey: widget.clientKey,
          paymentData: PaymentData(
            paymentMethod: '카드',
            amount: _amount,
            orderId: widget.orderId,
            orderName: widget.orderName,
            customerName: widget.customerName,
            customerEmail: widget.customerEmail,
            successUrl: widget.successUrl,
            failUrl: widget.failUrl,
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
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        title: const Text('결제 진행'),
        elevation: 0,
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.textPrimary,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.md,
              AppSpacing.md,
              AppSpacing.md,
              AppSpacing.xl,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _buildPaymentSummaryCard(),
                const SizedBox(height: AppSpacing.md),
                _buildTicketInfoCard(),
                const SizedBox(height: AppSpacing.md),
                _buildGuideCard(),
              ]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(
          AppSpacing.md,
          AppSpacing.sm,
          AppSpacing.md,
          AppSpacing.md,
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

  Widget _buildPaymentSummaryCard() {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF153B2E), Color(0xFF00B874)],
        ),
        borderRadius: BorderRadius.circular(AppRadius.xl),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '지금 결제할 금액',
            style: AppTextStyles.body2.copyWith(
              color: Colors.white.withValues(alpha: 0.85),
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            '${NumberFormatUtil.formatNumber(_amount)}원',
            style: AppTextStyles.heading1.copyWith(
              color: Colors.white,
              fontSize: 34,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            widget.orderName,
            style: AppTextStyles.body1.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTicketInfoCard() {
    final hasMetadata =
        widget.orderName.isNotEmpty ||
        widget.customerName != null ||
        widget.customerEmail != null;

    if (!hasMetadata) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.md),
            child: Container(
              width: 92,
              height: 116,
              color: AppColors.muted,
              child: CachedNetworkImage(
                imageUrl: 'https://picsum.photos/300/400?random=17',
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => const Icon(
                  Icons.confirmation_number_outlined,
                  color: AppColors.textTertiary,
                  size: 28,
                ),
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.orderName,
                  style: AppTextStyles.body1.copyWith(
                    fontWeight: FontWeight.w700,
                    height: 1.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppSpacing.sm),
                _PaymentOverviewItem(label: '주문번호', value: widget.orderId),
                if ((widget.customerName ?? '').isNotEmpty)
                  _PaymentOverviewItem(
                    label: '구매자',
                    value: widget.customerName!,
                  ),
                if ((widget.customerEmail ?? '').isNotEmpty)
                  _PaymentOverviewItem(
                    label: '이메일',
                    value: widget.customerEmail!,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGuideCard() {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '결제 안내',
            style: AppTextStyles.body1.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            '결제 버튼을 누르면 토스 결제창으로 이동합니다.',
            style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            '결제가 완료되면 자동으로 승인 절차를 진행합니다.',
            style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}

class _PaymentOverviewItem extends StatelessWidget {
  final String label;
  final String value;

  const _PaymentOverviewItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label ',
            style: AppTextStyles.caption.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: AppTextStyles.caption.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
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
