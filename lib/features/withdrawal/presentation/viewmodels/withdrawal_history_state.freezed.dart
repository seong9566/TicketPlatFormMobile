// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WithdrawalHistoryState {

 List<WithdrawalEntity> get items; int get totalCount; int get page; int get pageSize; bool get isLoadingMore;
/// Create a copy of WithdrawalHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawalHistoryStateCopyWith<WithdrawalHistoryState> get copyWith => _$WithdrawalHistoryStateCopyWithImpl<WithdrawalHistoryState>(this as WithdrawalHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalHistoryState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalCount,page,pageSize,isLoadingMore);

@override
String toString() {
  return 'WithdrawalHistoryState(items: $items, totalCount: $totalCount, page: $page, pageSize: $pageSize, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $WithdrawalHistoryStateCopyWith<$Res>  {
  factory $WithdrawalHistoryStateCopyWith(WithdrawalHistoryState value, $Res Function(WithdrawalHistoryState) _then) = _$WithdrawalHistoryStateCopyWithImpl;
@useResult
$Res call({
 List<WithdrawalEntity> items, int totalCount, int page, int pageSize, bool isLoadingMore
});




}
/// @nodoc
class _$WithdrawalHistoryStateCopyWithImpl<$Res>
    implements $WithdrawalHistoryStateCopyWith<$Res> {
  _$WithdrawalHistoryStateCopyWithImpl(this._self, this._then);

  final WithdrawalHistoryState _self;
  final $Res Function(WithdrawalHistoryState) _then;

/// Create a copy of WithdrawalHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalCount = null,Object? page = null,Object? pageSize = null,Object? isLoadingMore = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<WithdrawalEntity>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WithdrawalHistoryState].
extension WithdrawalHistoryStatePatterns on WithdrawalHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WithdrawalHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WithdrawalHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WithdrawalHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _WithdrawalHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WithdrawalHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _WithdrawalHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WithdrawalEntity> items,  int totalCount,  int page,  int pageSize,  bool isLoadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WithdrawalHistoryState() when $default != null:
return $default(_that.items,_that.totalCount,_that.page,_that.pageSize,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WithdrawalEntity> items,  int totalCount,  int page,  int pageSize,  bool isLoadingMore)  $default,) {final _that = this;
switch (_that) {
case _WithdrawalHistoryState():
return $default(_that.items,_that.totalCount,_that.page,_that.pageSize,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WithdrawalEntity> items,  int totalCount,  int page,  int pageSize,  bool isLoadingMore)?  $default,) {final _that = this;
switch (_that) {
case _WithdrawalHistoryState() when $default != null:
return $default(_that.items,_that.totalCount,_that.page,_that.pageSize,_that.isLoadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _WithdrawalHistoryState implements WithdrawalHistoryState {
  const _WithdrawalHistoryState({final  List<WithdrawalEntity> items = const [], this.totalCount = 0, this.page = 1, this.pageSize = 20, this.isLoadingMore = false}): _items = items;
  

 final  List<WithdrawalEntity> _items;
@override@JsonKey() List<WithdrawalEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  int totalCount;
@override@JsonKey() final  int page;
@override@JsonKey() final  int pageSize;
@override@JsonKey() final  bool isLoadingMore;

/// Create a copy of WithdrawalHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithdrawalHistoryStateCopyWith<_WithdrawalHistoryState> get copyWith => __$WithdrawalHistoryStateCopyWithImpl<_WithdrawalHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithdrawalHistoryState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalCount,page,pageSize,isLoadingMore);

@override
String toString() {
  return 'WithdrawalHistoryState(items: $items, totalCount: $totalCount, page: $page, pageSize: $pageSize, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$WithdrawalHistoryStateCopyWith<$Res> implements $WithdrawalHistoryStateCopyWith<$Res> {
  factory _$WithdrawalHistoryStateCopyWith(_WithdrawalHistoryState value, $Res Function(_WithdrawalHistoryState) _then) = __$WithdrawalHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 List<WithdrawalEntity> items, int totalCount, int page, int pageSize, bool isLoadingMore
});




}
/// @nodoc
class __$WithdrawalHistoryStateCopyWithImpl<$Res>
    implements _$WithdrawalHistoryStateCopyWith<$Res> {
  __$WithdrawalHistoryStateCopyWithImpl(this._self, this._then);

  final _WithdrawalHistoryState _self;
  final $Res Function(_WithdrawalHistoryState) _then;

/// Create a copy of WithdrawalHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalCount = null,Object? page = null,Object? pageSize = null,Object? isLoadingMore = null,}) {
  return _then(_WithdrawalHistoryState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<WithdrawalEntity>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
