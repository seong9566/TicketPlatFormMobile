// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatRoomViewModel)
const chatRoomViewModelProvider = ChatRoomViewModelFamily._();

final class ChatRoomViewModelProvider
    extends $AsyncNotifierProvider<ChatRoomViewModel, ChatRoomDetailUiModel> {
  const ChatRoomViewModelProvider._({
    required ChatRoomViewModelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'chatRoomViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatRoomViewModelHash();

  @override
  String toString() {
    return r'chatRoomViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ChatRoomViewModel create() => ChatRoomViewModel();

  @override
  bool operator ==(Object other) {
    return other is ChatRoomViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatRoomViewModelHash() => r'e230a8aca0a1dbaae000ebc1fc15f1d2b6ee43b6';

final class ChatRoomViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          ChatRoomViewModel,
          AsyncValue<ChatRoomDetailUiModel>,
          ChatRoomDetailUiModel,
          FutureOr<ChatRoomDetailUiModel>,
          int
        > {
  const ChatRoomViewModelFamily._()
    : super(
        retry: null,
        name: r'chatRoomViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatRoomViewModelProvider call(int roomId) =>
      ChatRoomViewModelProvider._(argument: roomId, from: this);

  @override
  String toString() => r'chatRoomViewModelProvider';
}

abstract class _$ChatRoomViewModel
    extends $AsyncNotifier<ChatRoomDetailUiModel> {
  late final _$args = ref.$arg as int;
  int get roomId => _$args;

  FutureOr<ChatRoomDetailUiModel> build(int roomId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<ChatRoomDetailUiModel>, ChatRoomDetailUiModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<ChatRoomDetailUiModel>,
                ChatRoomDetailUiModel
              >,
              AsyncValue<ChatRoomDetailUiModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
