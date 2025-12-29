import 'package:intl/intl.dart';
import 'package:ticket_platform_mobile/features/wishlist/domain/entities/wishlist_item_entity.dart';

class WishlistUiModel {
  final String id;
  final String category;
  final String title;
  final String dateDisplay;
  final String priceDisplay;
  final String imageUrl;
  final String likedAtDisplay;

  WishlistUiModel({
    required this.id,
    required this.category,
    required this.title,
    required this.dateDisplay,
    required this.priceDisplay,
    required this.imageUrl,
    required this.likedAtDisplay,
  });

  factory WishlistUiModel.fromEntity(WishlistItemEntity entity) {
    final dateFormat = DateFormat('yyyy.MM.dd (E) HH:mm', 'ko_KR');
    final likedDateFormat = DateFormat('yyyy.MM.dd');
    final priceFormat = NumberFormat('#,###');

    return WishlistUiModel(
      id: entity.id,
      category: entity.category,
      title: entity.title,
      dateDisplay: dateFormat.format(entity.eventDate),
      priceDisplay: '${priceFormat.format(entity.price)}원 ~',
      imageUrl: entity.imageUrl,
      likedAtDisplay: '찜한 날짜: ${likedDateFormat.format(entity.likedAt)}',
    );
  }
}
