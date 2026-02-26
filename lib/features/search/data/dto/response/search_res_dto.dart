import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_res_dto.freezed.dart';
part 'search_res_dto.g.dart';

@freezed
abstract class EventSearchItemDto with _$EventSearchItemDto {
  const factory EventSearchItemDto({
    required int eventId,
    required String title,
    String? eventDate,
    String? location,
    String? imageUrl,
    int? minPrice,
  }) = _EventSearchItemDto;

  factory EventSearchItemDto.fromJson(Map<String, dynamic> json) =>
      _$EventSearchItemDtoFromJson(json);
}

@freezed
abstract class TicketSearchItemDto with _$TicketSearchItemDto {
  const factory TicketSearchItemDto({
    required int ticketId,
    required int eventId,
    String? eventTitle,
    int? price,
    String? seatInfo,
    String? status,
  }) = _TicketSearchItemDto;

  factory TicketSearchItemDto.fromJson(Map<String, dynamic> json) =>
      _$TicketSearchItemDtoFromJson(json);
}

@freezed
abstract class SearchResDto with _$SearchResDto {
  const factory SearchResDto({
    @Default([]) List<EventSearchItemDto> events,
    @Default([]) List<TicketSearchItemDto> tickets,
    @Default(0) int totalCount,
  }) = _SearchResDto;

  factory SearchResDto.fromJson(Map<String, dynamic> json) =>
      _$SearchResDtoFromJson(json);
}
