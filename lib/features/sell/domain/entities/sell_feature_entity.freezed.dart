// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_feature_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellFeatureEntity {

 int get id; String get code; String get nameKo;
/// Create a copy of SellFeatureEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellFeatureEntityCopyWith<SellFeatureEntity> get copyWith => _$SellFeatureEntityCopyWithImpl<SellFeatureEntity>(this as SellFeatureEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellFeatureEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo));
}


@override
int get hashCode => Object.hash(runtimeType,id,code,nameKo);

@override
String toString() {
  return 'SellFeatureEntity(id: $id, code: $code, nameKo: $nameKo)';
}


}

/// @nodoc
abstract mixin class $SellFeatureEntityCopyWith<$Res>  {
  factory $SellFeatureEntityCopyWith(SellFeatureEntity value, $Res Function(SellFeatureEntity) _then) = _$SellFeatureEntityCopyWithImpl;
@useResult
$Res call({
 int id, String code, String nameKo
});




}
/// @nodoc
class _$SellFeatureEntityCopyWithImpl<$Res>
    implements $SellFeatureEntityCopyWith<$Res> {
  _$SellFeatureEntityCopyWithImpl(this._self, this._then);

  final SellFeatureEntity _self;
  final $Res Function(SellFeatureEntity) _then;

/// Create a copy of SellFeatureEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? nameKo = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellFeatureEntity].
extension SellFeatureEntityPatterns on SellFeatureEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellFeatureEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellFeatureEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellFeatureEntity value)  $default,){
final _that = this;
switch (_that) {
case _SellFeatureEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellFeatureEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SellFeatureEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String code,  String nameKo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellFeatureEntity() when $default != null:
return $default(_that.id,_that.code,_that.nameKo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String code,  String nameKo)  $default,) {final _that = this;
switch (_that) {
case _SellFeatureEntity():
return $default(_that.id,_that.code,_that.nameKo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String code,  String nameKo)?  $default,) {final _that = this;
switch (_that) {
case _SellFeatureEntity() when $default != null:
return $default(_that.id,_that.code,_that.nameKo);case _:
  return null;

}
}

}

/// @nodoc


class _SellFeatureEntity implements SellFeatureEntity {
  const _SellFeatureEntity({required this.id, required this.code, required this.nameKo});
  

@override final  int id;
@override final  String code;
@override final  String nameKo;

/// Create a copy of SellFeatureEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellFeatureEntityCopyWith<_SellFeatureEntity> get copyWith => __$SellFeatureEntityCopyWithImpl<_SellFeatureEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellFeatureEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo));
}


@override
int get hashCode => Object.hash(runtimeType,id,code,nameKo);

@override
String toString() {
  return 'SellFeatureEntity(id: $id, code: $code, nameKo: $nameKo)';
}


}

/// @nodoc
abstract mixin class _$SellFeatureEntityCopyWith<$Res> implements $SellFeatureEntityCopyWith<$Res> {
  factory _$SellFeatureEntityCopyWith(_SellFeatureEntity value, $Res Function(_SellFeatureEntity) _then) = __$SellFeatureEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String code, String nameKo
});




}
/// @nodoc
class __$SellFeatureEntityCopyWithImpl<$Res>
    implements _$SellFeatureEntityCopyWith<$Res> {
  __$SellFeatureEntityCopyWithImpl(this._self, this._then);

  final _SellFeatureEntity _self;
  final $Res Function(_SellFeatureEntity) _then;

/// Create a copy of SellFeatureEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? nameKo = null,}) {
  return _then(_SellFeatureEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
