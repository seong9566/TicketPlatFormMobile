// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionListEntity {

 List<TransactionHistoryEntity> get items; String? get nextCursor; bool get hasMore; int? get totalCount;
/// Create a copy of TransactionListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionListEntityCopyWith<TransactionListEntity> get copyWith => _$TransactionListEntityCopyWithImpl<TransactionListEntity>(this as TransactionListEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionListEntity&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor,hasMore,totalCount);

@override
String toString() {
  return 'TransactionListEntity(items: $items, nextCursor: $nextCursor, hasMore: $hasMore, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $TransactionListEntityCopyWith<$Res>  {
  factory $TransactionListEntityCopyWith(TransactionListEntity value, $Res Function(TransactionListEntity) _then) = _$TransactionListEntityCopyWithImpl;
@useResult
$Res call({
 List<TransactionHistoryEntity> items, String? nextCursor, bool hasMore, int? totalCount
});




}
/// @nodoc
class _$TransactionListEntityCopyWithImpl<$Res>
    implements $TransactionListEntityCopyWith<$Res> {
  _$TransactionListEntityCopyWithImpl(this._self, this._then);

  final TransactionListEntity _self;
  final $Res Function(TransactionListEntity) _then;

/// Create a copy of TransactionListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,Object? totalCount = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<TransactionHistoryEntity>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionListEntity].
extension TransactionListEntityPatterns on TransactionListEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionListEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionListEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionListEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransactionListEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionListEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionListEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TransactionHistoryEntity> items,  String? nextCursor,  bool hasMore,  int? totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionListEntity() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.totalCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TransactionHistoryEntity> items,  String? nextCursor,  bool hasMore,  int? totalCount)  $default,) {final _that = this;
switch (_that) {
case _TransactionListEntity():
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.totalCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TransactionHistoryEntity> items,  String? nextCursor,  bool hasMore,  int? totalCount)?  $default,) {final _that = this;
switch (_that) {
case _TransactionListEntity() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionListEntity implements TransactionListEntity {
  const _TransactionListEntity({final  List<TransactionHistoryEntity> items = const [], this.nextCursor, this.hasMore = false, this.totalCount}): _items = items;
  

 final  List<TransactionHistoryEntity> _items;
@override@JsonKey() List<TransactionHistoryEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool hasMore;
@override final  int? totalCount;

/// Create a copy of TransactionListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionListEntityCopyWith<_TransactionListEntity> get copyWith => __$TransactionListEntityCopyWithImpl<_TransactionListEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionListEntity&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,hasMore,totalCount);

@override
String toString() {
  return 'TransactionListEntity(items: $items, nextCursor: $nextCursor, hasMore: $hasMore, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$TransactionListEntityCopyWith<$Res> implements $TransactionListEntityCopyWith<$Res> {
  factory _$TransactionListEntityCopyWith(_TransactionListEntity value, $Res Function(_TransactionListEntity) _then) = __$TransactionListEntityCopyWithImpl;
@override @useResult
$Res call({
 List<TransactionHistoryEntity> items, String? nextCursor, bool hasMore, int? totalCount
});




}
/// @nodoc
class __$TransactionListEntityCopyWithImpl<$Res>
    implements _$TransactionListEntityCopyWith<$Res> {
  __$TransactionListEntityCopyWithImpl(this._self, this._then);

  final _TransactionListEntity _self;
  final $Res Function(_TransactionListEntity) _then;

/// Create a copy of TransactionListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,Object? totalCount = freezed,}) {
  return _then(_TransactionListEntity(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<TransactionHistoryEntity>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
