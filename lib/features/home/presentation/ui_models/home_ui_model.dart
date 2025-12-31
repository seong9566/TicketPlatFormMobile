import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/home/domain/entities/home_entity.dart';

class HomeUiModel {
  const HomeUiModel({
    required this.popularTickets,
    required this.recommendedEvents,
  });

  final List<PopularTicketUiModel> popularTickets;
  final List<RecommendedEventUiModel> recommendedEvents;

  factory HomeUiModel.fromEntity(HomeEntity entity) {
    return HomeUiModel(
      popularTickets: entity.popularTickets
          .map((e) => PopularTicketUiModel.fromEntity(e))
          .toList(),
      recommendedEvents: entity.recommendedEvents
          .map((e) => RecommendedEventUiModel.fromEntity(e))
          .toList(),
    );
  }
}

class PopularTicketUiModel {
  const PopularTicketUiModel({
    required this.ticketId,
    required this.title,
    required this.price,
    this.imageUrl,
    this.eventTitle,
    required this.date,
  });

  final int ticketId;
  final String title;
  final String price;
  final String? imageUrl;
  final String? eventTitle;
  final String date;

  factory PopularTicketUiModel.fromEntity(PopularTicketEntity entity) {
    return PopularTicketUiModel(
      ticketId: entity.ticketId,
      title: entity.ticketTitle,
      price: NumberFormatUtil.formatPrice(entity.price),
      imageUrl: entity.posterImageUrl,
      eventTitle: entity.eventTitle,
      date: entity.eventDate,
    );
  }
}

class RecommendedEventUiModel {
  const RecommendedEventUiModel({
    required this.eventId,
    required this.title,
    required this.imageUrl,
    required this.date,
    required this.ticketCount,
  });

  final int eventId;
  final String title;
  final String imageUrl;
  final String date;
  final String ticketCount;

  factory RecommendedEventUiModel.fromEntity(RecommendedEventEntity entity) {
    return RecommendedEventUiModel(
      eventId: entity.eventId,
      title: entity.eventTitle,
      imageUrl: entity.posterImageUrl,
      date: entity.eventDate,
      ticketCount: '${entity.ticketCount}개 티켓',
    );
  }
}
