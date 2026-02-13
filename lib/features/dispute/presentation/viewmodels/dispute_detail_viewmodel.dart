import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/error_handler.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/providers/dispute_providers_di.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/ui_models/dispute_ui_model.dart';
import 'package:ticket_platform_mobile/features/dispute/presentation/viewmodels/dispute_list_viewmodel.dart';

part 'dispute_detail_viewmodel.g.dart';

@riverpod
class DisputeDetailViewModel extends _$DisputeDetailViewModel
    with ErrorHandler {
  @override
  Future<DisputeDetailUiModel> build(int disputeId) async {
    final detail = await ref
        .read(getDisputeDetailUsecaseProvider)
        .call(disputeId);
    return DisputeDetailUiModel.fromEntity(detail);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => build(disputeId));
  }

  Future<String?> cancelDispute() async {
    try {
      await ref.read(cancelDisputeUsecaseProvider).call(disputeId);
      ref.invalidate(disputeListViewModelProvider);
      ref.invalidateSelf();
      return null;
    } catch (e) {
      return handleError(e);
    }
  }

  Future<String?> addEvidence({required File file, String? note}) async {
    try {
      await ref
          .read(addDisputeEvidenceUsecaseProvider)
          .call(disputeId: disputeId, file: file, note: note);
      ref.invalidateSelf();
      return null;
    } catch (e) {
      return handleError(e);
    }
  }
}
