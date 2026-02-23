import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/home/domain/entities/home_entity.dart';

class HomeUiModel {
  const HomeUiModel({
    required this.deadlineDeals,
    required this.popularEvents,
    required this.recommendedEvents,
  });

  final List<DeadlineDealUiModel> deadlineDeals;
  final List<PopularEventUiModel> popularEvents;
  final List<RecommendedEventUiModel> recommendedEvents;

  factory HomeUiModel.fromEntity(HomeEntity entity) {
    return HomeUiModel(
      deadlineDeals: entity.deadlineDeals
          .map(DeadlineDealUiModel.fromEntity)
          .toList(),
      popularEvents: entity.popularEvents
          .map(PopularEventUiModel.fromEntity)
          .toList(),
      recommendedEvents: entity.recommendedEvents
          .map(RecommendedEventUiModel.fromEntity)
          .toList(),
    );
  }
}

class DeadlineDealUiModel {
  const DeadlineDealUiModel({
    required this.eventId,
    required this.title,
    required this.date,
    required this.venue,
    required this.daysLeft,
    required this.imageUrl,
    required this.discountLabel,
    required this.displayPrice,
    required this.availableTicketLabel,
  });

  final int eventId;
  final String title;
  final String date;
  final String venue;
  final int daysLeft;
  final String imageUrl;
  final String discountLabel;
  final String displayPrice;
  final String availableTicketLabel;

  String get dDayLabel => daysLeft == 0 ? 'D-DAY' : 'D-$daysLeft';

  factory DeadlineDealUiModel.fromEntity(DeadlineDealEntity entity) {
    return DeadlineDealUiModel(
      eventId: entity.eventId,
      title: entity.eventTitle,
      date: entity.eventDate,
      venue: entity.venue,
      daysLeft: entity.daysLeft,
      imageUrl: entity.posterImageUrl ?? '',
      discountLabel: '-${entity.ticketDiscountRate}%',
      displayPrice: NumberFormatUtil.formatPrice(entity.minTicketPrice),
      availableTicketLabel: '${entity.availableTicketCount}건 판매중',
    );
  }
}

class PopularEventUiModel {
  const PopularEventUiModel({
    required this.eventId,
    required this.title,
    required this.date,
    required this.description,
    required this.venue,
    required this.displayPrice,
    required this.discountLabel,
    required this.imageUrl,
    required this.availableTicketLabel,
    required this.categoryId,
  });

  final int eventId;
  final String title;
  final String date;
  final String description;
  final String venue;
  final String displayPrice;
  final String discountLabel;
  final String imageUrl;
  final String availableTicketLabel;
  final int categoryId;

  factory PopularEventUiModel.fromEntity(PopularEventEntity entity) {
    return PopularEventUiModel(
      eventId: entity.eventId,
      title: entity.eventTitle,
      description: entity.eventDescription ?? '',
      date: entity.eventDate,
      venue: entity.venue,
      displayPrice: NumberFormatUtil.formatPrice(entity.minTicketPrice),
      discountLabel: '-${entity.ticketDiscountRate}%',
      imageUrl: entity.posterImageUrl ?? '',
      availableTicketLabel: '${entity.availableTicketCount}건 판매중',
      categoryId: entity.categoryId,
    );
  }
}

class RecommendedEventUiModel {
  const RecommendedEventUiModel({
    required this.eventId,
    required this.title,
    required this.imageUrl,
    required this.date,
    required this.venue,
    required this.displayPrice,
    required this.discountLabel,
    required this.availableTicketLabel,
    required this.categoryId,
    required this.isWishedByMe,
  });

  final int eventId;
  final String title;
  final String imageUrl;
  final String date;
  final String venue;
  final String displayPrice;
  final String discountLabel;
  final String availableTicketLabel;
  final int categoryId;
  final bool isWishedByMe;

  factory RecommendedEventUiModel.fromEntity(RecommendedEventEntity entity) {
    return RecommendedEventUiModel(
      eventId: entity.eventId,
      title: entity.eventTitle,
      imageUrl: entity.posterImageUrl ?? '',
      date: entity.eventDate,
      venue: entity.venue,
      displayPrice: NumberFormatUtil.formatPrice(entity.minTicketPrice),
      discountLabel: '-${entity.ticketDiscountRate}%',
      availableTicketLabel: '${entity.availableTicketCount}건',
      categoryId: entity.categoryId,
      isWishedByMe: entity.isWishedByMe,
    );
  }
}
