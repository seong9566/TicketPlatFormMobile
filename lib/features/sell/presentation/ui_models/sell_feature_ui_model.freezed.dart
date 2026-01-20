// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_feature_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellFeatureUiModel {

 int get id; String get code; String get nameKo;
/// Create a copy of SellFeatureUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellFeatureUiModelCopyWith<SellFeatureUiModel> get copyWith => _$SellFeatureUiModelCopyWithImpl<SellFeatureUiModel>(this as SellFeatureUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellFeatureUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo));
}


@override
int get hashCode => Object.hash(runtimeType,id,code,nameKo);

@override
String toString() {
  return 'SellFeatureUiModel(id: $id, code: $code, nameKo: $nameKo)';
}


}

/// @nodoc
abstract mixin class $SellFeatureUiModelCopyWith<$Res>  {
  factory $SellFeatureUiModelCopyWith(SellFeatureUiModel value, $Res Function(SellFeatureUiModel) _then) = _$SellFeatureUiModelCopyWithImpl;
@useResult
$Res call({
 int id, String code, String nameKo
});




}
/// @nodoc
class _$SellFeatureUiModelCopyWithImpl<$Res>
    implements $SellFeatureUiModelCopyWith<$Res> {
  _$SellFeatureUiModelCopyWithImpl(this._self, this._then);

  final SellFeatureUiModel _self;
  final $Res Function(SellFeatureUiModel) _then;

/// Create a copy of SellFeatureUiModel
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


/// Adds pattern-matching-related methods to [SellFeatureUiModel].
extension SellFeatureUiModelPatterns on SellFeatureUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellFeatureUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellFeatureUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellFeatureUiModel value)  $default,){
final _that = this;
switch (_that) {
case _SellFeatureUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellFeatureUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _SellFeatureUiModel() when $default != null:
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
case _SellFeatureUiModel() when $default != null:
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
case _SellFeatureUiModel():
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
case _SellFeatureUiModel() when $default != null:
return $default(_that.id,_that.code,_that.nameKo);case _:
  return null;

}
}

}

/// @nodoc


class _SellFeatureUiModel implements SellFeatureUiModel {
  const _SellFeatureUiModel({required this.id, required this.code, required this.nameKo});
  

@override final  int id;
@override final  String code;
@override final  String nameKo;

/// Create a copy of SellFeatureUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellFeatureUiModelCopyWith<_SellFeatureUiModel> get copyWith => __$SellFeatureUiModelCopyWithImpl<_SellFeatureUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellFeatureUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo));
}


@override
int get hashCode => Object.hash(runtimeType,id,code,nameKo);

@override
String toString() {
  return 'SellFeatureUiModel(id: $id, code: $code, nameKo: $nameKo)';
}


}

/// @nodoc
abstract mixin class _$SellFeatureUiModelCopyWith<$Res> implements $SellFeatureUiModelCopyWith<$Res> {
  factory _$SellFeatureUiModelCopyWith(_SellFeatureUiModel value, $Res Function(_SellFeatureUiModel) _then) = __$SellFeatureUiModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String code, String nameKo
});




}
/// @nodoc
class __$SellFeatureUiModelCopyWithImpl<$Res>
    implements _$SellFeatureUiModelCopyWith<$Res> {
  __$SellFeatureUiModelCopyWithImpl(this._self, this._then);

  final _SellFeatureUiModel _self;
  final $Res Function(_SellFeatureUiModel) _then;

/// Create a copy of SellFeatureUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? nameKo = null,}) {
  return _then(_SellFeatureUiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
