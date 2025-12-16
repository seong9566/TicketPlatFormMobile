import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/category/domain/entities/artist.dart';

part 'artist_resp_dto.freezed.dart';
part 'artist_resp_dto.g.dart';

@freezed
abstract class ArtistRespDto with _$ArtistRespDto {
  const factory ArtistRespDto({
    required int id,
    required String name,
    required String englishName,
    required String title,
    required String imageUrl,
    @Default(false) bool isNew,
    @Default(false) bool isHot,
    @Default(false) bool isSoldOut,
    @Default(0) int ticketCount,
  }) = _ArtistRespDto;

  factory ArtistRespDto.fromJson(Map<String, dynamic> json) =>
      _$ArtistRespDtoFromJson(json);
}

extension ArtistRespDtoExtension on ArtistRespDto {
  Artist toEntity() {
    return Artist(
      id: id,
      name: name,
      englishName: englishName,
      title: title,
      imageUrl: imageUrl,
      isNew: isNew,
      isHot: isHot,
      isSoldOut: isSoldOut,
      ticketCount: ticketCount,
    );
  }
}
