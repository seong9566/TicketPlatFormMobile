// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_event_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellEventSelectionState {

 List<SellEventUiModel> get events; int get totalCount; int get currentPage; bool get hasMore; int? get selectedEventId; String get keyword;
/// Create a copy of SellEventSelectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellEventSelectionStateCopyWith<SellEventSelectionState> get copyWith => _$SellEventSelectionStateCopyWithImpl<SellEventSelectionState>(this as SellEventSelectionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellEventSelectionState&&const DeepCollectionEquality().equals(other.events, events)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.selectedEventId, selectedEventId) || other.selectedEventId == selectedEventId)&&(identical(other.keyword, keyword) || other.keyword == keyword));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(events),totalCount,currentPage,hasMore,selectedEventId,keyword);

@override
String toString() {
  return 'SellEventSelectionState(events: $events, totalCount: $totalCount, currentPage: $currentPage, hasMore: $hasMore, selectedEventId: $selectedEventId, keyword: $keyword)';
}


}

/// @nodoc
abstract mixin class $SellEventSelectionStateCopyWith<$Res>  {
  factory $SellEventSelectionStateCopyWith(SellEventSelectionState value, $Res Function(SellEventSelectionState) _then) = _$SellEventSelectionStateCopyWithImpl;
@useResult
$Res call({
 List<SellEventUiModel> events, int totalCount, int currentPage, bool hasMore, int? selectedEventId, String keyword
});




}
/// @nodoc
class _$SellEventSelectionStateCopyWithImpl<$Res>
    implements $SellEventSelectionStateCopyWith<$Res> {
  _$SellEventSelectionStateCopyWithImpl(this._self, this._then);

  final SellEventSelectionState _self;
  final $Res Function(SellEventSelectionState) _then;

/// Create a copy of SellEventSelectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? events = null,Object? totalCount = null,Object? currentPage = null,Object? hasMore = null,Object? selectedEventId = freezed,Object? keyword = null,}) {
  return _then(_self.copyWith(
events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<SellEventUiModel>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,selectedEventId: freezed == selectedEventId ? _self.selectedEventId : selectedEventId // ignore: cast_nullable_to_non_nullable
as int?,keyword: null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellEventSelectionState].
extension SellEventSelectionStatePatterns on SellEventSelectionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellEventSelectionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellEventSelectionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellEventSelectionState value)  $default,){
final _that = this;
switch (_that) {
case _SellEventSelectionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellEventSelectionState value)?  $default,){
final _that = this;
switch (_that) {
case _SellEventSelectionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellEventUiModel> events,  int totalCount,  int currentPage,  bool hasMore,  int? selectedEventId,  String keyword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellEventSelectionState() when $default != null:
return $default(_that.events,_that.totalCount,_that.currentPage,_that.hasMore,_that.selectedEventId,_that.keyword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellEventUiModel> events,  int totalCount,  int currentPage,  bool hasMore,  int? selectedEventId,  String keyword)  $default,) {final _that = this;
switch (_that) {
case _SellEventSelectionState():
return $default(_that.events,_that.totalCount,_that.currentPage,_that.hasMore,_that.selectedEventId,_that.keyword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellEventUiModel> events,  int totalCount,  int currentPage,  bool hasMore,  int? selectedEventId,  String keyword)?  $default,) {final _that = this;
switch (_that) {
case _SellEventSelectionState() when $default != null:
return $default(_that.events,_that.totalCount,_that.currentPage,_that.hasMore,_that.selectedEventId,_that.keyword);case _:
  return null;

}
}

}

/// @nodoc


class _SellEventSelectionState implements SellEventSelectionState {
  const _SellEventSelectionState({final  List<SellEventUiModel> events = const [], this.totalCount = 0, this.currentPage = 1, this.hasMore = false, this.selectedEventId = null, this.keyword = ''}): _events = events;
  

 final  List<SellEventUiModel> _events;
@override@JsonKey() List<SellEventUiModel> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

@override@JsonKey() final  int totalCount;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  int? selectedEventId;
@override@JsonKey() final  String keyword;

/// Create a copy of SellEventSelectionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellEventSelectionStateCopyWith<_SellEventSelectionState> get copyWith => __$SellEventSelectionStateCopyWithImpl<_SellEventSelectionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellEventSelectionState&&const DeepCollectionEquality().equals(other._events, _events)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.selectedEventId, selectedEventId) || other.selectedEventId == selectedEventId)&&(identical(other.keyword, keyword) || other.keyword == keyword));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_events),totalCount,currentPage,hasMore,selectedEventId,keyword);

@override
String toString() {
  return 'SellEventSelectionState(events: $events, totalCount: $totalCount, currentPage: $currentPage, hasMore: $hasMore, selectedEventId: $selectedEventId, keyword: $keyword)';
}


}

/// @nodoc
abstract mixin class _$SellEventSelectionStateCopyWith<$Res> implements $SellEventSelectionStateCopyWith<$Res> {
  factory _$SellEventSelectionStateCopyWith(_SellEventSelectionState value, $Res Function(_SellEventSelectionState) _then) = __$SellEventSelectionStateCopyWithImpl;
@override @useResult
$Res call({
 List<SellEventUiModel> events, int totalCount, int currentPage, bool hasMore, int? selectedEventId, String keyword
});




}
/// @nodoc
class __$SellEventSelectionStateCopyWithImpl<$Res>
    implements _$SellEventSelectionStateCopyWith<$Res> {
  __$SellEventSelectionStateCopyWithImpl(this._self, this._then);

  final _SellEventSelectionState _self;
  final $Res Function(_SellEventSelectionState) _then;

/// Create a copy of SellEventSelectionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? events = null,Object? totalCount = null,Object? currentPage = null,Object? hasMore = null,Object? selectedEventId = freezed,Object? keyword = null,}) {
  return _then(_SellEventSelectionState(
events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<SellEventUiModel>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,selectedEventId: freezed == selectedEventId ? _self.selectedEventId : selectedEventId // ignore: cast_nullable_to_non_nullable
as int?,keyword: null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
