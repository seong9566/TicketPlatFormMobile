import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/data/dto/response/ticketing_resp_dto.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/entities/wishlist_item_entity.dart';

part 'favorite_resp_dto.freezed.dart';
part 'favorite_resp_dto.g.dart';

@freezed
abstract class FavoriteRespDto with _$FavoriteRespDto {
  const factory FavoriteRespDto({
    required int ticketId,
    int? eventId,
    required String ticketTitle,
    required String? seatInfo,
    required String? seatType,
    required int price,
    required int originalPrice,
    required int remainingQuantity,
    required String createdAt,
    required String favoritedAt,
    required String eventTitle,
    required String eventDate,
    required String venueName,
    required String eventPosterImageUrl,
    required TicketingSellerRespDto seller,
  }) = _FavoriteRespDto;

  factory FavoriteRespDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteRespDtoFromJson(json);
}

extension FavoriteRespDtoX on FavoriteRespDto {
  WishlistItemEntity toEntity() {
    return WishlistItemEntity(
      ticketId: ticketId,
      eventId: eventId ?? 0,
      ticketTitle: ticketTitle,
      seatInfo: seatInfo,
      seatType: seatType,
      price: price,
      originalPrice: originalPrice,
      remainingQuantity: remainingQuantity,
      createdAt: DateTime.parse(createdAt),
      favoritedAt: DateTime.parse(favoritedAt),
      eventTitle: eventTitle,
      eventDate: eventDate,
      venueName: venueName,
      eventPosterImageUrl: eventPosterImageUrl,
      seller: seller.toEntity(),
    );
  }
}
