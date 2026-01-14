// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellCategoryEntity {

 int get categoryId; String get code; String get name; String? get iconUrl;
/// Create a copy of SellCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellCategoryEntityCopyWith<SellCategoryEntity> get copyWith => _$SellCategoryEntityCopyWithImpl<SellCategoryEntity>(this as SellCategoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellCategoryEntity&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,code,name,iconUrl);

@override
String toString() {
  return 'SellCategoryEntity(categoryId: $categoryId, code: $code, name: $name, iconUrl: $iconUrl)';
}


}

/// @nodoc
abstract mixin class $SellCategoryEntityCopyWith<$Res>  {
  factory $SellCategoryEntityCopyWith(SellCategoryEntity value, $Res Function(SellCategoryEntity) _then) = _$SellCategoryEntityCopyWithImpl;
@useResult
$Res call({
 int categoryId, String code, String name, String? iconUrl
});




}
/// @nodoc
class _$SellCategoryEntityCopyWithImpl<$Res>
    implements $SellCategoryEntityCopyWith<$Res> {
  _$SellCategoryEntityCopyWithImpl(this._self, this._then);

  final SellCategoryEntity _self;
  final $Res Function(SellCategoryEntity) _then;

/// Create a copy of SellCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,Object? code = null,Object? name = null,Object? iconUrl = freezed,}) {
  return _then(_self.copyWith(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SellCategoryEntity].
extension SellCategoryEntityPatterns on SellCategoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellCategoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellCategoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _SellCategoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellCategoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SellCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int categoryId,  String code,  String name,  String? iconUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellCategoryEntity() when $default != null:
return $default(_that.categoryId,_that.code,_that.name,_that.iconUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int categoryId,  String code,  String name,  String? iconUrl)  $default,) {final _that = this;
switch (_that) {
case _SellCategoryEntity():
return $default(_that.categoryId,_that.code,_that.name,_that.iconUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int categoryId,  String code,  String name,  String? iconUrl)?  $default,) {final _that = this;
switch (_that) {
case _SellCategoryEntity() when $default != null:
return $default(_that.categoryId,_that.code,_that.name,_that.iconUrl);case _:
  return null;

}
}

}

/// @nodoc


class _SellCategoryEntity implements SellCategoryEntity {
  const _SellCategoryEntity({required this.categoryId, required this.code, required this.name, this.iconUrl});
  

@override final  int categoryId;
@override final  String code;
@override final  String name;
@override final  String? iconUrl;

/// Create a copy of SellCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellCategoryEntityCopyWith<_SellCategoryEntity> get copyWith => __$SellCategoryEntityCopyWithImpl<_SellCategoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellCategoryEntity&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,code,name,iconUrl);

@override
String toString() {
  return 'SellCategoryEntity(categoryId: $categoryId, code: $code, name: $name, iconUrl: $iconUrl)';
}


}

/// @nodoc
abstract mixin class _$SellCategoryEntityCopyWith<$Res> implements $SellCategoryEntityCopyWith<$Res> {
  factory _$SellCategoryEntityCopyWith(_SellCategoryEntity value, $Res Function(_SellCategoryEntity) _then) = __$SellCategoryEntityCopyWithImpl;
@override @useResult
$Res call({
 int categoryId, String code, String name, String? iconUrl
});




}
/// @nodoc
class __$SellCategoryEntityCopyWithImpl<$Res>
    implements _$SellCategoryEntityCopyWith<$Res> {
  __$SellCategoryEntityCopyWithImpl(this._self, this._then);

  final _SellCategoryEntity _self;
  final $Res Function(_SellCategoryEntity) _then;

/// Create a copy of SellCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? code = null,Object? name = null,Object? iconUrl = freezed,}) {
  return _then(_SellCategoryEntity(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
