import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/chat/presentation/ui_models/chat_room_ui_model.dart';

class ChatRoomTicketHeader extends StatefulWidget {
  final TicketInfoUiModel ticket;
  final bool canRequestPayment;
  final String? buttonText;
  final VoidCallback onRequestPayment;
  final VoidCallback? onViewTicketDetail;

  const ChatRoomTicketHeader({
    super.key,
    required this.ticket,
    required this.canRequestPayment,
    this.buttonText,
    required this.onRequestPayment,
    this.onViewTicketDetail,
  });

  @override
  State<ChatRoomTicketHeader> createState() => _ChatRoomTicketHeaderState();
}

class _ChatRoomTicketHeaderState extends State<ChatRoomTicketHeader> {
  bool _isFolded = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTicketSummary(),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
            child: _isFolded
                ? const SizedBox.shrink()
                : _buildExpandedContent(),
          ),
          _buildFoldingToggle(),
        ],
      ),
    );
  }

  Widget _buildTicketSummary() {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Row(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: AppColors.muted,
              borderRadius: BorderRadius.circular(16),
              image: widget.ticket.thumbnailUrl != null
                  ? DecorationImage(
                      image: CachedNetworkImageProvider(
                        widget.ticket.thumbnailUrl!,
                      ),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.ticket.title,
                  style: AppTextStyles.body2.copyWith(
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  widget.ticket.price,
                  style: AppTextStyles.heading3.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          if (widget.canRequestPayment) _buildPaymentButton(),
        ],
      ),
    );
  }

  Widget _buildPaymentButton() {
    return OutlinedButton(
      onPressed: widget.onRequestPayment,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      child: Text(
        widget.buttonText ?? '결제 요청',
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildFoldingToggle() {
    return InkWell(
      onTap: () => setState(() => _isFolded = !_isFolded),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
            child: Divider(
              height: 1,
              color: AppColors.primary.withValues(alpha: 0.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _isFolded ? '상세보기' : '접기',
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  _isFolded
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_up,
                  size: 16,
                  color: AppColors.textSecondary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpandedContent() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.md,
            0,
            AppSpacing.md,
            AppSpacing.md,
          ),
          child: Column(
            children: [
              _buildDetailRow('좌석', widget.ticket.seatInfo ?? '-'),
              const SizedBox(height: 8),
              _buildDetailRow('일시', widget.ticket.dateTime ?? '-'),
              const SizedBox(height: 8),
              _buildDetailRow('장소', widget.ticket.location ?? '-'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 60,
          child: Text(
            label,
            style: AppTextStyles.body2.copyWith(color: AppColors.textSecondary),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: AppTextStyles.body2.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
