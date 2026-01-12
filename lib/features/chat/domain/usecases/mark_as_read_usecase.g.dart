// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_as_read_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(markAsReadUsecase)
const markAsReadUsecaseProvider = MarkAsReadUsecaseProvider._();

final class MarkAsReadUsecaseProvider
    extends
        $FunctionalProvider<
          MarkAsReadUsecase,
          MarkAsReadUsecase,
          MarkAsReadUsecase
        >
    with $Provider<MarkAsReadUsecase> {
  const MarkAsReadUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'markAsReadUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$markAsReadUsecaseHash();

  @$internal
  @override
  $ProviderElement<MarkAsReadUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MarkAsReadUsecase create(Ref ref) {
    return markAsReadUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MarkAsReadUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MarkAsReadUsecase>(value),
    );
  }
}

String _$markAsReadUsecaseHash() => r'210d0e692acf2bbb14c9563cf58e3f4919d6e0a6';
