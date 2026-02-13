import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/error_handler.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/providers/dispute_providers_di.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/viewmodels/create_dispute_state.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/viewmodels/dispute_list_viewmodel.dart';

part 'create_dispute_viewmodel.g.dart';

@riverpod
class CreateDisputeViewModel extends _$CreateDisputeViewModel
    with ErrorHandler {
  static const int maxEvidenceCount = 5;

  @override
  CreateDisputeState build() {
    return const CreateDisputeState();
  }

  void selectType(DisputeTypeCode type) {
    state = state.copyWith(selectedType: type, errorMessage: null);
  }

  void updateDescription(String value) {
    state = state.copyWith(description: value, errorMessage: null);
  }

  void goToStep(int step) {
    state = state.copyWith(step: step < 0 ? 0 : (step > 2 ? 2 : step));
  }

  void removeEvidenceAt(int index) {
    if (index < 0 || index >= state.evidences.length) {
      return;
    }

    final next = List<XFile>.from(state.evidences)..removeAt(index);
    state = state.copyWith(evidences: next);
  }

  String? validateStep1() {
    if (state.selectedType == null) {
      return '신고 사유를 선택해주세요.';
    }
    return null;
  }

  String? validateStep2() {
    if (state.description.trim().length < 10) {
      return '최소 10자 이상 입력해주세요.';
    }
    return null;
  }

  Future<String?> pickEvidenceImages() async {
    final remaining = maxEvidenceCount - state.evidences.length;
    if (remaining <= 0) {
      return '증거 이미지는 최대 5장까지 첨부할 수 있습니다.';
    }

    final picker = ImagePicker();
    final picked = await picker.pickMultiImage(
      imageQuality: 85,
      maxWidth: 1920,
      maxHeight: 1920,
      limit: remaining,
      requestFullMetadata: false,
    );

    if (picked.isEmpty) {
      return null;
    }

    final merged = [...state.evidences, ...picked];
    state = state.copyWith(evidences: merged.take(maxEvidenceCount).toList());
    return null;
  }

  Future<bool> submit(int transactionId) async {
    final step1Error = validateStep1();
    if (step1Error != null) {
      state = state.copyWith(errorMessage: step1Error, step: 0);
      return false;
    }

    final step2Error = validateStep2();
    if (step2Error != null) {
      state = state.copyWith(errorMessage: step2Error, step: 1);
      return false;
    }

    state = state.copyWith(isSubmitting: true, errorMessage: null);

    try {
      final created = await ref
          .read(createDisputeUsecaseProvider)
          .call(
            transactionId: transactionId,
            typeCode: state.selectedType!,
            description: state.description.trim(),
          );

      if (!ref.mounted) {
        return false;
      }

      for (final xFile in state.evidences) {
        await ref
            .read(addDisputeEvidenceUsecaseProvider)
            .call(disputeId: created.id, file: File(xFile.path));

        if (!ref.mounted) {
          return false;
        }
      }

      ref.invalidate(disputeListViewModelProvider);

      state = state.copyWith(isSubmitting: false, createdDisputeId: created.id);
      return true;
    } catch (e) {
      if (!ref.mounted) {
        return false;
      }

      state = state.copyWith(isSubmitting: false, errorMessage: handleError(e));
      return false;
    }
  }
}
