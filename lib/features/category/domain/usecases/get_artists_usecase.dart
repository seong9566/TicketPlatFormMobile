import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/category/domain/entities/artist.dart';
import 'package:ticket_platform_mobile/features/category/domain/repositories/category_repository.dart';
import 'package:ticket_platform_mobile/features/category/data/repositories/category_repository_impl.dart';

part 'get_artists_usecase.g.dart';

@riverpod
GetArtistsUseCase getArtistsUseCase(Ref ref) {
  return GetArtistsUseCase(repository: ref.watch(categoryRepositoryProvider));
}

class GetArtistsUseCase {
  final CategoryRepository _repository;

  GetArtistsUseCase({required CategoryRepository repository})
    : _repository = repository;

  Future<List<Artist>> getPopular(String categoryId) async {
    return _repository.getPopularArtists(categoryId);
  }

  Future<List<Artist>> getAll(String categoryId) async {
    return _repository.getAllArtists(categoryId);
  }
}
