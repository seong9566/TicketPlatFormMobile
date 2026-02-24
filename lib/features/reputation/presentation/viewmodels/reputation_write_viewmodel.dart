import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/error_handler.dart';
import 'package:ticket_platform_mobile/features/reputation/presentation/providers/reputation_providers_di.dart';
import 'package:ticket_platform_mobile/features/reputation/presentation/viewmodels/reputation_write_state.dart';

part 'reputation_write_viewmodel.g.dart';

@riverpod
class ReputationWriteViewModel extends _$ReputationWriteViewModel
    with ErrorHandler {
  @override
  ReputationWriteState build() {
    return const ReputationWriteState();
  }

  void selectScore(int score) {
    state = state.copyWith(
      selectedScore: score.clamp(1, 5),
      errorMessage: null,
      isSuccess: false,
    );
  }

  Future<void> submit(int transactionId) async {
    if (state.selectedScore <= 0) {
      state = state.copyWith(errorMessage: '별점을 선택해주세요.');
      return;
    }

    state = state.copyWith(isSubmitting: true, errorMessage: null);
    final keepAliveLink = ref.keepAlive();

    try {
      await ref
          .read(createReputationUsecaseProvider)
          .call(transactionId: transactionId, score: state.selectedScore);

      if (!ref.mounted) {
        return;
      }

      state = state.copyWith(isSubmitting: false, isSuccess: true);
    } catch (e) {
      if (!ref.mounted) {
        return;
      }

      state = state.copyWith(isSubmitting: false, errorMessage: handleError(e));
    } finally {
      keepAliveLink.close();
    }
  }

  void clearError() {
    state = state.copyWith(errorMessage: null);
  }
}
