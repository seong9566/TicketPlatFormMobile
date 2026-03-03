// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_list_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettlementListRespDto {

 List<SettlementRespDto> get settlements; int get totalCount; int get totalNetAmount;
/// Create a copy of SettlementListRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementListRespDtoCopyWith<SettlementListRespDto> get copyWith => _$SettlementListRespDtoCopyWithImpl<SettlementListRespDto>(this as SettlementListRespDto, _$identity);

  /// Serializes this SettlementListRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementListRespDto&&const DeepCollectionEquality().equals(other.settlements, settlements)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalNetAmount, totalNetAmount) || other.totalNetAmount == totalNetAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(settlements),totalCount,totalNetAmount);

@override
String toString() {
  return 'SettlementListRespDto(settlements: $settlements, totalCount: $totalCount, totalNetAmount: $totalNetAmount)';
}


}

/// @nodoc
abstract mixin class $SettlementListRespDtoCopyWith<$Res>  {
  factory $SettlementListRespDtoCopyWith(SettlementListRespDto value, $Res Function(SettlementListRespDto) _then) = _$SettlementListRespDtoCopyWithImpl;
@useResult
$Res call({
 List<SettlementRespDto> settlements, int totalCount, int totalNetAmount
});




}
/// @nodoc
class _$SettlementListRespDtoCopyWithImpl<$Res>
    implements $SettlementListRespDtoCopyWith<$Res> {
  _$SettlementListRespDtoCopyWithImpl(this._self, this._then);

  final SettlementListRespDto _self;
  final $Res Function(SettlementListRespDto) _then;

/// Create a copy of SettlementListRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settlements = null,Object? totalCount = null,Object? totalNetAmount = null,}) {
  return _then(_self.copyWith(
settlements: null == settlements ? _self.settlements : settlements // ignore: cast_nullable_to_non_nullable
as List<SettlementRespDto>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,totalNetAmount: null == totalNetAmount ? _self.totalNetAmount : totalNetAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SettlementListRespDto].
extension SettlementListRespDtoPatterns on SettlementListRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettlementListRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettlementListRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettlementListRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SettlementListRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettlementListRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SettlementListRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SettlementRespDto> settlements,  int totalCount,  int totalNetAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettlementListRespDto() when $default != null:
return $default(_that.settlements,_that.totalCount,_that.totalNetAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SettlementRespDto> settlements,  int totalCount,  int totalNetAmount)  $default,) {final _that = this;
switch (_that) {
case _SettlementListRespDto():
return $default(_that.settlements,_that.totalCount,_that.totalNetAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SettlementRespDto> settlements,  int totalCount,  int totalNetAmount)?  $default,) {final _that = this;
switch (_that) {
case _SettlementListRespDto() when $default != null:
return $default(_that.settlements,_that.totalCount,_that.totalNetAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettlementListRespDto implements SettlementListRespDto {
  const _SettlementListRespDto({final  List<SettlementRespDto> settlements = const [], required this.totalCount, required this.totalNetAmount}): _settlements = settlements;
  factory _SettlementListRespDto.fromJson(Map<String, dynamic> json) => _$SettlementListRespDtoFromJson(json);

 final  List<SettlementRespDto> _settlements;
@override@JsonKey() List<SettlementRespDto> get settlements {
  if (_settlements is EqualUnmodifiableListView) return _settlements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_settlements);
}

@override final  int totalCount;
@override final  int totalNetAmount;

/// Create a copy of SettlementListRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettlementListRespDtoCopyWith<_SettlementListRespDto> get copyWith => __$SettlementListRespDtoCopyWithImpl<_SettlementListRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettlementListRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettlementListRespDto&&const DeepCollectionEquality().equals(other._settlements, _settlements)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalNetAmount, totalNetAmount) || other.totalNetAmount == totalNetAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_settlements),totalCount,totalNetAmount);

@override
String toString() {
  return 'SettlementListRespDto(settlements: $settlements, totalCount: $totalCount, totalNetAmount: $totalNetAmount)';
}


}

/// @nodoc
abstract mixin class _$SettlementListRespDtoCopyWith<$Res> implements $SettlementListRespDtoCopyWith<$Res> {
  factory _$SettlementListRespDtoCopyWith(_SettlementListRespDto value, $Res Function(_SettlementListRespDto) _then) = __$SettlementListRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<SettlementRespDto> settlements, int totalCount, int totalNetAmount
});




}
/// @nodoc
class __$SettlementListRespDtoCopyWithImpl<$Res>
    implements _$SettlementListRespDtoCopyWith<$Res> {
  __$SettlementListRespDtoCopyWithImpl(this._self, this._then);

  final _SettlementListRespDto _self;
  final $Res Function(_SettlementListRespDto) _then;

/// Create a copy of SettlementListRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settlements = null,Object? totalCount = null,Object? totalNetAmount = null,}) {
  return _then(_SettlementListRespDto(
settlements: null == settlements ? _self._settlements : settlements // ignore: cast_nullable_to_non_nullable
as List<SettlementRespDto>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,totalNetAmount: null == totalNetAmount ? _self.totalNetAmount : totalNetAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
