import 'package:ticket_platform_mobile/features/category/domain/entities/artist.dart';

abstract class CategoryRepository {
  Future<List<Artist>> getPopularArtists(String categoryId);
  Future<List<Artist>> getAllArtists(String categoryId);
}
