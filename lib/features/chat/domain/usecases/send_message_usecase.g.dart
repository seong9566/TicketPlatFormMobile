// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sendMessageUsecase)
const sendMessageUsecaseProvider = SendMessageUsecaseProvider._();

final class SendMessageUsecaseProvider
    extends
        $FunctionalProvider<
          SendMessageUsecase,
          SendMessageUsecase,
          SendMessageUsecase
        >
    with $Provider<SendMessageUsecase> {
  const SendMessageUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sendMessageUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sendMessageUsecaseHash();

  @$internal
  @override
  $ProviderElement<SendMessageUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SendMessageUsecase create(Ref ref) {
    return sendMessageUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SendMessageUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SendMessageUsecase>(value),
    );
  }
}

String _$sendMessageUsecaseHash() =>
    r'e3f3820fb1ae2771cfb3caef3b027dd04ec6bcd3';
