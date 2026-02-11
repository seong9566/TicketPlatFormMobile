// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationListViewModel)
const notificationListViewModelProvider = NotificationListViewModelProvider._();

final class NotificationListViewModelProvider
    extends
        $AsyncNotifierProvider<
          NotificationListViewModel,
          NotificationListState
        > {
  const NotificationListViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationListViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationListViewModelHash();

  @$internal
  @override
  NotificationListViewModel create() => NotificationListViewModel();
}

String _$notificationListViewModelHash() =>
    r'284c0bced2780ba82e750152d6e8b1147a491e34';

abstract class _$NotificationListViewModel
    extends $AsyncNotifier<NotificationListState> {
  FutureOr<NotificationListState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<NotificationListState>, NotificationListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<NotificationListState>,
                NotificationListState
              >,
              AsyncValue<NotificationListState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
