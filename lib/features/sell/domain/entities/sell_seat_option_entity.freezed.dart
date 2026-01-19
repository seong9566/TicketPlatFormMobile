// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_seat_option_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellSeatGradeEntity {

 int get gradeId; String get code; String get gradeName;
/// Create a copy of SellSeatGradeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatGradeEntityCopyWith<SellSeatGradeEntity> get copyWith => _$SellSeatGradeEntityCopyWithImpl<SellSeatGradeEntity>(this as SellSeatGradeEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatGradeEntity&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.code, code) || other.code == code)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName));
}


@override
int get hashCode => Object.hash(runtimeType,gradeId,code,gradeName);

@override
String toString() {
  return 'SellSeatGradeEntity(gradeId: $gradeId, code: $code, gradeName: $gradeName)';
}


}

/// @nodoc
abstract mixin class $SellSeatGradeEntityCopyWith<$Res>  {
  factory $SellSeatGradeEntityCopyWith(SellSeatGradeEntity value, $Res Function(SellSeatGradeEntity) _then) = _$SellSeatGradeEntityCopyWithImpl;
@useResult
$Res call({
 int gradeId, String code, String gradeName
});




}
/// @nodoc
class _$SellSeatGradeEntityCopyWithImpl<$Res>
    implements $SellSeatGradeEntityCopyWith<$Res> {
  _$SellSeatGradeEntityCopyWithImpl(this._self, this._then);

  final SellSeatGradeEntity _self;
  final $Res Function(SellSeatGradeEntity) _then;

/// Create a copy of SellSeatGradeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gradeId = null,Object? code = null,Object? gradeName = null,}) {
  return _then(_self.copyWith(
gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellSeatGradeEntity].
extension SellSeatGradeEntityPatterns on SellSeatGradeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatGradeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatGradeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatGradeEntity value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatGradeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatGradeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatGradeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int gradeId,  String code,  String gradeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellSeatGradeEntity() when $default != null:
return $default(_that.gradeId,_that.code,_that.gradeName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int gradeId,  String code,  String gradeName)  $default,) {final _that = this;
switch (_that) {
case _SellSeatGradeEntity():
return $default(_that.gradeId,_that.code,_that.gradeName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int gradeId,  String code,  String gradeName)?  $default,) {final _that = this;
switch (_that) {
case _SellSeatGradeEntity() when $default != null:
return $default(_that.gradeId,_that.code,_that.gradeName);case _:
  return null;

}
}

}

/// @nodoc


class _SellSeatGradeEntity implements SellSeatGradeEntity {
  const _SellSeatGradeEntity({required this.gradeId, required this.code, required this.gradeName});
  

@override final  int gradeId;
@override final  String code;
@override final  String gradeName;

/// Create a copy of SellSeatGradeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatGradeEntityCopyWith<_SellSeatGradeEntity> get copyWith => __$SellSeatGradeEntityCopyWithImpl<_SellSeatGradeEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatGradeEntity&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.code, code) || other.code == code)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName));
}


@override
int get hashCode => Object.hash(runtimeType,gradeId,code,gradeName);

@override
String toString() {
  return 'SellSeatGradeEntity(gradeId: $gradeId, code: $code, gradeName: $gradeName)';
}


}

