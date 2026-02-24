// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_dashboard_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SalesDashboardViewModel)
const salesDashboardViewModelProvider = SalesDashboardViewModelProvider._();

final class SalesDashboardViewModelProvider
    extends
        $AsyncNotifierProvider<SalesDashboardViewModel, SalesDashboardState> {
  const SalesDashboardViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'salesDashboardViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$salesDashboardViewModelHash();

  @$internal
  @override
  SalesDashboardViewModel create() => SalesDashboardViewModel();
}

String _$salesDashboardViewModelHash() =>
    r'f599b1b4ca64c1adca5e86bc776998fd68da3b21';

abstract class _$SalesDashboardViewModel
    extends $AsyncNotifier<SalesDashboardState> {
  FutureOr<SalesDashboardState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<SalesDashboardState>, SalesDashboardState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<SalesDashboardState>, SalesDashboardState>,
              AsyncValue<SalesDashboardState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
