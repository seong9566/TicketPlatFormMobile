import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/entities/wishlist_item_entity.dart';

class WishlistUiModel {
  final int ticketId;
  final String eventTitle;
  final String seatDetail;
  final String priceDisplay;
  final String originalPriceDisplay;
  final String discountRate;
  final int remainingQuantity;
  final String eventMeta;
  final String eventPosterImageUrl;
  final String favoritedAtDisplay;
  final String sellerNickname;
  final bool? hasTicket;
  final bool? isConsecutive;
  final String? tradeMethodName;

  WishlistUiModel({
    required this.ticketId,
    required this.eventTitle,
    required this.seatDetail,
    required this.priceDisplay,
    required this.originalPriceDisplay,
    required this.discountRate,
    required this.remainingQuantity,
    required this.eventMeta,
    required this.eventPosterImageUrl,
    required this.favoritedAtDisplay,
    required this.sellerNickname,
    this.hasTicket,
    this.isConsecutive,
    this.tradeMethodName,
  });

  factory WishlistUiModel.fromEntity(WishlistItemEntity entity) {
    final discount = entity.originalPrice > 0
        ? (((entity.originalPrice - entity.price) / entity.originalPrice) * 100)
              .round()
        : 0;

    return WishlistUiModel(
      ticketId: entity.ticketId,
      eventTitle: entity.eventTitle ?? '',
      seatDetail: _buildSeatDetail(
        seatGradeName: entity.seatGradeName,
        area: entity.area,
        row: entity.row,
      ),
      priceDisplay: NumberFormatUtil.formatNumber(entity.price),
      originalPriceDisplay: NumberFormatUtil.formatNumber(entity.originalPrice),
      discountRate: discount > 0 ? '$discount%' : '',
      remainingQuantity: entity.remainingQuantity,
      eventMeta: _buildEventMeta(
        venueName: entity.venueName,
        eventDate: entity.eventDate,
      ),
      eventPosterImageUrl: entity.eventPosterImageUrl ?? '',
      favoritedAtDisplay: DateFormatUtil.formatCompactDate(entity.favoritedAt),
      sellerNickname: entity.seller.nickname,
      hasTicket: entity.hasTicket,
      isConsecutive: entity.isConsecutive,
      tradeMethodName: entity.tradeMethodName,
    );
  }

  static String _buildSeatDetail({
    String? seatGradeName,
    String? area,
    String? row,
  }) {
    final parts = <String>[
      if (seatGradeName != null && seatGradeName.isNotEmpty) seatGradeName,
      if (area != null && area.isNotEmpty) area,
      if (row != null && row.isNotEmpty) row,
    ];

    return parts.join(' / ');
  }

  static String _buildEventMeta({
    String? venueName,
    String? eventDate,
  }) {
    final parts = <String>[
      if (venueName != null && venueName.isNotEmpty) venueName,
      if (eventDate != null && eventDate.isNotEmpty) eventDate,
    ];

    return parts.join(' / ');
  }
}
