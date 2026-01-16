// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_register_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SellRegisterViewModel)
const sellRegisterViewModelProvider = SellRegisterViewModelProvider._();

final class SellRegisterViewModelProvider
    extends $NotifierProvider<SellRegisterViewModel, SellRegisterState> {
  const SellRegisterViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sellRegisterViewModelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sellRegisterViewModelHash();

  @$internal
  @override
  SellRegisterViewModel create() => SellRegisterViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SellRegisterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SellRegisterState>(value),
    );
  }
}

String _$sellRegisterViewModelHash() =>
    r'b4040f41023b556e3bff513d074f3a8abdb37678';

abstract class _$SellRegisterViewModel extends $Notifier<SellRegisterState> {
  SellRegisterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SellRegisterState, SellRegisterState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SellRegisterState, SellRegisterState>,
              SellRegisterState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
