import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/search/data/datasources/search_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/search/data/repositories/search_repository_impl.dart';
import 'package:ticket_platform_mobile/features/search/domain/repositories/search_repository.dart';
import 'package:ticket_platform_mobile/features/search/domain/usecases/search_usecase.dart';

part 'search_providers_di.g.dart';

@riverpod
SearchRepository searchRepository(Ref ref) {
  return SearchRepositoryImpl(
    ref.watch(searchRemoteDataSourceProvider),
  );
}

@riverpod
SearchUseCase searchUseCase(Ref ref) {
  return SearchUseCase(ref.watch(searchRepositoryProvider));
}
