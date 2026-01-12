import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ticket_ui_model.dart';

part 'ticketing_ticket_detail_ui_model.freezed.dart';

@freezed
abstract class TicketingTicketDetailUiModel
    with _$TicketingTicketDetailUiModel {
  const factory TicketingTicketDetailUiModel({
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
    String? eventTitle,
    DateTime? eventDate,
    String? venueName,
    String? eventPosterImageUrl,
  }) = _TicketingTicketDetailUiModel;

  factory TicketingTicketDetailUiModel.fromEntity(
    TicketingTicketEntity entity,
  ) {
    return TicketingTicketDetailUiModel(
      ticketId: entity.ticketId,
      performanceTitle: entity.eventTitle ?? '',
      performanceImageUrl: entity.eventPosterImageUrl ?? '',
      performanceDate: entity.eventDate ?? DateTime.now(),
      location: entity.venueName ?? '',
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
      isFavorited: entity.isFavorited ?? false,
      listingImageUrl: entity.ticketImages.isNotEmpty
          ? entity.ticketImages.first
          : null,
      eventTitle: entity.eventTitle,
      eventDate: entity.eventDate,
      venueName: entity.venueName,
      eventPosterImageUrl: entity.eventPosterImageUrl,
    );
  }
}
