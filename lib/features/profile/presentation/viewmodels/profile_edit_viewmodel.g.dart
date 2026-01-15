// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_edit_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileEditViewModel)
const profileEditViewModelProvider = ProfileEditViewModelProvider._();

final class ProfileEditViewModelProvider
    extends $NotifierProvider<ProfileEditViewModel, ProfileEditState> {
  const ProfileEditViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileEditViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileEditViewModelHash();

  @$internal
  @override
  ProfileEditViewModel create() => ProfileEditViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileEditState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileEditState>(value),
    );
  }
}

String _$profileEditViewModelHash() =>
    r'4223febe3740f492f766233af67037c52ebe799b';

abstract class _$ProfileEditViewModel extends $Notifier<ProfileEditState> {
  ProfileEditState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ProfileEditState, ProfileEditState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProfileEditState, ProfileEditState>,
              ProfileEditState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
