import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_session.freezed.dart';
part 'event_session.g.dart';

@freezed
abstract class EventSession with _$EventSession {
  const factory EventSession({
    required int id,
    required String name,
    required String englishName, // e.g., (IU) or (NewJeans)
    required String title, // e.g., 2024 월드 투어 서울
    required String imageUrl,
    @Default(false) bool isNew,
    @Default(false) bool isHot,
    @Default(false) bool isSoldOut,
    @Default(0) int ticketCount,
  }) = _EventSession;

  factory EventSession.fromJson(Map<String, dynamic> json) =>
      _$EventSessionFromJson(json);
}
