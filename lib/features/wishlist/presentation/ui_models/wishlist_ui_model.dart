import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/entities/wishlist_item_entity.dart';

class WishlistUiModel {
  final int ticketId;
  final int? eventId;
  final String ticketTitle;
  final String? seatInfo;
  final String? seatType;
  final String priceDisplay;
  final String originalPriceDisplay;
  final String discountRate;
  final int remainingQuantity;
  final String eventTitle;
  final String eventDate;
  final String venueName;
  final String eventPosterImageUrl;
  final String favoritedAtDisplay;
  final String sellerNickname;

  WishlistUiModel({
    required this.ticketId,
    this.eventId,
    required this.ticketTitle,
    this.seatInfo,
    this.seatType,
    required this.priceDisplay,
    required this.originalPriceDisplay,
    required this.discountRate,
    required this.remainingQuantity,
    required this.eventTitle,
    required this.eventDate,
    required this.venueName,
    required this.eventPosterImageUrl,
    required this.favoritedAtDisplay,
    required this.sellerNickname,
  });

  factory WishlistUiModel.fromEntity(WishlistItemEntity entity) {
    final discount = entity.originalPrice > 0
        ? (((entity.originalPrice - entity.price) / entity.originalPrice) * 100)
              .round()
        : 0;

    return WishlistUiModel(
      ticketId: entity.ticketId,
      eventId: entity.eventId,
      ticketTitle: entity.ticketTitle,
      seatInfo: entity.seatInfo,
      seatType: entity.seatType,
      priceDisplay: NumberFormatUtil.formatNumber(entity.price),
      originalPriceDisplay: NumberFormatUtil.formatNumber(entity.originalPrice),
      discountRate: discount > 0 ? '$discount%' : '',
      remainingQuantity: entity.remainingQuantity,
      eventTitle: entity.eventTitle,
      eventDate: entity.eventDate,
      venueName: entity.venueName,
      eventPosterImageUrl: entity.eventPosterImageUrl,
      favoritedAtDisplay: DateFormatUtil.formatCompactDate(entity.favoritedAt),
      sellerNickname: entity.seller.nickname,
    );
  }
}
