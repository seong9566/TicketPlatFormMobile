// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_trade_method_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SellTradeMethodRespDto {

 int get id; String get code; String get nameKo; String? get nameEn; String? get description;
/// Create a copy of SellTradeMethodRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellTradeMethodRespDtoCopyWith<SellTradeMethodRespDto> get copyWith => _$SellTradeMethodRespDtoCopyWithImpl<SellTradeMethodRespDto>(this as SellTradeMethodRespDto, _$identity);

  /// Serializes this SellTradeMethodRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellTradeMethodRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,nameKo,nameEn,description);

@override
String toString() {
  return 'SellTradeMethodRespDto(id: $id, code: $code, nameKo: $nameKo, nameEn: $nameEn, description: $description)';
}


}

/// @nodoc
abstract mixin class $SellTradeMethodRespDtoCopyWith<$Res>  {
  factory $SellTradeMethodRespDtoCopyWith(SellTradeMethodRespDto value, $Res Function(SellTradeMethodRespDto) _then) = _$SellTradeMethodRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, String code, String nameKo, String? nameEn, String? description
});




}
/// @nodoc
class _$SellTradeMethodRespDtoCopyWithImpl<$Res>
    implements $SellTradeMethodRespDtoCopyWith<$Res> {
  _$SellTradeMethodRespDtoCopyWithImpl(this._self, this._then);

  final SellTradeMethodRespDto _self;
  final $Res Function(SellTradeMethodRespDto) _then;

/// Create a copy of SellTradeMethodRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? nameKo = null,Object? nameEn = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SellTradeMethodRespDto].
extension SellTradeMethodRespDtoPatterns on SellTradeMethodRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellTradeMethodRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellTradeMethodRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellTradeMethodRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellTradeMethodRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellTradeMethodRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellTradeMethodRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String code,  String nameKo,  String? nameEn,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellTradeMethodRespDto() when $default != null:
return $default(_that.id,_that.code,_that.nameKo,_that.nameEn,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String code,  String nameKo,  String? nameEn,  String? description)  $default,) {final _that = this;
switch (_that) {
case _SellTradeMethodRespDto():
return $default(_that.id,_that.code,_that.nameKo,_that.nameEn,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String code,  String nameKo,  String? nameEn,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _SellTradeMethodRespDto() when $default != null:
return $default(_that.id,_that.code,_that.nameKo,_that.nameEn,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellTradeMethodRespDto implements SellTradeMethodRespDto {
  const _SellTradeMethodRespDto({required this.id, required this.code, required this.nameKo, this.nameEn, this.description});
  factory _SellTradeMethodRespDto.fromJson(Map<String, dynamic> json) => _$SellTradeMethodRespDtoFromJson(json);

@override final  int id;
@override final  String code;
@override final  String nameKo;
@override final  String? nameEn;
@override final  String? description;

/// Create a copy of SellTradeMethodRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellTradeMethodRespDtoCopyWith<_SellTradeMethodRespDto> get copyWith => __$SellTradeMethodRespDtoCopyWithImpl<_SellTradeMethodRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellTradeMethodRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellTradeMethodRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,nameKo,nameEn,description);

@override
String toString() {
  return 'SellTradeMethodRespDto(id: $id, code: $code, nameKo: $nameKo, nameEn: $nameEn, description: $description)';
}


}

/// @nodoc
abstract mixin class _$SellTradeMethodRespDtoCopyWith<$Res> implements $SellTradeMethodRespDtoCopyWith<$Res> {
  factory _$SellTradeMethodRespDtoCopyWith(_SellTradeMethodRespDto value, $Res Function(_SellTradeMethodRespDto) _then) = __$SellTradeMethodRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String code, String nameKo, String? nameEn, String? description
});




}
/// @nodoc
class __$SellTradeMethodRespDtoCopyWithImpl<$Res>
    implements _$SellTradeMethodRespDtoCopyWith<$Res> {
  __$SellTradeMethodRespDtoCopyWithImpl(this._self, this._then);

  final _SellTradeMethodRespDto _self;
  final $Res Function(_SellTradeMethodRespDto) _then;

/// Create a copy of SellTradeMethodRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? nameKo = null,Object? nameEn = freezed,Object? description = freezed,}) {
  return _then(_SellTradeMethodRespDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
