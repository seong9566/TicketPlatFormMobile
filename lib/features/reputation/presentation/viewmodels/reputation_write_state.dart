import 'package:freezed_annotation/freezed_annotation.dart';

part 'reputation_write_state.freezed.dart';

@freezed
abstract class ReputationWriteState with _$ReputationWriteState {
  const factory ReputationWriteState({
    @Default(0) int selectedScore,
    @Default(false) bool isSubmitting,
    String? errorMessage,
    @Default(false) bool isSuccess,
  }) = _ReputationWriteState;
}
