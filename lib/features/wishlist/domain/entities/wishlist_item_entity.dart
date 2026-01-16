import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';

part 'wishlist_item_entity.freezed.dart';

@freezed
abstract class WishlistItemEntity with _$WishlistItemEntity {
  const factory WishlistItemEntity({
    required int ticketId,
    int? seatGradeId,
    String? seatGradeName,
    String? area,
    String? row,
    required int price,
    required int originalPrice,
    required int remainingQuantity,
    bool? isConsecutive,
    int? tradeMethodId,
    String? tradeMethodName,
    bool? hasTicket,
    required DateTime createdAt,
    required DateTime favoritedAt,
    String? eventTitle,
    String? eventDate,
    String? venueName,
    String? eventPosterImageUrl,
    required TicketingSellerEntity seller,
  }) = _WishlistItemEntity;
}
