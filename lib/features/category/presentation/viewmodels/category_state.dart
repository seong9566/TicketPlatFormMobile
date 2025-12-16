import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/category/domain/entities/artist.dart';

part 'category_state.freezed.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default('콘서트') String selectedCategory,
    @Default([]) List<ArtistUiModel> popularArtists,
    @Default([]) List<ArtistUiModel> allArtists,
    @Default(true) bool isLoading,
    String? errorMessage,
  }) = _CategoryState;
}

@freezed
abstract class ArtistUiModel with _$ArtistUiModel {
  const factory ArtistUiModel({
    required int id,
    required String name,
    required String description, // name + englishName
    required String eventTitle,
    required String imageUrl,
    required bool isNew,
    required bool isHot,
    required bool isSoldOut,
    required String ticketStatusText, // e.g., "티켓 12장 남음" or "매진임박" logic
  }) = _ArtistUiModel;

  factory ArtistUiModel.fromEntity(Artist entity) {
    String statusText = '';
    if (entity.ticketCount == 0) {
      statusText = '티켓 없음';
    } else {
      statusText = '티켓 ${entity.ticketCount}장 남음';
      if (entity.ticketCount > 0 && entity.ticketCount < 20) {
        // Example logic
      }
    }

    return ArtistUiModel(
      id: entity.id,
      name: entity.name,
      description: '${entity.name} (${entity.englishName})',
      eventTitle: entity.title,
      imageUrl: entity.imageUrl,
      isNew: entity.isNew,
      isHot: entity.isHot,
      isSoldOut: entity.ticketCount < 10,
      ticketStatusText: statusText,
    );
  }
}
