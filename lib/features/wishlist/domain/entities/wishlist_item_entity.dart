import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/domain/entities/ticketing_info_entity.dart';

part 'wishlist_item_entity.freezed.dart';

@freezed
abstract class WishlistItemEntity with _$WishlistItemEntity {
  const factory WishlistItemEntity({
    required int ticketId,
    required String ticketTitle,
    required String? seatInfo,
    required String? seatType,
    required int price,
    required int originalPrice,
    required int remainingQuantity,
    required DateTime createdAt,
    required DateTime favoritedAt,
    required String eventTitle,
    required String eventDate,
    required String venueName,
    required String eventPosterImageUrl,
    required TicketingSellerEntity seller,
  }) = _WishlistItemEntity;
}