/// @nodoc
abstract mixin class _$SellSeatGradeEntityCopyWith<$Res> implements $SellSeatGradeEntityCopyWith<$Res> {
  factory _$SellSeatGradeEntityCopyWith(_SellSeatGradeEntity value, $Res Function(_SellSeatGradeEntity) _then) = __$SellSeatGradeEntityCopyWithImpl;
@override @useResult
$Res call({
 int gradeId, String code, String gradeName
});




}
/// @nodoc
class __$SellSeatGradeEntityCopyWithImpl<$Res>
    implements _$SellSeatGradeEntityCopyWith<$Res> {
  __$SellSeatGradeEntityCopyWithImpl(this._self, this._then);

  final _SellSeatGradeEntity _self;
  final $Res Function(_SellSeatGradeEntity) _then;

/// Create a copy of SellSeatGradeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gradeId = null,Object? code = null,Object? gradeName = null,}) {
  return _then(_SellSeatGradeEntity(
gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SellSeatLocationEntity {

 int get locationId; String get locationName;
/// Create a copy of SellSeatLocationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatLocationEntityCopyWith<SellSeatLocationEntity> get copyWith => _$SellSeatLocationEntityCopyWithImpl<SellSeatLocationEntity>(this as SellSeatLocationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatLocationEntity&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName));
}


@override
int get hashCode => Object.hash(runtimeType,locationId,locationName);

@override
String toString() {
  return 'SellSeatLocationEntity(locationId: $locationId, locationName: $locationName)';
}


}

/// @nodoc
abstract mixin class $SellSeatLocationEntityCopyWith<$Res>  {
  factory $SellSeatLocationEntityCopyWith(SellSeatLocationEntity value, $Res Function(SellSeatLocationEntity) _then) = _$SellSeatLocationEntityCopyWithImpl;
@useResult
$Res call({
 int locationId, String locationName
});




}
/// @nodoc
class _$SellSeatLocationEntityCopyWithImpl<$Res>
    implements $SellSeatLocationEntityCopyWith<$Res> {
  _$SellSeatLocationEntityCopyWithImpl(this._self, this._then);

  final SellSeatLocationEntity _self;
  final $Res Function(SellSeatLocationEntity) _then;

/// Create a copy of SellSeatLocationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locationId = null,Object? locationName = null,}) {
  return _then(_self.copyWith(
locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellSeatLocationEntity].
extension SellSeatLocationEntityPatterns on SellSeatLocationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatLocationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatLocationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatLocationEntity value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatLocationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatLocationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatLocationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int locationId,  String locationName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellSeatLocationEntity() when $default != null:
return $default(_that.locationId,_that.locationName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int locationId,  String locationName)  $default,) {final _that = this;
switch (_that) {
case _SellSeatLocationEntity():
return $default(_that.locationId,_that.locationName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int locationId,  String locationName)?  $default,) {final _that = this;
switch (_that) {
case _SellSeatLocationEntity() when $default != null:
return $default(_that.locationId,_that.locationName);case _:
  return null;

}
}

}

/// @nodoc


class _SellSeatLocationEntity implements SellSeatLocationEntity {
  const _SellSeatLocationEntity({required this.locationId, required this.locationName});
  

@override final  int locationId;
@override final  String locationName;

/// Create a copy of SellSeatLocationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatLocationEntityCopyWith<_SellSeatLocationEntity> get copyWith => __$SellSeatLocationEntityCopyWithImpl<_SellSeatLocationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatLocationEntity&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName));
}


@override
int get hashCode => Object.hash(runtimeType,locationId,locationName);

@override
String toString() {
  return 'SellSeatLocationEntity(locationId: $locationId, locationName: $locationName)';
}


}

/// @nodoc
abstract mixin class _$SellSeatLocationEntityCopyWith<$Res> implements $SellSeatLocationEntityCopyWith<$Res> {
  factory _$SellSeatLocationEntityCopyWith(_SellSeatLocationEntity value, $Res Function(_SellSeatLocationEntity) _then) = __$SellSeatLocationEntityCopyWithImpl;
@override @useResult
$Res call({
 int locationId, String locationName
});




}
/// @nodoc
class __$SellSeatLocationEntityCopyWithImpl<$Res>
    implements _$SellSeatLocationEntityCopyWith<$Res> {
  __$SellSeatLocationEntityCopyWithImpl(this._self, this._then);

  final _SellSeatLocationEntity _self;
  final $Res Function(_SellSeatLocationEntity) _then;

/// Create a copy of SellSeatLocationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locationId = null,Object? locationName = null,}) {
  return _then(_SellSeatLocationEntity(
locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SellSeatAreaEntity {

 int get areaId; String get areaName;
/// Create a copy of SellSeatAreaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatAreaEntityCopyWith<SellSeatAreaEntity> get copyWith => _$SellSeatAreaEntityCopyWithImpl<SellSeatAreaEntity>(this as SellSeatAreaEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatAreaEntity&&(identical(other.areaId, areaId) || other.areaId == areaId)&&(identical(other.areaName, areaName) || other.areaName == areaName));
}


@override
int get hashCode => Object.hash(runtimeType,areaId,areaName);

@override
String toString() {
  return 'SellSeatAreaEntity(areaId: $areaId, areaName: $areaName)';
}


}

/// @nodoc
abstract mixin class $SellSeatAreaEntityCopyWith<$Res>  {
  factory $SellSeatAreaEntityCopyWith(SellSeatAreaEntity value, $Res Function(SellSeatAreaEntity) _then) = _$SellSeatAreaEntityCopyWithImpl;
@useResult
$Res call({
 int areaId, String areaName
});




}
/// @nodoc
class _$SellSeatAreaEntityCopyWithImpl<$Res>
    implements $SellSeatAreaEntityCopyWith<$Res> {
  _$SellSeatAreaEntityCopyWithImpl(this._self, this._then);

  final SellSeatAreaEntity _self;
  final $Res Function(SellSeatAreaEntity) _then;

/// Create a copy of SellSeatAreaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? areaId = null,Object? areaName = null,}) {
  return _then(_self.copyWith(
areaId: null == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int,areaName: null == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellSeatAreaEntity].
extension SellSeatAreaEntityPatterns on SellSeatAreaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatAreaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatAreaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatAreaEntity value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatAreaEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatAreaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatAreaEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int areaId,  String areaName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellSeatAreaEntity() when $default != null:
return $default(_that.areaId,_that.areaName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int areaId,  String areaName)  $default,) {final _that = this;
switch (_that) {
case _SellSeatAreaEntity():
return $default(_that.areaId,_that.areaName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int areaId,  String areaName)?  $default,) {final _that = this;
switch (_that) {
case _SellSeatAreaEntity() when $default != null:
return $default(_that.areaId,_that.areaName);case _:
  return null;

}
}

}

/// @nodoc


class _SellSeatAreaEntity implements SellSeatAreaEntity {
  const _SellSeatAreaEntity({required this.areaId, required this.areaName});
  

@override final  int areaId;
@override final  String areaName;

/// Create a copy of SellSeatAreaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatAreaEntityCopyWith<_SellSeatAreaEntity> get copyWith => __$SellSeatAreaEntityCopyWithImpl<_SellSeatAreaEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatAreaEntity&&(identical(other.areaId, areaId) || other.areaId == areaId)&&(identical(other.areaName, areaName) || other.areaName == areaName));
}


@override
int get hashCode => Object.hash(runtimeType,areaId,areaName);

@override
String toString() {
  return 'SellSeatAreaEntity(areaId: $areaId, areaName: $areaName)';
}


}

/// @nodoc
abstract mixin class _$SellSeatAreaEntityCopyWith<$Res> implements $SellSeatAreaEntityCopyWith<$Res> {
  factory _$SellSeatAreaEntityCopyWith(_SellSeatAreaEntity value, $Res Function(_SellSeatAreaEntity) _then) = __$SellSeatAreaEntityCopyWithImpl;
@override @useResult
$Res call({
 int areaId, String areaName
});




}
/// @nodoc
class __$SellSeatAreaEntityCopyWithImpl<$Res>
    implements _$SellSeatAreaEntityCopyWith<$Res> {
  __$SellSeatAreaEntityCopyWithImpl(this._self, this._then);

  final _SellSeatAreaEntity _self;
  final $Res Function(_SellSeatAreaEntity) _then;

/// Create a copy of SellSeatAreaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? areaId = null,Object? areaName = null,}) {
  return _then(_SellSeatAreaEntity(
areaId: null == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int,areaName: null == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SellSeatOptionsEntity {

 List<SellSeatGradeEntity> get grades; List<SellSeatLocationEntity> get locations; List<SellSeatAreaEntity> get areas; bool get allowCustomLocation;
/// Create a copy of SellSeatOptionsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatOptionsEntityCopyWith<SellSeatOptionsEntity> get copyWith => _$SellSeatOptionsEntityCopyWithImpl<SellSeatOptionsEntity>(this as SellSeatOptionsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatOptionsEntity&&const DeepCollectionEquality().equals(other.grades, grades)&&const DeepCollectionEquality().equals(other.locations, locations)&&const DeepCollectionEquality().equals(other.areas, areas)&&(identical(other.allowCustomLocation, allowCustomLocation) || other.allowCustomLocation == allowCustomLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(grades),const DeepCollectionEquality().hash(locations),const DeepCollectionEquality().hash(areas),allowCustomLocation);

@override
String toString() {
  return 'SellSeatOptionsEntity(grades: $grades, locations: $locations, areas: $areas, allowCustomLocation: $allowCustomLocation)';
}


}

/// @nodoc
abstract mixin class $SellSeatOptionsEntityCopyWith<$Res>  {
  factory $SellSeatOptionsEntityCopyWith(SellSeatOptionsEntity value, $Res Function(SellSeatOptionsEntity) _then) = _$SellSeatOptionsEntityCopyWithImpl;
@useResult
$Res call({
 List<SellSeatGradeEntity> grades, List<SellSeatLocationEntity> locations, List<SellSeatAreaEntity> areas, bool allowCustomLocation
});




}
/// @nodoc
class _$SellSeatOptionsEntityCopyWithImpl<$Res>
    implements $SellSeatOptionsEntityCopyWith<$Res> {
  _$SellSeatOptionsEntityCopyWithImpl(this._self, this._then);

  final SellSeatOptionsEntity _self;
  final $Res Function(SellSeatOptionsEntity) _then;

/// Create a copy of SellSeatOptionsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? grades = null,Object? locations = null,Object? areas = null,Object? allowCustomLocation = null,}) {
  return _then(_self.copyWith(
grades: null == grades ? _self.grades : grades // ignore: cast_nullable_to_non_nullable
as List<SellSeatGradeEntity>,locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<SellSeatLocationEntity>,areas: null == areas ? _self.areas : areas // ignore: cast_nullable_to_non_nullable
as List<SellSeatAreaEntity>,allowCustomLocation: null == allowCustomLocation ? _self.allowCustomLocation : allowCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SellSeatOptionsEntity].
extension SellSeatOptionsEntityPatterns on SellSeatOptionsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatOptionsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatOptionsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatOptionsEntity value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatOptionsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatOptionsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatOptionsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellSeatGradeEntity> grades,  List<SellSeatLocationEntity> locations,  List<SellSeatAreaEntity> areas,  bool allowCustomLocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellSeatOptionsEntity() when $default != null:
return $default(_that.grades,_that.locations,_that.areas,_that.allowCustomLocation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellSeatGradeEntity> grades,  List<SellSeatLocationEntity> locations,  List<SellSeatAreaEntity> areas,  bool allowCustomLocation)  $default,) {final _that = this;
switch (_that) {
case _SellSeatOptionsEntity():
return $default(_that.grades,_that.locations,_that.areas,_that.allowCustomLocation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellSeatGradeEntity> grades,  List<SellSeatLocationEntity> locations,  List<SellSeatAreaEntity> areas,  bool allowCustomLocation)?  $default,) {final _that = this;
switch (_that) {
case _SellSeatOptionsEntity() when $default != null:
return $default(_that.grades,_that.locations,_that.areas,_that.allowCustomLocation);case _:
  return null;

}
}

}

/// @nodoc


class _SellSeatOptionsEntity implements SellSeatOptionsEntity {
  const _SellSeatOptionsEntity({required final  List<SellSeatGradeEntity> grades, required final  List<SellSeatLocationEntity> locations, required final  List<SellSeatAreaEntity> areas, required this.allowCustomLocation}): _grades = grades,_locations = locations,_areas = areas;
  

 final  List<SellSeatGradeEntity> _grades;
@override List<SellSeatGradeEntity> get grades {
  if (_grades is EqualUnmodifiableListView) return _grades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_grades);
}

 final  List<SellSeatLocationEntity> _locations;
@override List<SellSeatLocationEntity> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}

 final  List<SellSeatAreaEntity> _areas;
@override List<SellSeatAreaEntity> get areas {
  if (_areas is EqualUnmodifiableListView) return _areas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_areas);
}

@override final  bool allowCustomLocation;

/// Create a copy of SellSeatOptionsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatOptionsEntityCopyWith<_SellSeatOptionsEntity> get copyWith => __$SellSeatOptionsEntityCopyWithImpl<_SellSeatOptionsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatOptionsEntity&&const DeepCollectionEquality().equals(other._grades, _grades)&&const DeepCollectionEquality().equals(other._locations, _locations)&&const DeepCollectionEquality().equals(other._areas, _areas)&&(identical(other.allowCustomLocation, allowCustomLocation) || other.allowCustomLocation == allowCustomLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_grades),const DeepCollectionEquality().hash(_locations),const DeepCollectionEquality().hash(_areas),allowCustomLocation);

@override
String toString() {
  return 'SellSeatOptionsEntity(grades: $grades, locations: $locations, areas: $areas, allowCustomLocation: $allowCustomLocation)';
}


}

/// @nodoc
abstract mixin class _$SellSeatOptionsEntityCopyWith<$Res> implements $SellSeatOptionsEntityCopyWith<$Res> {
  factory _$SellSeatOptionsEntityCopyWith(_SellSeatOptionsEntity value, $Res Function(_SellSeatOptionsEntity) _then) = __$SellSeatOptionsEntityCopyWithImpl;
@override @useResult
$Res call({
 List<SellSeatGradeEntity> grades, List<SellSeatLocationEntity> locations, List<SellSeatAreaEntity> areas, bool allowCustomLocation
});




}
/// @nodoc
class __$SellSeatOptionsEntityCopyWithImpl<$Res>
    implements _$SellSeatOptionsEntityCopyWith<$Res> {
  __$SellSeatOptionsEntityCopyWithImpl(this._self, this._then);

  final _SellSeatOptionsEntity _self;
  final $Res Function(_SellSeatOptionsEntity) _then;

/// Create a copy of SellSeatOptionsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? grades = null,Object? locations = null,Object? areas = null,Object? allowCustomLocation = null,}) {
  return _then(_SellSeatOptionsEntity(
grades: null == grades ? _self._grades : grades // ignore: cast_nullable_to_non_nullable
as List<SellSeatGradeEntity>,locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<SellSeatLocationEntity>,areas: null == areas ? _self._areas : areas // ignore: cast_nullable_to_non_nullable
as List<SellSeatAreaEntity>,allowCustomLocation: null == allowCustomLocation ? _self.allowCustomLocation : allowCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
