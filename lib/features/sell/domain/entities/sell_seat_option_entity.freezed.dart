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
mixin _$SellSeatLocationEntity {

 String get locationId; String get locationName;
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
 String locationId, String locationName
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
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String locationId,  String locationName)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String locationId,  String locationName)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String locationId,  String locationName)?  $default,) {final _that = this;
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
  

@override final  String locationId;
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
 String locationId, String locationName
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
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SellSeatOptionsEntity {

 List<SellSeatLocationEntity> get locations; bool get allowCustomLocation;
/// Create a copy of SellSeatOptionsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatOptionsEntityCopyWith<SellSeatOptionsEntity> get copyWith => _$SellSeatOptionsEntityCopyWithImpl<SellSeatOptionsEntity>(this as SellSeatOptionsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatOptionsEntity&&const DeepCollectionEquality().equals(other.locations, locations)&&(identical(other.allowCustomLocation, allowCustomLocation) || other.allowCustomLocation == allowCustomLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(locations),allowCustomLocation);

@override
String toString() {
  return 'SellSeatOptionsEntity(locations: $locations, allowCustomLocation: $allowCustomLocation)';
}


}

/// @nodoc
abstract mixin class $SellSeatOptionsEntityCopyWith<$Res>  {
  factory $SellSeatOptionsEntityCopyWith(SellSeatOptionsEntity value, $Res Function(SellSeatOptionsEntity) _then) = _$SellSeatOptionsEntityCopyWithImpl;
@useResult
$Res call({
 List<SellSeatLocationEntity> locations, bool allowCustomLocation
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
@pragma('vm:prefer-inline') @override $Res call({Object? locations = null,Object? allowCustomLocation = null,}) {
  return _then(_self.copyWith(
locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<SellSeatLocationEntity>,allowCustomLocation: null == allowCustomLocation ? _self.allowCustomLocation : allowCustomLocation // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellSeatLocationEntity> locations,  bool allowCustomLocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellSeatOptionsEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellSeatLocationEntity> locations,  bool allowCustomLocation)  $default,) {final _that = this;
switch (_that) {
case _SellSeatOptionsEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellSeatLocationEntity> locations,  bool allowCustomLocation)?  $default,) {final _that = this;
switch (_that) {
case _SellSeatOptionsEntity() when $default != null:
return $default(_that.locations,_that.allowCustomLocation);case _:
  return null;

}
}

}

/// @nodoc


class _SellSeatOptionsEntity implements SellSeatOptionsEntity {
  const _SellSeatOptionsEntity({required final  List<SellSeatLocationEntity> locations, required this.allowCustomLocation}): _locations = locations;
  

 final  List<SellSeatLocationEntity> _locations;
@override List<SellSeatLocationEntity> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}

@override final  bool allowCustomLocation;

/// Create a copy of SellSeatOptionsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatOptionsEntityCopyWith<_SellSeatOptionsEntity> get copyWith => __$SellSeatOptionsEntityCopyWithImpl<_SellSeatOptionsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatOptionsEntity&&const DeepCollectionEquality().equals(other._locations, _locations)&&(identical(other.allowCustomLocation, allowCustomLocation) || other.allowCustomLocation == allowCustomLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_locations),allowCustomLocation);

@override
String toString() {
  return 'SellSeatOptionsEntity(locations: $locations, allowCustomLocation: $allowCustomLocation)';
}


}

/// @nodoc
abstract mixin class _$SellSeatOptionsEntityCopyWith<$Res> implements $SellSeatOptionsEntityCopyWith<$Res> {
  factory _$SellSeatOptionsEntityCopyWith(_SellSeatOptionsEntity value, $Res Function(_SellSeatOptionsEntity) _then) = __$SellSeatOptionsEntityCopyWithImpl;
@override @useResult
$Res call({
 List<SellSeatLocationEntity> locations, bool allowCustomLocation
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
@override @pragma('vm:prefer-inline') $Res call({Object? locations = null,Object? allowCustomLocation = null,}) {
  return _then(_SellSeatOptionsEntity(
locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<SellSeatLocationEntity>,allowCustomLocation: null == allowCustomLocation ? _self.allowCustomLocation : allowCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
