import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';

part 'create_dispute_state.freezed.dart';

@freezed
abstract class CreateDisputeState with _$CreateDisputeState {
  const factory CreateDisputeState({
    @Default(0) int step,
    DisputeTypeCode? selectedType,
    @Default('') String description,
    @Default([]) List<XFile> evidences,
    @Default(false) bool isSubmitting,
    String? errorMessage,
    int? createdDisputeId,
  }) = _CreateDisputeState;
}
