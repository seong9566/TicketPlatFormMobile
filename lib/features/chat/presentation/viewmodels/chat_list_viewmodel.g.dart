// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatListViewModel)
const chatListViewModelProvider = ChatListViewModelProvider._();

final class ChatListViewModelProvider
    extends
        $AsyncNotifierProvider<ChatListViewModel, List<ChatRoomListUiModel>> {
  const ChatListViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatListViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatListViewModelHash();

  @$internal
  @override
  ChatListViewModel create() => ChatListViewModel();
}

String _$chatListViewModelHash() => r'684a1e8a0be7d90b1c295e08f5af6a59f8693776';

abstract class _$ChatListViewModel
    extends $AsyncNotifier<List<ChatRoomListUiModel>> {
  FutureOr<List<ChatRoomListUiModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ChatRoomListUiModel>>,
              List<ChatRoomListUiModel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ChatRoomListUiModel>>,
                List<ChatRoomListUiModel>
              >,
              AsyncValue<List<ChatRoomListUiModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
