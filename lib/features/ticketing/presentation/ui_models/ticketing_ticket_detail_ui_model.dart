import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';
import 'package:ticket_platform_mobile/features/ticketing/presentation/ui_models/ticketing_ticket_ui_model.dart';

part 'ticketing_ticket_detail_ui_model.freezed.dart';

@freezed
abstract class TicketingTicketDetailUiModel
    with _$TicketingTicketDetailUiModel {
  const factory TicketingTicketDetailUiModel({
    required int ticketId,
    String? performanceTitle,
    String? performanceImageUrl,
    DateTime? performanceDate,
    String? location,
    required String gradeName,
    required String? seatInfo,
    required int price,
    required int quantity,
    required int totalPrice,
    required int originalPrice,
    required List<String> tags,
    required TicketingSellerUiModel seller,
    required String? description,
    required List<String> images,
    required String ticketCountInfo,
    required List<String> transactionFeatures,
    required bool isFavorited,
    String? tradeMethodName,
    bool? hasTicket,
    bool? isConsecutive,
  }) = _TicketingTicketDetailUiModel;

  factory TicketingTicketDetailUiModel.fromEntity(
    TicketingTicketEntity entity, {
    String? eventTitle,
    String? eventPosterImageUrl,
    DateTime? eventDate,
    String? venueName,
  }) {
    // API에서 직접 받은 event 정보가 우선, 없으면 파라미터(목록에서 가져온 정보) 사용
    final title = entity.event?.eventTitle ?? eventTitle;
    final imageUrl = entity.event?.posterImageUrl ?? eventPosterImageUrl;
    final date = entity.event?.startAt ?? eventDate;
    final venue = entity.event?.venueName ?? venueName;

    // locationName(층), area(구역), row(열)를 조합하여 seatInfo 생성
    final seatInfo = [
      if (entity.locationName != null && entity.locationName!.isNotEmpty)
        entity.locationName,
      if (entity.area != null && entity.area!.isNotEmpty) entity.area,
      if (entity.row != null && entity.row!.isNotEmpty) entity.row,
    ].where((e) => e != null).join(' ');

    return TicketingTicketDetailUiModel(
      ticketId: entity.ticketId,
      performanceTitle: title,
      performanceImageUrl: imageUrl,
      performanceDate: date,
      location: venue,
      gradeName: entity.seatGradeName ?? '일반',
      seatInfo: seatInfo.isNotEmpty ? seatInfo : null,
      price: entity.price,
      quantity: entity.quantity,
      totalPrice: entity.totalPrice,
      originalPrice: entity.originalPrice,
      tags: entity.features?.map((f) => f.name).toList() ?? [],
      seller: TicketingSellerUiModel.fromEntity(entity.seller),
      description: entity.description,
      images: entity.ticketImages,
      ticketCountInfo: entity.isSingleTicket ? '1인 1매' : '${entity.quantity}매',
      transactionFeatures: [
        if (entity.tradeMethodName != null) entity.tradeMethodName!,
        if (entity.hasTicket == true) '티켓보유',
        if (entity.isConsecutive == true) '연석',
      ],
      isFavorited: entity.isFavorited ?? false,
      tradeMethodName: entity.tradeMethodName,
      hasTicket: entity.hasTicket,
      isConsecutive: entity.isConsecutive,
    );
  }
}
