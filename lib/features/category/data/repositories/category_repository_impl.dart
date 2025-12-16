import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/category/domain/entities/artist.dart';
import 'package:ticket_platform_mobile/features/category/domain/repositories/category_repository.dart';
import 'package:ticket_platform_mobile/features/category/data/dto/response/artist_resp_dto.dart';

part 'category_repository_impl.g.dart';

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  return CategoryRepositoryImpl();
}

class CategoryRepositoryImpl implements CategoryRepository {
  CategoryRepositoryImpl();

  @override
  Future<List<Artist>> getPopularArtists(String categoryId) async {
    try {
      // Mock Data Logic moved from RemoteDataSource
      await Future.delayed(const Duration(milliseconds: 500));
      final dtos = [
        const ArtistRespDto(
          id: 1,
          name: '아이유 (IU)',
          englishName: 'IU',
          title: '2024 월드 투어 서울',
          imageUrl: 'https://via.placeholder.com/150',
          isNew: true,
          isSoldOut: true,
          ticketCount: 12,
        ),
        const ArtistRespDto(
          id: 2,
          name: '뉴진스 (NewJeans)',
          englishName: 'NewJeans',
          title: 'Bunnies Camp 2024',
          imageUrl: 'https://via.placeholder.com/150',
          ticketCount: 45,
        ),
        const ArtistRespDto(
          id: 3,
          name: '싸이 (PSY)',
          englishName: 'PSY',
          title: '흠뻑쇼 2024 - SUMMER SWAG',
          imageUrl: 'https://via.placeholder.com/150',
          isHot: true,
          ticketCount: 82,
        ),
      ];

      return dtos.map((e) => e.toEntity()).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Artist>> getAllArtists(String categoryId) async {
    try {
      // Mock Data Logic moved from RemoteDataSource
      await Future.delayed(const Duration(milliseconds: 500));
      final dtos = [
        const ArtistRespDto(
          id: 4,
          name: '임영웅',
          englishName: 'Lim Young Woong',
          title: 'IM HERO 앙코르 콘서트',
          imageUrl: 'https://via.placeholder.com/150',
          ticketCount: 5,
        ),
        const ArtistRespDto(
          id: 5,
          name: '데이식스 (DAY6)',
          englishName: 'DAY6',
          title: 'Welcome to the Show',
          imageUrl: 'https://via.placeholder.com/150',
          ticketCount: 0,
        ),
      ];

      return dtos.map((e) => e.toEntity()).toList();
    } catch (e) {
      rethrow;
    }
  }
}
