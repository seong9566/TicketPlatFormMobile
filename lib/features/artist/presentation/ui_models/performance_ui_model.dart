import 'package:freezed_annotation/freezed_annotation.dart';

part 'performance_ui_model.freezed.dart';

@freezed
abstract class PerformanceUiModel with _$PerformanceUiModel {
  const factory PerformanceUiModel({
    required String id,
    required String title,
    required String date,
    required String location,
    required String imageUrl,
    required int ticketCount,
    required bool isSoldOut,
    required bool isHot, // For "마감 임박"
    String? dDay, // e.g., "D-14"
  }) = _PerformanceUiModel;
}
