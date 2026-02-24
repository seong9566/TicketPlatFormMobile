// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_ticket_list_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventTicketListState {

 String get eventTitle; List<EventTicketUiModel> get items; int get currentPage; bool get hasMore; bool get isLoadingMore; int? get totalCount;
/// Create a copy of EventTicketListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventTicketListStateCopyWith<EventTicketListState> get copyWith => _$EventTicketListStateCopyWithImpl<EventTicketListState>(this as EventTicketListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventTicketListState&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}


@override
int get hashCode => Object.hash(runtimeType,eventTitle,const DeepCollectionEquality().hash(items),currentPage,hasMore,isLoadingMore,totalCount);

@override
String toString() {
  return 'EventTicketListState(eventTitle: $eventTitle, items: $items, currentPage: $currentPage, hasMore: $hasMore, isLoadingMore: $isLoadingMore, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $EventTicketListStateCopyWith<$Res>  {
  factory $EventTicketListStateCopyWith(EventTicketListState value, $Res Function(EventTicketListState) _then) = _$EventTicketListStateCopyWithImpl;
@useResult
$Res call({
 String eventTitle, List<EventTicketUiModel> items, int currentPage, bool hasMore, bool isLoadingMore, int? totalCount
});




}
/// @nodoc
class _$EventTicketListStateCopyWithImpl<$Res>
    implements $EventTicketListStateCopyWith<$Res> {
  _$EventTicketListStateCopyWithImpl(this._self, this._then);

  final EventTicketListState _self;
  final $Res Function(EventTicketListState) _then;

/// Create a copy of EventTicketListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventTitle = null,Object? items = null,Object? currentPage = null,Object? hasMore = null,Object? isLoadingMore = null,Object? totalCount = freezed,}) {
  return _then(_self.copyWith(
eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<EventTicketUiModel>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EventTicketListState].
extension EventTicketListStatePatterns on EventTicketListState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventTicketListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventTicketListState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventTicketListState value)  $default,){
final _that = this;
switch (_that) {
case _EventTicketListState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventTicketListState value)?  $default,){
final _that = this;
switch (_that) {
case _EventTicketListState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String eventTitle,  List<EventTicketUiModel> items,  int currentPage,  bool hasMore,  bool isLoadingMore,  int? totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventTicketListState() when $default != null:
return $default(_that.eventTitle,_that.items,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.totalCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String eventTitle,  List<EventTicketUiModel> items,  int currentPage,  bool hasMore,  bool isLoadingMore,  int? totalCount)  $default,) {final _that = this;
switch (_that) {
case _EventTicketListState():
return $default(_that.eventTitle,_that.items,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.totalCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String eventTitle,  List<EventTicketUiModel> items,  int currentPage,  bool hasMore,  bool isLoadingMore,  int? totalCount)?  $default,) {final _that = this;
switch (_that) {
case _EventTicketListState() when $default != null:
return $default(_that.eventTitle,_that.items,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc


class _EventTicketListState implements EventTicketListState {
  const _EventTicketListState({required this.eventTitle, final  List<EventTicketUiModel> items = const [], this.currentPage = 1, this.hasMore = false, this.isLoadingMore = false, this.totalCount}): _items = items;
  

@override final  String eventTitle;
 final  List<EventTicketUiModel> _items;
@override@JsonKey() List<EventTicketUiModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  bool isLoadingMore;
@override final  int? totalCount;

/// Create a copy of EventTicketListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventTicketListStateCopyWith<_EventTicketListState> get copyWith => __$EventTicketListStateCopyWithImpl<_EventTicketListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventTicketListState&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}


@override
int get hashCode => Object.hash(runtimeType,eventTitle,const DeepCollectionEquality().hash(_items),currentPage,hasMore,isLoadingMore,totalCount);

@override
String toString() {
  return 'EventTicketListState(eventTitle: $eventTitle, items: $items, currentPage: $currentPage, hasMore: $hasMore, isLoadingMore: $isLoadingMore, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$EventTicketListStateCopyWith<$Res> implements $EventTicketListStateCopyWith<$Res> {
  factory _$EventTicketListStateCopyWith(_EventTicketListState value, $Res Function(_EventTicketListState) _then) = __$EventTicketListStateCopyWithImpl;
@override @useResult
$Res call({
 String eventTitle, List<EventTicketUiModel> items, int currentPage, bool hasMore, bool isLoadingMore, int? totalCount
});




}
/// @nodoc
class __$EventTicketListStateCopyWithImpl<$Res>
    implements _$EventTicketListStateCopyWith<$Res> {
  __$EventTicketListStateCopyWithImpl(this._self, this._then);

  final _EventTicketListState _self;
  final $Res Function(_EventTicketListState) _then;

/// Create a copy of EventTicketListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventTitle = null,Object? items = null,Object? currentPage = null,Object? hasMore = null,Object? isLoadingMore = null,Object? totalCount = freezed,}) {
  return _then(_EventTicketListState(
eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<EventTicketUiModel>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
