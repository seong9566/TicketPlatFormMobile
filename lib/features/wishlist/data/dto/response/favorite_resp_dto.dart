import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/ticketing/data/dto/response/ticketing_resp_dto.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/entities/wishlist_item_entity.dart';

part 'favorite_resp_dto.freezed.dart';
part 'favorite_resp_dto.g.dart';

@freezed
abstract class FavoriteRespDto with _$FavoriteRespDto {
  const factory FavoriteRespDto({
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
    required String createdAt,
    required String favoritedAt,
    String? eventTitle,
    String? eventDate,
    String? venueName,
    String? eventPosterImageUrl,
    required TicketingSellerRespDto seller,
  }) = _FavoriteRespDto;

  factory FavoriteRespDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteRespDtoFromJson(json);
}

extension FavoriteRespDtoX on FavoriteRespDto {
  WishlistItemEntity toEntity() {
    return WishlistItemEntity(
      ticketId: ticketId,
      seatGradeId: seatGradeId,
      seatGradeName: seatGradeName,
      area: area,
      row: row,
      price: price,
      originalPrice: originalPrice,
      remainingQuantity: remainingQuantity,
      isConsecutive: isConsecutive,
      tradeMethodId: tradeMethodId,
      tradeMethodName: tradeMethodName,
      hasTicket: hasTicket,
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
