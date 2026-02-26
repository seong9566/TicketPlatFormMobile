// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BalanceRespDto {

 int get available; int get pending; int get totalEarned; int get totalWithdrawn;
/// Create a copy of BalanceRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceRespDtoCopyWith<BalanceRespDto> get copyWith => _$BalanceRespDtoCopyWithImpl<BalanceRespDto>(this as BalanceRespDto, _$identity);

  /// Serializes this BalanceRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceRespDto&&(identical(other.available, available) || other.available == available)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.totalEarned, totalEarned) || other.totalEarned == totalEarned)&&(identical(other.totalWithdrawn, totalWithdrawn) || other.totalWithdrawn == totalWithdrawn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,available,pending,totalEarned,totalWithdrawn);

@override
String toString() {
  return 'BalanceRespDto(available: $available, pending: $pending, totalEarned: $totalEarned, totalWithdrawn: $totalWithdrawn)';
}


}

/// @nodoc
abstract mixin class $BalanceRespDtoCopyWith<$Res>  {
  factory $BalanceRespDtoCopyWith(BalanceRespDto value, $Res Function(BalanceRespDto) _then) = _$BalanceRespDtoCopyWithImpl;
@useResult
$Res call({
 int available, int pending, int totalEarned, int totalWithdrawn
});




}
/// @nodoc
class _$BalanceRespDtoCopyWithImpl<$Res>
    implements $BalanceRespDtoCopyWith<$Res> {
  _$BalanceRespDtoCopyWithImpl(this._self, this._then);

  final BalanceRespDto _self;
  final $Res Function(BalanceRespDto) _then;

/// Create a copy of BalanceRespDto
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


/// Adds pattern-matching-related methods to [BalanceRespDto].
extension BalanceRespDtoPatterns on BalanceRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalanceRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalanceRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalanceRespDto value)  $default,){
final _that = this;
switch (_that) {
case _BalanceRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalanceRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _BalanceRespDto() when $default != null:
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
case _BalanceRespDto() when $default != null:
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
case _BalanceRespDto():
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
case _BalanceRespDto() when $default != null:
return $default(_that.available,_that.pending,_that.totalEarned,_that.totalWithdrawn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BalanceRespDto implements BalanceRespDto {
  const _BalanceRespDto({required this.available, required this.pending, required this.totalEarned, required this.totalWithdrawn});
  factory _BalanceRespDto.fromJson(Map<String, dynamic> json) => _$BalanceRespDtoFromJson(json);

@override final  int available;
@override final  int pending;
@override final  int totalEarned;
@override final  int totalWithdrawn;

/// Create a copy of BalanceRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceRespDtoCopyWith<_BalanceRespDto> get copyWith => __$BalanceRespDtoCopyWithImpl<_BalanceRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BalanceRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceRespDto&&(identical(other.available, available) || other.available == available)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.totalEarned, totalEarned) || other.totalEarned == totalEarned)&&(identical(other.totalWithdrawn, totalWithdrawn) || other.totalWithdrawn == totalWithdrawn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,available,pending,totalEarned,totalWithdrawn);

@override
String toString() {
  return 'BalanceRespDto(available: $available, pending: $pending, totalEarned: $totalEarned, totalWithdrawn: $totalWithdrawn)';
}


}

/// @nodoc
abstract mixin class _$BalanceRespDtoCopyWith<$Res> implements $BalanceRespDtoCopyWith<$Res> {
  factory _$BalanceRespDtoCopyWith(_BalanceRespDto value, $Res Function(_BalanceRespDto) _then) = __$BalanceRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int available, int pending, int totalEarned, int totalWithdrawn
});




}
/// @nodoc
class __$BalanceRespDtoCopyWithImpl<$Res>
    implements _$BalanceRespDtoCopyWith<$Res> {
  __$BalanceRespDtoCopyWithImpl(this._self, this._then);

  final _BalanceRespDto _self;
  final $Res Function(_BalanceRespDto) _then;

/// Create a copy of BalanceRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? available = null,Object? pending = null,Object? totalEarned = null,Object? totalWithdrawn = null,}) {
  return _then(_BalanceRespDto(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as int,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as int,totalEarned: null == totalEarned ? _self.totalEarned : totalEarned // ignore: cast_nullable_to_non_nullable
as int,totalWithdrawn: null == totalWithdrawn ? _self.totalWithdrawn : totalWithdrawn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
