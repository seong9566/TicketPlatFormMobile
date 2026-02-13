import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';

class EvidenceImagePicker extends StatelessWidget {
  final List<XFile> images;
  final VoidCallback onAdd;
  final void Function(int index) onRemove;
  final int maxCount;

  const EvidenceImagePicker({
    super.key,
    required this.images,
    required this.onAdd,
    required this.onRemove,
    this.maxCount = 5,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          if (images.length < maxCount)
            GestureDetector(
              onTap: onAdd,
              child: Container(
                width: 88,
                margin: const EdgeInsets.only(right: AppSpacing.sm),
                decoration: BoxDecoration(
                  color: AppColors.muted,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.border),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_a_photo_outlined,
                      color: AppColors.textSecondary,
                    ),
                    SizedBox(height: 4),
                    Text('추가', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ),
          ...images.asMap().entries.map((entry) {
            return Container(
              width: 88,
              margin: const EdgeInsets.only(right: AppSpacing.sm),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.file(
                      File(entry.value.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 4,
                    top: 4,
                    child: GestureDetector(
                      onTap: () => onRemove(entry.key),
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.55),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.close,
                          size: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
