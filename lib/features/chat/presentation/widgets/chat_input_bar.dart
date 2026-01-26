import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';

class ChatInputBar extends StatefulWidget {
  final TextEditingController controller;
  final bool canSendMessage;
  final VoidCallback onSend;
  final VoidCallback onPickImage;
  final VoidCallback onTakePhoto;
  final List<File> selectedImages;
  final Function(int index)? onRemoveImage;

  const ChatInputBar({
    super.key,
    required this.controller,
    required this.canSendMessage,
    required this.onSend,
    required this.onPickImage,
    required this.onTakePhoto,
    this.selectedImages = const [],
    this.onRemoveImage,
  });

  @override
  State<ChatInputBar> createState() => _ChatInputBarState();
}

class _ChatInputBarState extends State<ChatInputBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _menuController;
  late Animation<double> _menuAnimation;
  bool _isMenuOpen = false;

  @override
  void initState() {
    super.initState();
    _menuController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _menuAnimation = CurvedAnimation(
      parent: _menuController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _menuController.dispose();
    super.dispose();
  }

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
      if (_isMenuOpen) {
        FocusScope.of(context).unfocus();
        _menuController.forward();
      } else {
        _menuController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: Platform.isIOS ? false : true,
      top: false,
      child: Container(
        padding: Platform.isIOS
            ? const EdgeInsets.only(bottom: AppSpacing.md)
            : EdgeInsets.zero,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: AppColors.muted, width: 0.5)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 이미지 미리보기 영역 (최대 3장)
            if (widget.selectedImages.isNotEmpty) _buildImagePreviews(),
            // 입력 영역
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.sm,
                vertical: AppSpacing.sm,
              ),
              child: Row(
                children: [
                  // + 버튼
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.inputBackground,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: RotationTransition(
                      turns: Tween(
                        begin: 0.0,
                        end: 0.125, // 45도 회전
                      ).animate(_menuAnimation),
                      child: IconButton(
                        icon: const Icon(
                          Icons.add,
                          color: AppColors.textSecondary,
                          size: 24,
                        ),
                        onPressed: widget.canSendMessage ? _toggleMenu : null,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.xs),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.md,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.inputBackground,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: TextField(
                        controller: widget.controller,
                        enabled: widget.canSendMessage,
                        style: const TextStyle(fontSize: 15),
                        onTap: () {
                          if (_isMenuOpen) _toggleMenu();
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          border: InputBorder.none,
                          hintText: widget.canSendMessage
                              ? '메시지를 입력하세요'
                              : '메시지를 보낼 수 없습니다',
                        ),
                        minLines: 1,
                        maxLines: 4,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  IconButton(
                    icon: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: widget.canSendMessage
                            ? AppColors.primary
                            : AppColors.textTertiary,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_upward,
                        color: AppColors.primaryForeground,
                        size: 22,
                      ),
                    ),
                    onPressed: widget.canSendMessage ? widget.onSend : null,
                  ),
                ],
              ),
            ),
            // 하단 확장 메뉴 (앨범/카메라)
            SizeTransition(
              sizeFactor: _menuAnimation,
              axis: Axis.vertical,
              axisAlignment: -1.0,
              child: Container(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildMenuAction(
                      icon: Icons.photo_library_outlined,
                      label: '앨범',
                      onTap: widget.onPickImage,
                      bgColor: AppColors.inputBackground,
                      iconColor: AppColors.categorySports,
                    ),
                    const SizedBox(width: AppSpacing.lg),
                    _buildMenuAction(
                      icon: Icons.camera_alt_outlined,
                      label: '카메라',
                      onTap: widget.onTakePhoto,
                      bgColor: AppColors.inputBackground,
                      iconColor: AppColors.categoryExhibition,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuAction({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    required Color bgColor,
    required Color iconColor,
  }) {
    return InkWell(
      onTap: () {
        _toggleMenu();
        onTap();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.sm),
            decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
            child: Icon(icon, color: iconColor, size: 24),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              color: AppColors.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImagePreviews() {
    return Container(
      height: 84,
      padding: const EdgeInsets.only(top: AppSpacing.sm),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
        scrollDirection: Axis.horizontal,
        itemCount: widget.selectedImages.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.file(
                  widget.selectedImages[index],
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 2,
                right: 2,
                child: GestureDetector(
                  onTap: () => widget.onRemoveImage?.call(index),
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.6),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
