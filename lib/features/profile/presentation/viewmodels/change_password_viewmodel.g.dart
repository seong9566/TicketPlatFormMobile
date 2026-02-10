// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChangePasswordViewModel)
const changePasswordViewModelProvider = ChangePasswordViewModelProvider._();

final class ChangePasswordViewModelProvider
    extends $NotifierProvider<ChangePasswordViewModel, ChangePasswordState> {
  const ChangePasswordViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'changePasswordViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$changePasswordViewModelHash();

  @$internal
  @override
  ChangePasswordViewModel create() => ChangePasswordViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChangePasswordState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChangePasswordState>(value),
    );
  }
}

String _$changePasswordViewModelHash() =>
    r'da73b96cb4021b71d8b433f13faccb4b2a06d631';

abstract class _$ChangePasswordViewModel
    extends $Notifier<ChangePasswordState> {
  ChangePasswordState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ChangePasswordState, ChangePasswordState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ChangePasswordState, ChangePasswordState>,
              ChangePasswordState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
