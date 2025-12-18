// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomeViewModel)
const homeViewModelProvider = HomeViewModelProvider._();

final class HomeViewModelProvider
    extends $AsyncNotifierProvider<HomeViewModel, HomeUiModel> {
  const HomeViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeViewModelHash();

  @$internal
  @override
  HomeViewModel create() => HomeViewModel();
}

String _$homeViewModelHash() => r'6927543ec0f6781a6a0e15c2394fb5389282aa7b';

abstract class _$HomeViewModel extends $AsyncNotifier<HomeUiModel> {
  FutureOr<HomeUiModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<HomeUiModel>, HomeUiModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<HomeUiModel>, HomeUiModel>,
              AsyncValue<HomeUiModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
