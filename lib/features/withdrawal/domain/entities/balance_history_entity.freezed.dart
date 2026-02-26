// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BalanceHistoryEntity {

 List<BalanceTransactionEntity> get items; int get totalCount; int get page; int get pageSize;
/// Create a copy of BalanceHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceHistoryEntityCopyWith<BalanceHistoryEntity> get copyWith => _$BalanceHistoryEntityCopyWithImpl<BalanceHistoryEntity>(this as BalanceHistoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceHistoryEntity&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalCount,page,pageSize);

@override
String toString() {
  return 'BalanceHistoryEntity(items: $items, totalCount: $totalCount, page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class $BalanceHistoryEntityCopyWith<$Res>  {
  factory $BalanceHistoryEntityCopyWith(BalanceHistoryEntity value, $Res Function(BalanceHistoryEntity) _then) = _$BalanceHistoryEntityCopyWithImpl;
@useResult
$Res call({
 List<BalanceTransactionEntity> items, int totalCount, int page, int pageSize
});




}
/// @nodoc
class _$BalanceHistoryEntityCopyWithImpl<$Res>
    implements $BalanceHistoryEntityCopyWith<$Res> {
  _$BalanceHistoryEntityCopyWithImpl(this._self, this._then);

  final BalanceHistoryEntity _self;
  final $Res Function(BalanceHistoryEntity) _then;

/// Create a copy of BalanceHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalCount = null,Object? page = null,Object? pageSize = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<BalanceTransactionEntity>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BalanceHistoryEntity].
extension BalanceHistoryEntityPatterns on BalanceHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalanceHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalanceHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalanceHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _BalanceHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalanceHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BalanceHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BalanceTransactionEntity> items,  int totalCount,  int page,  int pageSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BalanceHistoryEntity() when $default != null:
return $default(_that.items,_that.totalCount,_that.page,_that.pageSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BalanceTransactionEntity> items,  int totalCount,  int page,  int pageSize)  $default,) {final _that = this;
switch (_that) {
case _BalanceHistoryEntity():
return $default(_that.items,_that.totalCount,_that.page,_that.pageSize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BalanceTransactionEntity> items,  int totalCount,  int page,  int pageSize)?  $default,) {final _that = this;
switch (_that) {
case _BalanceHistoryEntity() when $default != null:
return $default(_that.items,_that.totalCount,_that.page,_that.pageSize);case _:
  return null;

}
}

}

/// @nodoc


class _BalanceHistoryEntity implements BalanceHistoryEntity {
  const _BalanceHistoryEntity({final  List<BalanceTransactionEntity> items = const [], required this.totalCount, required this.page, required this.pageSize}): _items = items;
  

 final  List<BalanceTransactionEntity> _items;
@override@JsonKey() List<BalanceTransactionEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int totalCount;
@override final  int page;
@override final  int pageSize;

/// Create a copy of BalanceHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceHistoryEntityCopyWith<_BalanceHistoryEntity> get copyWith => __$BalanceHistoryEntityCopyWithImpl<_BalanceHistoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceHistoryEntity&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalCount,page,pageSize);

@override
String toString() {
  return 'BalanceHistoryEntity(items: $items, totalCount: $totalCount, page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class _$BalanceHistoryEntityCopyWith<$Res> implements $BalanceHistoryEntityCopyWith<$Res> {
  factory _$BalanceHistoryEntityCopyWith(_BalanceHistoryEntity value, $Res Function(_BalanceHistoryEntity) _then) = __$BalanceHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 List<BalanceTransactionEntity> items, int totalCount, int page, int pageSize
});




}
/// @nodoc
class __$BalanceHistoryEntityCopyWithImpl<$Res>
    implements _$BalanceHistoryEntityCopyWith<$Res> {
  __$BalanceHistoryEntityCopyWithImpl(this._self, this._then);

  final _BalanceHistoryEntity _self;
  final $Res Function(_BalanceHistoryEntity) _then;

/// Create a copy of BalanceHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalCount = null,Object? page = null,Object? pageSize = null,}) {
  return _then(_BalanceHistoryEntity(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<BalanceTransactionEntity>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
