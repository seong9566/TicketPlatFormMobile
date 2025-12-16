import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist.freezed.dart';
part 'artist.g.dart';

@freezed
abstract class Artist with _$Artist {
  const factory Artist({
    required int id,
    required String name,
    required String englishName, // e.g., (IU) or (NewJeans)
    required String title, // e.g., 2024 월드 투어 서울
    required String imageUrl,
    @Default(false) bool isNew,
    @Default(false) bool isHot,
    @Default(false) bool isSoldOut,
    @Default(0) int ticketCount,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}
