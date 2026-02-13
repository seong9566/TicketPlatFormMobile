// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispute_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DisputeListState {

 List<DisputeListItemUiModel> get items; String? get nextCursor; bool get hasMore; bool get isLoadingMore;
/// Create a copy of DisputeListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeListStateCopyWith<DisputeListState> get copyWith => _$DisputeListStateCopyWithImpl<DisputeListState>(this as DisputeListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeListState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor,hasMore,isLoadingMore);

@override
String toString() {
  return 'DisputeListState(items: $items, nextCursor: $nextCursor, hasMore: $hasMore, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $DisputeListStateCopyWith<$Res>  {
  factory $DisputeListStateCopyWith(DisputeListState value, $Res Function(DisputeListState) _then) = _$DisputeListStateCopyWithImpl;
@useResult
$Res call({
 List<DisputeListItemUiModel> items, String? nextCursor, bool hasMore, bool isLoadingMore
});




}
/// @nodoc
class _$DisputeListStateCopyWithImpl<$Res>
    implements $DisputeListStateCopyWith<$Res> {
  _$DisputeListStateCopyWithImpl(this._self, this._then);

  final DisputeListState _self;
  final $Res Function(DisputeListState) _then;

/// Create a copy of DisputeListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,Object? isLoadingMore = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<DisputeListItemUiModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DisputeListState].
extension DisputeListStatePatterns on DisputeListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeListState value)  $default,){
final _that = this;
switch (_that) {
case _DisputeListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeListState value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DisputeListItemUiModel> items,  String? nextCursor,  bool hasMore,  bool isLoadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeListState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DisputeListItemUiModel> items,  String? nextCursor,  bool hasMore,  bool isLoadingMore)  $default,) {final _that = this;
switch (_that) {
case _DisputeListState():
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DisputeListItemUiModel> items,  String? nextCursor,  bool hasMore,  bool isLoadingMore)?  $default,) {final _that = this;
switch (_that) {
case _DisputeListState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.isLoadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _DisputeListState implements DisputeListState {
  const _DisputeListState({final  List<DisputeListItemUiModel> items = const [], this.nextCursor, this.hasMore = false, this.isLoadingMore = false}): _items = items;
  

 final  List<DisputeListItemUiModel> _items;
@override@JsonKey() List<DisputeListItemUiModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  bool isLoadingMore;

/// Create a copy of DisputeListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeListStateCopyWith<_DisputeListState> get copyWith => __$DisputeListStateCopyWithImpl<_DisputeListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeListState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,hasMore,isLoadingMore);

@override
String toString() {
  return 'DisputeListState(items: $items, nextCursor: $nextCursor, hasMore: $hasMore, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$DisputeListStateCopyWith<$Res> implements $DisputeListStateCopyWith<$Res> {
  factory _$DisputeListStateCopyWith(_DisputeListState value, $Res Function(_DisputeListState) _then) = __$DisputeListStateCopyWithImpl;
@override @useResult
$Res call({
 List<DisputeListItemUiModel> items, String? nextCursor, bool hasMore, bool isLoadingMore
});




}
/// @nodoc
class __$DisputeListStateCopyWithImpl<$Res>
    implements _$DisputeListStateCopyWith<$Res> {
  __$DisputeListStateCopyWithImpl(this._self, this._then);

  final _DisputeListState _self;
  final $Res Function(_DisputeListState) _then;

/// Create a copy of DisputeListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,Object? isLoadingMore = null,}) {
  return _then(_DisputeListState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<DisputeListItemUiModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
