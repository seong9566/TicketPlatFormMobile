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
mixin _$SellSeatLocationRespDto {

 String get locationId; String get locationName;
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
 String locationId, String locationName
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
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String locationId,  String locationName)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String locationId,  String locationName)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String locationId,  String locationName)?  $default,) {final _that = this;
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

@override final  String locationId;
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
 String locationId, String locationName
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
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SellSeatOptionsRespDto {

 List<SellSeatLocationRespDto> get locations; bool get allowCustomLocation;
/// Create a copy of SellSeatOptionsRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatOptionsRespDtoCopyWith<SellSeatOptionsRespDto> get copyWith => _$SellSeatOptionsRespDtoCopyWithImpl<SellSeatOptionsRespDto>(this as SellSeatOptionsRespDto, _$identity);

  /// Serializes this SellSeatOptionsRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatOptionsRespDto&&const DeepCollectionEquality().equals(other.locations, locations)&&(identical(other.allowCustomLocation, allowCustomLocation) || other.allowCustomLocation == allowCustomLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(locations),allowCustomLocation);

@override
String toString() {
  return 'SellSeatOptionsRespDto(locations: $locations, allowCustomLocation: $allowCustomLocation)';
}


}

/// @nodoc
abstract mixin class $SellSeatOptionsRespDtoCopyWith<$Res>  {
  factory $SellSeatOptionsRespDtoCopyWith(SellSeatOptionsRespDto value, $Res Function(SellSeatOptionsRespDto) _then) = _$SellSeatOptionsRespDtoCopyWithImpl;
@useResult
$Res call({
 List<SellSeatLocationRespDto> locations, bool allowCustomLocation
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
@pragma('vm:prefer-inline') @override $Res call({Object? locations = null,Object? allowCustomLocation = null,}) {
  return _then(_self.copyWith(
locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<SellSeatLocationRespDto>,allowCustomLocation: null == allowCustomLocation ? _self.allowCustomLocation : allowCustomLocation // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellSeatLocationRespDto> locations,  bool allowCustomLocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellSeatOptionsRespDto() when $default != null:
return $default(_that.locations,_that.allowCustomLocation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellSeatLocationRespDto> locations,  bool allowCustomLocation)  $default,) {final _that = this;
switch (_that) {
case _SellSeatOptionsRespDto():
return $default(_that.locations,_that.allowCustomLocation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellSeatLocationRespDto> locations,  bool allowCustomLocation)?  $default,) {final _that = this;
switch (_that) {
case _SellSeatOptionsRespDto() when $default != null:
return $default(_that.locations,_that.allowCustomLocation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellSeatOptionsRespDto implements SellSeatOptionsRespDto {
  const _SellSeatOptionsRespDto({required final  List<SellSeatLocationRespDto> locations, required this.allowCustomLocation}): _locations = locations;
  factory _SellSeatOptionsRespDto.fromJson(Map<String, dynamic> json) => _$SellSeatOptionsRespDtoFromJson(json);

 final  List<SellSeatLocationRespDto> _locations;
@override List<SellSeatLocationRespDto> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatOptionsRespDto&&const DeepCollectionEquality().equals(other._locations, _locations)&&(identical(other.allowCustomLocation, allowCustomLocation) || other.allowCustomLocation == allowCustomLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_locations),allowCustomLocation);

@override
String toString() {
  return 'SellSeatOptionsRespDto(locations: $locations, allowCustomLocation: $allowCustomLocation)';
}


}

/// @nodoc
abstract mixin class _$SellSeatOptionsRespDtoCopyWith<$Res> implements $SellSeatOptionsRespDtoCopyWith<$Res> {
  factory _$SellSeatOptionsRespDtoCopyWith(_SellSeatOptionsRespDto value, $Res Function(_SellSeatOptionsRespDto) _then) = __$SellSeatOptionsRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<SellSeatLocationRespDto> locations, bool allowCustomLocation
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
@override @pragma('vm:prefer-inline') $Res call({Object? locations = null,Object? allowCustomLocation = null,}) {
  return _then(_SellSeatOptionsRespDto(
locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<SellSeatLocationRespDto>,allowCustomLocation: null == allowCustomLocation ? _self.allowCustomLocation : allowCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
