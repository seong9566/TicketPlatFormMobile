// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BalanceEntity {

 int get available; int get pending; int get totalEarned; int get totalWithdrawn;
/// Create a copy of BalanceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceEntityCopyWith<BalanceEntity> get copyWith => _$BalanceEntityCopyWithImpl<BalanceEntity>(this as BalanceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceEntity&&(identical(other.available, available) || other.available == available)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.totalEarned, totalEarned) || other.totalEarned == totalEarned)&&(identical(other.totalWithdrawn, totalWithdrawn) || other.totalWithdrawn == totalWithdrawn));
}


@override
int get hashCode => Object.hash(runtimeType,available,pending,totalEarned,totalWithdrawn);

@override
String toString() {
  return 'BalanceEntity(available: $available, pending: $pending, totalEarned: $totalEarned, totalWithdrawn: $totalWithdrawn)';
}


}

/// @nodoc
abstract mixin class $BalanceEntityCopyWith<$Res>  {
  factory $BalanceEntityCopyWith(BalanceEntity value, $Res Function(BalanceEntity) _then) = _$BalanceEntityCopyWithImpl;
@useResult
$Res call({
 int available, int pending, int totalEarned, int totalWithdrawn
});




}
/// @nodoc
class _$BalanceEntityCopyWithImpl<$Res>
    implements $BalanceEntityCopyWith<$Res> {
  _$BalanceEntityCopyWithImpl(this._self, this._then);

  final BalanceEntity _self;
  final $Res Function(BalanceEntity) _then;

/// Create a copy of BalanceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? available = null,Object? pending = null,Object? totalEarned = null,Object? totalWithdrawn = null,}) {
  return _then(_self.copyWith(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as int,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int,totalEarned: null == totalEarned ? _self.totalEarned : totalEarned // ignore: cast_nullable_to_non_nullable
as int,totalWithdrawn: null == totalWithdrawn ? _self.totalWithdrawn : totalWithdrawn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BalanceEntity].
extension BalanceEntityPatterns on BalanceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalanceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalanceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalanceEntity value)  $default,){
final _that = this;
switch (_that) {
case _BalanceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalanceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BalanceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int available,  int pending,  int totalEarned,  int totalWithdrawn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BalanceEntity() when $default != null:
return $default(_that.available,_that.pending,_that.totalEarned,_that.totalWithdrawn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int available,  int pending,  int totalEarned,  int totalWithdrawn)  $default,) {final _that = this;
switch (_that) {
case _BalanceEntity():
return $default(_that.available,_that.pending,_that.totalEarned,_that.totalWithdrawn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int available,  int pending,  int totalEarned,  int totalWithdrawn)?  $default,) {final _that = this;
switch (_that) {
case _BalanceEntity() when $default != null:
return $default(_that.available,_that.pending,_that.totalEarned,_that.totalWithdrawn);case _:
  return null;

}
}

}

/// @nodoc


class _BalanceEntity implements BalanceEntity {
  const _BalanceEntity({required this.available, required this.pending, required this.totalEarned, required this.totalWithdrawn});
  

@override final  int available;
@override final  int pending;
@override final  int totalEarned;
@override final  int totalWithdrawn;

/// Create a copy of BalanceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceEntityCopyWith<_BalanceEntity> get copyWith => __$BalanceEntityCopyWithImpl<_BalanceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceEntity&&(identical(other.available, available) || other.available == available)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.totalEarned, totalEarned) || other.totalEarned == totalEarned)&&(identical(other.totalWithdrawn, totalWithdrawn) || other.totalWithdrawn == totalWithdrawn));
}


@override
int get hashCode => Object.hash(runtimeType,available,pending,totalEarned,totalWithdrawn);

@override
String toString() {
  return 'BalanceEntity(available: $available, pending: $pending, totalEarned: $totalEarned, totalWithdrawn: $totalWithdrawn)';
}


}

/// @nodoc
abstract mixin class _$BalanceEntityCopyWith<$Res> implements $BalanceEntityCopyWith<$Res> {
  factory _$BalanceEntityCopyWith(_BalanceEntity value, $Res Function(_BalanceEntity) _then) = __$BalanceEntityCopyWithImpl;
@override @useResult
$Res call({
 int available, int pending, int totalEarned, int totalWithdrawn
});




}
/// @nodoc
class __$BalanceEntityCopyWithImpl<$Res>
    implements _$BalanceEntityCopyWith<$Res> {
  __$BalanceEntityCopyWithImpl(this._self, this._then);

  final _BalanceEntity _self;
  final $Res Function(_BalanceEntity) _then;

/// Create a copy of BalanceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? available = null,Object? pending = null,Object? totalEarned = null,Object? totalWithdrawn = null,}) {
  return _then(_BalanceEntity(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as int,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int,totalEarned: null == totalEarned ? _self.totalEarned : totalEarned // ignore: cast_nullable_to_non_nullable
as int,totalWithdrawn: null == totalWithdrawn ? _self.totalWithdrawn : totalWithdrawn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
