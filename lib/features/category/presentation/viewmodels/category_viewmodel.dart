import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/category/domain/usecases/get_artists_usecase.dart';

import 'package:ticket_platform_mobile/features/category/domain/entities/category_type.dart';
import 'package:ticket_platform_mobile/features/category/presentation/viewmodels/category_state.dart';

part 'category_viewmodel.g.dart';

@riverpod
class CategoryViewModel extends _$CategoryViewModel {
  @override
  FutureOr<CategoryState> build(String categoryId) async {
    return _fetchData(categoryId);
  }

  Future<CategoryState> _fetchData(String categoryId) async {
    final useCase = ref.read(getArtistsUseCaseProvider);

    // Parallel fetch
    final results = await Future.wait([
      useCase.getPopular(categoryId),
      useCase.getAll(categoryId),
    ]);

    final popularEntities = results[0];
    final allEntities = results[1];

    // Ensure categoryId is valid, defaulting to CONCERT if not found
    final type = CategoryType.values.firstWhere(
      (t) => t.code == categoryId,
      orElse: () => CategoryType.concert,
    );

    return CategoryState(
      selectedCategory: type.nameKo,
      popularArtists: popularEntities
          .map((e) => ArtistUiModel.fromEntity(e))
          .toList(),
      allArtists: allEntities.map((e) => ArtistUiModel.fromEntity(e)).toList(),
      isLoading: false,
    );
  }

  Future<void> selectCategory(String category) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      // In a real app, this might trigger a new fetch or filter
      // For now, just update the selected tab state
      final currentState = state.value!;
      return currentState.copyWith(selectedCategory: category);
    });
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }
}
