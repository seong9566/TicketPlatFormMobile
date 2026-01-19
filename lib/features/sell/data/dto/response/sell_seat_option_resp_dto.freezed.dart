// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_seat_option_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SellSeatGradeRespDto {

 int get gradeId; String get code; String get gradeName;
/// Create a copy of SellSeatGradeRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatGradeRespDtoCopyWith<SellSeatGradeRespDto> get copyWith => _$SellSeatGradeRespDtoCopyWithImpl<SellSeatGradeRespDto>(this as SellSeatGradeRespDto, _$identity);

  /// Serializes this SellSeatGradeRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatGradeRespDto&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.code, code) || other.code == code)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gradeId,code,gradeName);

@override
String toString() {
  return 'SellSeatGradeRespDto(gradeId: $gradeId, code: $code, gradeName: $gradeName)';
}


}

/// @nodoc
abstract mixin class $SellSeatGradeRespDtoCopyWith<$Res>  {
  factory $SellSeatGradeRespDtoCopyWith(SellSeatGradeRespDto value, $Res Function(SellSeatGradeRespDto) _then) = _$SellSeatGradeRespDtoCopyWithImpl;
@useResult
$Res call({
 int gradeId, String code, String gradeName
});




}
/// @nodoc
class _$SellSeatGradeRespDtoCopyWithImpl<$Res>
    implements $SellSeatGradeRespDtoCopyWith<$Res> {
  _$SellSeatGradeRespDtoCopyWithImpl(this._self, this._then);

  final SellSeatGradeRespDto _self;
  final $Res Function(SellSeatGradeRespDto) _then;

/// Create a copy of SellSeatGradeRespDto
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


/// Adds pattern-matching-related methods to [SellSeatGradeRespDto].
extension SellSeatGradeRespDtoPatterns on SellSeatGradeRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatGradeRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatGradeRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatGradeRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatGradeRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatGradeRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatGradeRespDto() when $default != null:
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
case _SellSeatGradeRespDto() when $default != null:
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
case _SellSeatGradeRespDto():
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
case _SellSeatGradeRespDto() when $default != null:
return $default(_that.gradeId,_that.code,_that.gradeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellSeatGradeRespDto implements SellSeatGradeRespDto {
  const _SellSeatGradeRespDto({required this.gradeId, required this.code, required this.gradeName});
  factory _SellSeatGradeRespDto.fromJson(Map<String, dynamic> json) => _$SellSeatGradeRespDtoFromJson(json);

@override final  int gradeId;
@override final  String code;
@override final  String gradeName;

/// Create a copy of SellSeatGradeRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatGradeRespDtoCopyWith<_SellSeatGradeRespDto> get copyWith => __$SellSeatGradeRespDtoCopyWithImpl<_SellSeatGradeRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellSeatGradeRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatGradeRespDto&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.code, code) || other.code == code)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gradeId,code,gradeName);

@override
String toString() {
  return 'SellSeatGradeRespDto(gradeId: $gradeId, code: $code, gradeName: $gradeName)';
}


}

/// @nodoc
abstract mixin class _$SellSeatGradeRespDtoCopyWith<$Res> implements $SellSeatGradeRespDtoCopyWith<$Res> {
  factory _$SellSeatGradeRespDtoCopyWith(_SellSeatGradeRespDto value, $Res Function(_SellSeatGradeRespDto) _then) = __$SellSeatGradeRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int gradeId, String code, String gradeName
});




}
/// @nodoc
class __$SellSeatGradeRespDtoCopyWithImpl<$Res>
    implements _$SellSeatGradeRespDtoCopyWith<$Res> {
  __$SellSeatGradeRespDtoCopyWithImpl(this._self, this._then);

  final _SellSeatGradeRespDto _self;
  final $Res Function(_SellSeatGradeRespDto) _then;

/// Create a copy of SellSeatGradeRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gradeId = null,Object? code = null,Object? gradeName = null,}) {
  return _then(_SellSeatGradeRespDto(
gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SellSeatLocationRespDto {

 int get locationId; String get locationName;
/// Create a copy of SellSeatLocationRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatLocationRespDtoCopyWith<SellSeatLocationRespDto> get copyWith => _$SellSeatLocationRespDtoCopyWithImpl<SellSeatLocationRespDto>(this as SellSeatLocationRespDto, _$identity);

  /// Serializes this SellSeatLocationRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatLocationRespDto&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locationId,locationName);

@override
String toString() {
  return 'SellSeatLocationRespDto(locationId: $locationId, locationName: $locationName)';
}


}

/// @nodoc
abstract mixin class $SellSeatLocationRespDtoCopyWith<$Res>  {
  factory $SellSeatLocationRespDtoCopyWith(SellSeatLocationRespDto value, $Res Function(SellSeatLocationRespDto) _then) = _$SellSeatLocationRespDtoCopyWithImpl;
@useResult
$Res call({
 int locationId, String locationName
});




}
/// @nodoc
class _$SellSeatLocationRespDtoCopyWithImpl<$Res>
    implements $SellSeatLocationRespDtoCopyWith<$Res> {
  _$SellSeatLocationRespDtoCopyWithImpl(this._self, this._then);

  final SellSeatLocationRespDto _self;
  final $Res Function(SellSeatLocationRespDto) _then;

/// Create a copy of SellSeatLocationRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locationId = null,Object? locationName = null,}) {
  return _then(_self.copyWith(
locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellSeatLocationRespDto].
extension SellSeatLocationRespDtoPatterns on SellSeatLocationRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatLocationRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatLocationRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatLocationRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatLocationRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatLocationRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatLocationRespDto() when $default != null:
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
case _SellSeatLocationRespDto() when $default != null:
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
case _SellSeatLocationRespDto():
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
case _SellSeatLocationRespDto() when $default != null:
return $default(_that.locationId,_that.locationName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellSeatLocationRespDto implements SellSeatLocationRespDto {
  const _SellSeatLocationRespDto({required this.locationId, required this.locationName});
  factory _SellSeatLocationRespDto.fromJson(Map<String, dynamic> json) => _$SellSeatLocationRespDtoFromJson(json);

@override final  int locationId;
@override final  String locationName;

/// Create a copy of SellSeatLocationRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatLocationRespDtoCopyWith<_SellSeatLocationRespDto> get copyWith => __$SellSeatLocationRespDtoCopyWithImpl<_SellSeatLocationRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellSeatLocationRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatLocationRespDto&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locationId,locationName);

@override
String toString() {
  return 'SellSeatLocationRespDto(locationId: $locationId, locationName: $locationName)';
}


}

/// @nodoc
abstract mixin class _$SellSeatLocationRespDtoCopyWith<$Res> implements $SellSeatLocationRespDtoCopyWith<$Res> {
  factory _$SellSeatLocationRespDtoCopyWith(_SellSeatLocationRespDto value, $Res Function(_SellSeatLocationRespDto) _then) = __$SellSeatLocationRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int locationId, String locationName
});




}
/// @nodoc
class __$SellSeatLocationRespDtoCopyWithImpl<$Res>
    implements _$SellSeatLocationRespDtoCopyWith<$Res> {
  __$SellSeatLocationRespDtoCopyWithImpl(this._self, this._then);

  final _SellSeatLocationRespDto _self;
  final $Res Function(_SellSeatLocationRespDto) _then;

/// Create a copy of SellSeatLocationRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locationId = null,Object? locationName = null,}) {
  return _then(_SellSeatLocationRespDto(
locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SellSeatAreaRespDto {

 int get areaId; String get areaName;
/// Create a copy of SellSeatAreaRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatAreaRespDtoCopyWith<SellSeatAreaRespDto> get copyWith => _$SellSeatAreaRespDtoCopyWithImpl<SellSeatAreaRespDto>(this as SellSeatAreaRespDto, _$identity);

  /// Serializes this SellSeatAreaRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatAreaRespDto&&(identical(other.areaId, areaId) || other.areaId == areaId)&&(identical(other.areaName, areaName) || other.areaName == areaName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,areaId,areaName);

@override
String toString() {
  return 'SellSeatAreaRespDto(areaId: $areaId, areaName: $areaName)';
}


}

/// @nodoc
abstract mixin class $SellSeatAreaRespDtoCopyWith<$Res>  {
  factory $SellSeatAreaRespDtoCopyWith(SellSeatAreaRespDto value, $Res Function(SellSeatAreaRespDto) _then) = _$SellSeatAreaRespDtoCopyWithImpl;
@useResult
$Res call({
 int areaId, String areaName
});




}
/// @nodoc
class _$SellSeatAreaRespDtoCopyWithImpl<$Res>
    implements $SellSeatAreaRespDtoCopyWith<$Res> {
  _$SellSeatAreaRespDtoCopyWithImpl(this._self, this._then);

  final SellSeatAreaRespDto _self;
  final $Res Function(SellSeatAreaRespDto) _then;

/// Create a copy of SellSeatAreaRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? areaId = null,Object? areaName = null,}) {
  return _then(_self.copyWith(
areaId: null == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int,areaName: null == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellSeatAreaRespDto].
extension SellSeatAreaRespDtoPatterns on SellSeatAreaRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatAreaRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatAreaRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatAreaRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatAreaRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatAreaRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatAreaRespDto() when $default != null:
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
case _SellSeatAreaRespDto() when $default != null:
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
case _SellSeatAreaRespDto():
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
case _SellSeatAreaRespDto() when $default != null:
return $default(_that.areaId,_that.areaName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellSeatAreaRespDto implements SellSeatAreaRespDto {
  const _SellSeatAreaRespDto({required this.areaId, required this.areaName});
  factory _SellSeatAreaRespDto.fromJson(Map<String, dynamic> json) => _$SellSeatAreaRespDtoFromJson(json);

@override final  int areaId;
@override final  String areaName;

/// Create a copy of SellSeatAreaRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatAreaRespDtoCopyWith<_SellSeatAreaRespDto> get copyWith => __$SellSeatAreaRespDtoCopyWithImpl<_SellSeatAreaRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellSeatAreaRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatAreaRespDto&&(identical(other.areaId, areaId) || other.areaId == areaId)&&(identical(other.areaName, areaName) || other.areaName == areaName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,areaId,areaName);

@override
String toString() {
  return 'SellSeatAreaRespDto(areaId: $areaId, areaName: $areaName)';
}


}

/// @nodoc
abstract mixin class _$SellSeatAreaRespDtoCopyWith<$Res> implements $SellSeatAreaRespDtoCopyWith<$Res> {
  factory _$SellSeatAreaRespDtoCopyWith(_SellSeatAreaRespDto value, $Res Function(_SellSeatAreaRespDto) _then) = __$SellSeatAreaRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int areaId, String areaName
});




}
/// @nodoc
class __$SellSeatAreaRespDtoCopyWithImpl<$Res>
    implements _$SellSeatAreaRespDtoCopyWith<$Res> {
  __$SellSeatAreaRespDtoCopyWithImpl(this._self, this._then);

  final _SellSeatAreaRespDto _self;
  final $Res Function(_SellSeatAreaRespDto) _then;

/// Create a copy of SellSeatAreaRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? areaId = null,Object? areaName = null,}) {
  return _then(_SellSeatAreaRespDto(
areaId: null == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int,areaName: null == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SellSeatOptionsRespDto {

 List<SellSeatGradeRespDto> get grades; List<SellSeatLocationRespDto> get locations; List<SellSeatAreaRespDto> get areas; bool get allowCustomLocation;
/// Create a copy of SellSeatOptionsRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatOptionsRespDtoCopyWith<SellSeatOptionsRespDto> get copyWith => _$SellSeatOptionsRespDtoCopyWithImpl<SellSeatOptionsRespDto>(this as SellSeatOptionsRespDto, _$identity);

  /// Serializes this SellSeatOptionsRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatOptionsRespDto&&const DeepCollectionEquality().equals(other.grades, grades)&&const DeepCollectionEquality().equals(other.locations, locations)&&const DeepCollectionEquality().equals(other.areas, areas)&&(identical(other.allowCustomLocation, allowCustomLocation) || other.allowCustomLocation == allowCustomLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(grades),const DeepCollectionEquality().hash(locations),const DeepCollectionEquality().hash(areas),allowCustomLocation);

@override
String toString() {
  return 'SellSeatOptionsRespDto(grades: $grades, locations: $locations, areas: $areas, allowCustomLocation: $allowCustomLocation)';
}


}

/// @nodoc
abstract mixin class $SellSeatOptionsRespDtoCopyWith<$Res>  {
  factory $SellSeatOptionsRespDtoCopyWith(SellSeatOptionsRespDto value, $Res Function(SellSeatOptionsRespDto) _then) = _$SellSeatOptionsRespDtoCopyWithImpl;
@useResult
$Res call({
 List<SellSeatGradeRespDto> grades, List<SellSeatLocationRespDto> locations, List<SellSeatAreaRespDto> areas, bool allowCustomLocation
});




}
/// @nodoc
class _$SellSeatOptionsRespDtoCopyWithImpl<$Res>
    implements $SellSeatOptionsRespDtoCopyWith<$Res> {
  _$SellSeatOptionsRespDtoCopyWithImpl(this._self, this._then);

  final SellSeatOptionsRespDto _self;
  final $Res Function(SellSeatOptionsRespDto) _then;

/// Create a copy of SellSeatOptionsRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? grades = null,Object? locations = null,Object? areas = null,Object? allowCustomLocation = null,}) {
  return _then(_self.copyWith(
grades: null == grades ? _self.grades : grades // ignore: cast_nullable_to_non_nullable
as List<SellSeatGradeRespDto>,locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<SellSeatLocationRespDto>,areas: null == areas ? _self.areas : areas // ignore: cast_nullable_to_non_nullable
as List<SellSeatAreaRespDto>,allowCustomLocation: null == allowCustomLocation ? _self.allowCustomLocation : allowCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SellSeatOptionsRespDto].
extension SellSeatOptionsRespDtoPatterns on SellSeatOptionsRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatOptionsRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatOptionsRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatOptionsRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatOptionsRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatOptionsRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatOptionsRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellSeatGradeRespDto> grades,  List<SellSeatLocationRespDto> locations,  List<SellSeatAreaRespDto> areas,  bool allowCustomLocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellSeatOptionsRespDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellSeatGradeRespDto> grades,  List<SellSeatLocationRespDto> locations,  List<SellSeatAreaRespDto> areas,  bool allowCustomLocation)  $default,) {final _that = this;
switch (_that) {
case _SellSeatOptionsRespDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellSeatGradeRespDto> grades,  List<SellSeatLocationRespDto> locations,  List<SellSeatAreaRespDto> areas,  bool allowCustomLocation)?  $default,) {final _that = this;
switch (_that) {
case _SellSeatOptionsRespDto() when $default != null:
return $default(_that.grades,_that.locations,_that.areas,_that.allowCustomLocation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellSeatOptionsRespDto implements SellSeatOptionsRespDto {
  const _SellSeatOptionsRespDto({required final  List<SellSeatGradeRespDto> grades, required final  List<SellSeatLocationRespDto> locations, required final  List<SellSeatAreaRespDto> areas, required this.allowCustomLocation}): _grades = grades,_locations = locations,_areas = areas;
  factory _SellSeatOptionsRespDto.fromJson(Map<String, dynamic> json) => _$SellSeatOptionsRespDtoFromJson(json);

 final  List<SellSeatGradeRespDto> _grades;
@override List<SellSeatGradeRespDto> get grades {
  if (_grades is EqualUnmodifiableListView) return _grades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_grades);
}

 final  List<SellSeatLocationRespDto> _locations;
@override List<SellSeatLocationRespDto> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}

 final  List<SellSeatAreaRespDto> _areas;
@override List<SellSeatAreaRespDto> get areas {
  if (_areas is EqualUnmodifiableListView) return _areas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_areas);
}

@override final  bool allowCustomLocation;

/// Create a copy of SellSeatOptionsRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatOptionsRespDtoCopyWith<_SellSeatOptionsRespDto> get copyWith => __$SellSeatOptionsRespDtoCopyWithImpl<_SellSeatOptionsRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellSeatOptionsRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatOptionsRespDto&&const DeepCollectionEquality().equals(other._grades, _grades)&&const DeepCollectionEquality().equals(other._locations, _locations)&&const DeepCollectionEquality().equals(other._areas, _areas)&&(identical(other.allowCustomLocation, allowCustomLocation) || other.allowCustomLocation == allowCustomLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_grades),const DeepCollectionEquality().hash(_locations),const DeepCollectionEquality().hash(_areas),allowCustomLocation);

@override
String toString() {
  return 'SellSeatOptionsRespDto(grades: $grades, locations: $locations, areas: $areas, allowCustomLocation: $allowCustomLocation)';
}


}

/// @nodoc
abstract mixin class _$SellSeatOptionsRespDtoCopyWith<$Res> implements $SellSeatOptionsRespDtoCopyWith<$Res> {
  factory _$SellSeatOptionsRespDtoCopyWith(_SellSeatOptionsRespDto value, $Res Function(_SellSeatOptionsRespDto) _then) = __$SellSeatOptionsRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<SellSeatGradeRespDto> grades, List<SellSeatLocationRespDto> locations, List<SellSeatAreaRespDto> areas, bool allowCustomLocation
});




}
/// @nodoc
class __$SellSeatOptionsRespDtoCopyWithImpl<$Res>
    implements _$SellSeatOptionsRespDtoCopyWith<$Res> {
  __$SellSeatOptionsRespDtoCopyWithImpl(this._self, this._then);

  final _SellSeatOptionsRespDto _self;
  final $Res Function(_SellSeatOptionsRespDto) _then;

/// Create a copy of SellSeatOptionsRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? grades = null,Object? locations = null,Object? areas = null,Object? allowCustomLocation = null,}) {
  return _then(_SellSeatOptionsRespDto(
grades: null == grades ? _self._grades : grades // ignore: cast_nullable_to_non_nullable
as List<SellSeatGradeRespDto>,locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<SellSeatLocationRespDto>,areas: null == areas ? _self._areas : areas // ignore: cast_nullable_to_non_nullable
as List<SellSeatAreaRespDto>,allowCustomLocation: null == allowCustomLocation ? _self.allowCustomLocation : allowCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
