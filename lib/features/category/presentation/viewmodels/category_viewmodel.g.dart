// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CategoryViewModel)
const categoryViewModelProvider = CategoryViewModelFamily._();

final class CategoryViewModelProvider
    extends $AsyncNotifierProvider<CategoryViewModel, CategoryState> {
  const CategoryViewModelProvider._({
    required CategoryViewModelFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'categoryViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$categoryViewModelHash();

  @override
  String toString() {
    return r'categoryViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CategoryViewModel create() => CategoryViewModel();

  @override
  bool operator ==(Object other) {
    return other is CategoryViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$categoryViewModelHash() => r'2c780f3f56648172201c0486438dce1489de9fbd';

final class CategoryViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          CategoryViewModel,
          AsyncValue<CategoryState>,
          CategoryState,
          FutureOr<CategoryState>,
          String
        > {
  const CategoryViewModelFamily._()
    : super(
        retry: null,
        name: r'categoryViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CategoryViewModelProvider call(String categoryId) =>
      CategoryViewModelProvider._(argument: categoryId, from: this);

  @override
  String toString() => r'categoryViewModelProvider';
}

abstract class _$CategoryViewModel extends $AsyncNotifier<CategoryState> {
  late final _$args = ref.$arg as String;
  String get categoryId => _$args;

  FutureOr<CategoryState> build(String categoryId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<CategoryState>, CategoryState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<CategoryState>, CategoryState>,
              AsyncValue<CategoryState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
