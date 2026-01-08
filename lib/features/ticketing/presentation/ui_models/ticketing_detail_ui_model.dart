import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_common_ui_model.dart';

part 'ticketing_detail_ui_model.freezed.dart';

@freezed
abstract class TicketingDetailUiModel with _$TicketingDetailUiModel {
  const factory TicketingDetailUiModel({
    required int ticketId,
    required String performanceTitle,
    required String performanceImageUrl,
    required DateTime performanceDate,
    required String location,
    required String ticketTitle,
    required String gradeName,
    required String? seatInfo,
    required int price,
    required int originalPrice,
    required List<String> tags,
    required TicketingSellerUiModel seller,
    required String? description,
    required List<String> images,
    required String ticketCountInfo,
    required List<String> transactionFeatures,
    required bool isFavorited,
    String? listingImageUrl,
  }) = _TicketingDetailUiModel;

  factory TicketingDetailUiModel.fromEntity(TicketingTicketEntity entity) {
    return TicketingDetailUiModel(
      ticketId: entity.ticketId,
      performanceTitle: '', // Not available in TicketingTicketEntity
      performanceImageUrl: '', // Not available in TicketingTicketEntity
      performanceDate: DateTime.now(), // Not available in TicketingTicketEntity
      location: '', // Not available in TicketingTicketEntity
      ticketTitle: entity.ticketTitle,
      gradeName: entity.seatType ?? '',
      seatInfo: entity.seatInfo,
      price: entity.price,
      originalPrice: entity.originalPrice,
      tags: entity.seatFeatures,
      seller: TicketingSellerUiModel.fromEntity(entity.seller),
      description: entity.description,
      images: entity.ticketImages,
      ticketCountInfo: '1인 1매',
      transactionFeatures: entity.seatFeatures,
      isFavorited: entity.isFavorited,
      listingImageUrl: entity.ticketImages.isNotEmpty
          ? entity.ticketImages.first
          : null,
    );
  }
}
