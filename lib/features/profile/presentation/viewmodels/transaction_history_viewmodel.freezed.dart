// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionHistoryState {

 List<TransactionHistoryUiModel> get items; String? get nextCursor; bool get hasMore; int get totalCount; bool get isLoadingMore;
/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryStateCopyWith<TransactionHistoryState> get copyWith => _$TransactionHistoryStateCopyWithImpl<TransactionHistoryState>(this as TransactionHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor,hasMore,totalCount,isLoadingMore);

@override
String toString() {
  return 'TransactionHistoryState(items: $items, nextCursor: $nextCursor, hasMore: $hasMore, totalCount: $totalCount, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryStateCopyWith<$Res>  {
  factory $TransactionHistoryStateCopyWith(TransactionHistoryState value, $Res Function(TransactionHistoryState) _then) = _$TransactionHistoryStateCopyWithImpl;
@useResult
$Res call({
 List<TransactionHistoryUiModel> items, String? nextCursor, bool hasMore, int totalCount, bool isLoadingMore
});




}
/// @nodoc
class _$TransactionHistoryStateCopyWithImpl<$Res>
    implements $TransactionHistoryStateCopyWith<$Res> {
  _$TransactionHistoryStateCopyWithImpl(this._self, this._then);

  final TransactionHistoryState _self;
  final $Res Function(TransactionHistoryState) _then;

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,Object? totalCount = null,Object? isLoadingMore = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<TransactionHistoryUiModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionHistoryState].
extension TransactionHistoryStatePatterns on TransactionHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TransactionHistoryUiModel> items,  String? nextCursor,  bool hasMore,  int totalCount,  bool isLoadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistoryState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.totalCount,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TransactionHistoryUiModel> items,  String? nextCursor,  bool hasMore,  int totalCount,  bool isLoadingMore)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryState():
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.totalCount,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TransactionHistoryUiModel> items,  String? nextCursor,  bool hasMore,  int totalCount,  bool isLoadingMore)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.totalCount,_that.isLoadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionHistoryState implements TransactionHistoryState {
  const _TransactionHistoryState({final  List<TransactionHistoryUiModel> items = const [], this.nextCursor, this.hasMore = false, this.totalCount = 0, this.isLoadingMore = false}): _items = items;
  

 final  List<TransactionHistoryUiModel> _items;
@override@JsonKey() List<TransactionHistoryUiModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  int totalCount;
@override@JsonKey() final  bool isLoadingMore;

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryStateCopyWith<_TransactionHistoryState> get copyWith => __$TransactionHistoryStateCopyWithImpl<_TransactionHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistoryState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,hasMore,totalCount,isLoadingMore);

@override
String toString() {
  return 'TransactionHistoryState(items: $items, nextCursor: $nextCursor, hasMore: $hasMore, totalCount: $totalCount, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryStateCopyWith<$Res> implements $TransactionHistoryStateCopyWith<$Res> {
  factory _$TransactionHistoryStateCopyWith(_TransactionHistoryState value, $Res Function(_TransactionHistoryState) _then) = __$TransactionHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 List<TransactionHistoryUiModel> items, String? nextCursor, bool hasMore, int totalCount, bool isLoadingMore
});




}
/// @nodoc
class __$TransactionHistoryStateCopyWithImpl<$Res>
    implements _$TransactionHistoryStateCopyWith<$Res> {
  __$TransactionHistoryStateCopyWithImpl(this._self, this._then);

  final _TransactionHistoryState _self;
  final $Res Function(_TransactionHistoryState) _then;

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,Object? totalCount = null,Object? isLoadingMore = null,}) {
  return _then(_TransactionHistoryState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<TransactionHistoryUiModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
