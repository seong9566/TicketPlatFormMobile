import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';

class AppDialog extends StatelessWidget {
  final String title;
  final String content;
  final String confirmText;
  final String? cancelText;
  final VoidCallback onConfirm;
  final VoidCallback? onCancel;
  final bool isDestructive;

  const AppDialog({
    super.key,
    required this.title,
    required this.content,
    required this.onConfirm,
    this.confirmText = '확인',
    this.cancelText,
    this.onCancel,
    this.isDestructive = false,
  });

  static Future<void> showAlert({
    required BuildContext context,
    required String title,
    required String content,
    String confirmText = '확인',
    VoidCallback? onConfirm,
    bool barrierDismissible = true,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => AppDialog(
        title: title,
        content: content,
        confirmText: confirmText,
        onConfirm: () {
          Navigator.pop(context);
          onConfirm?.call();
        },
      ),
    );
  }

  static Future<void> showConfirm({
    required BuildContext context,
    required String title,
    required String content,
    String confirmText = '저장',
    String cancelText = '취소',
    required VoidCallback onConfirm,
    VoidCallback? onCancel,
    bool barrierDismissible = true,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => AppDialog(
        title: title,
        content: content,
        confirmText: confirmText,
        cancelText: cancelText,
        onConfirm: () {
          Navigator.pop(context);
          onConfirm();
        },
        onCancel: () {
          Navigator.pop(context);
          onCancel?.call();
        },
      ),
    );
  }

  static Future<void> showDelete({
    required BuildContext context,
    required String title,
    required String content,
    String confirmText = '삭제',
    String cancelText = '취소',
    required VoidCallback onConfirm,
    VoidCallback? onCancel,
    bool barrierDismissible = true,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => AppDialog(
        title: title,
        content: content,
        confirmText: confirmText,
        cancelText: cancelText,
        isDestructive: true,
        onConfirm: () {
          Navigator.pop(context);
          onConfirm();
        },
        onCancel: () {
          Navigator.pop(context);
          onCancel?.call();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildDialogContent(context),
    );
  }

  Widget _buildDialogContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 16, 24),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.close,
                color: AppColors.textTertiary,
                size: 24,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: AppTextStyles.heading3.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            content,
            style: AppTextStyles.body2.copyWith(
              color: AppColors.textSecondary,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          _buildActions(context),
        ],
      ),
    );
  }

  Widget _buildActions(BuildContext context) {
    if (cancelText == null) {
      return _buildButton(
        text: confirmText,
        onPressed: onConfirm,
        color: AppColors.primary,
        isFullWidth: true,
      );
    }

    return Row(
      children: [
        Expanded(
          child: _buildButton(
            text: cancelText!,
            onPressed: onCancel ?? () => Navigator.pop(context),
            color: Colors.white,
            textColor: AppColors.textPrimary,
            hasBorder: true,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildButton(
            text: confirmText,
            onPressed: onConfirm,
            color: isDestructive ? AppColors.destructive : AppColors.primary,
          ),
        ),
      ],
    );
  }

  Widget _buildButton({
    required String text,
    required VoidCallback onPressed,
    required Color color,
    Color textColor = Colors.white,
    bool hasBorder = false,
    bool isFullWidth = false,
  }) {
    return SizedBox(
      height: 52,
      width: isFullWidth ? double.infinity : null,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: hasBorder
                ? const BorderSide(color: AppColors.border)
                : BorderSide.none,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
