// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_seat_option_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellSeatLocationUiModel {

 String get locationId; String get locationName;
/// Create a copy of SellSeatLocationUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatLocationUiModelCopyWith<SellSeatLocationUiModel> get copyWith => _$SellSeatLocationUiModelCopyWithImpl<SellSeatLocationUiModel>(this as SellSeatLocationUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatLocationUiModel&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName));
}


@override
int get hashCode => Object.hash(runtimeType,locationId,locationName);

@override
String toString() {
  return 'SellSeatLocationUiModel(locationId: $locationId, locationName: $locationName)';
}


}

/// @nodoc
abstract mixin class $SellSeatLocationUiModelCopyWith<$Res>  {
  factory $SellSeatLocationUiModelCopyWith(SellSeatLocationUiModel value, $Res Function(SellSeatLocationUiModel) _then) = _$SellSeatLocationUiModelCopyWithImpl;
@useResult
$Res call({
 String locationId, String locationName
});




}
/// @nodoc
class _$SellSeatLocationUiModelCopyWithImpl<$Res>
    implements $SellSeatLocationUiModelCopyWith<$Res> {
  _$SellSeatLocationUiModelCopyWithImpl(this._self, this._then);

  final SellSeatLocationUiModel _self;
  final $Res Function(SellSeatLocationUiModel) _then;

/// Create a copy of SellSeatLocationUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locationId = null,Object? locationName = null,}) {
  return _then(_self.copyWith(
locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellSeatLocationUiModel].
extension SellSeatLocationUiModelPatterns on SellSeatLocationUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatLocationUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatLocationUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatLocationUiModel value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatLocationUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatLocationUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatLocationUiModel() when $default != null:
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
case _SellSeatLocationUiModel() when $default != null:
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
case _SellSeatLocationUiModel():
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
case _SellSeatLocationUiModel() when $default != null:
return $default(_that.locationId,_that.locationName);case _:
  return null;

}
}

}

/// @nodoc


class _SellSeatLocationUiModel implements SellSeatLocationUiModel {
  const _SellSeatLocationUiModel({required this.locationId, required this.locationName});
  

@override final  String locationId;
@override final  String locationName;

/// Create a copy of SellSeatLocationUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatLocationUiModelCopyWith<_SellSeatLocationUiModel> get copyWith => __$SellSeatLocationUiModelCopyWithImpl<_SellSeatLocationUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatLocationUiModel&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName));
}


@override
int get hashCode => Object.hash(runtimeType,locationId,locationName);

@override
String toString() {
  return 'SellSeatLocationUiModel(locationId: $locationId, locationName: $locationName)';
}


}

/// @nodoc
abstract mixin class _$SellSeatLocationUiModelCopyWith<$Res> implements $SellSeatLocationUiModelCopyWith<$Res> {
  factory _$SellSeatLocationUiModelCopyWith(_SellSeatLocationUiModel value, $Res Function(_SellSeatLocationUiModel) _then) = __$SellSeatLocationUiModelCopyWithImpl;
@override @useResult
$Res call({
 String locationId, String locationName
});




}
/// @nodoc
class __$SellSeatLocationUiModelCopyWithImpl<$Res>
    implements _$SellSeatLocationUiModelCopyWith<$Res> {
  __$SellSeatLocationUiModelCopyWithImpl(this._self, this._then);

  final _SellSeatLocationUiModel _self;
  final $Res Function(_SellSeatLocationUiModel) _then;

/// Create a copy of SellSeatLocationUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locationId = null,Object? locationName = null,}) {
  return _then(_SellSeatLocationUiModel(
locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SellSeatOptionsUiModel {

 List<SellSeatLocationUiModel> get locations; bool get allowCustomLocation;
/// Create a copy of SellSeatOptionsUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatOptionsUiModelCopyWith<SellSeatOptionsUiModel> get copyWith => _$SellSeatOptionsUiModelCopyWithImpl<SellSeatOptionsUiModel>(this as SellSeatOptionsUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatOptionsUiModel&&const DeepCollectionEquality().equals(other.locations, locations)&&(identical(other.allowCustomLocation, allowCustomLocation) || other.allowCustomLocation == allowCustomLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(locations),allowCustomLocation);

@override
String toString() {
  return 'SellSeatOptionsUiModel(locations: $locations, allowCustomLocation: $allowCustomLocation)';
}


}

/// @nodoc
abstract mixin class $SellSeatOptionsUiModelCopyWith<$Res>  {
  factory $SellSeatOptionsUiModelCopyWith(SellSeatOptionsUiModel value, $Res Function(SellSeatOptionsUiModel) _then) = _$SellSeatOptionsUiModelCopyWithImpl;
@useResult
$Res call({
 List<SellSeatLocationUiModel> locations, bool allowCustomLocation
});




}
/// @nodoc
class _$SellSeatOptionsUiModelCopyWithImpl<$Res>
    implements $SellSeatOptionsUiModelCopyWith<$Res> {
  _$SellSeatOptionsUiModelCopyWithImpl(this._self, this._then);

  final SellSeatOptionsUiModel _self;
  final $Res Function(SellSeatOptionsUiModel) _then;

/// Create a copy of SellSeatOptionsUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locations = null,Object? allowCustomLocation = null,}) {
  return _then(_self.copyWith(
locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<SellSeatLocationUiModel>,allowCustomLocation: null == allowCustomLocation ? _self.allowCustomLocation : allowCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SellSeatOptionsUiModel].
extension SellSeatOptionsUiModelPatterns on SellSeatOptionsUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatOptionsUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatOptionsUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatOptionsUiModel value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatOptionsUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatOptionsUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatOptionsUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellSeatLocationUiModel> locations,  bool allowCustomLocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellSeatOptionsUiModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellSeatLocationUiModel> locations,  bool allowCustomLocation)  $default,) {final _that = this;
switch (_that) {
case _SellSeatOptionsUiModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellSeatLocationUiModel> locations,  bool allowCustomLocation)?  $default,) {final _that = this;
switch (_that) {
case _SellSeatOptionsUiModel() when $default != null:
return $default(_that.locations,_that.allowCustomLocation);case _:
  return null;

}
}

}

/// @nodoc


class _SellSeatOptionsUiModel implements SellSeatOptionsUiModel {
  const _SellSeatOptionsUiModel({required final  List<SellSeatLocationUiModel> locations, required this.allowCustomLocation}): _locations = locations;
  

 final  List<SellSeatLocationUiModel> _locations;
@override List<SellSeatLocationUiModel> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}

@override final  bool allowCustomLocation;

/// Create a copy of SellSeatOptionsUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatOptionsUiModelCopyWith<_SellSeatOptionsUiModel> get copyWith => __$SellSeatOptionsUiModelCopyWithImpl<_SellSeatOptionsUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatOptionsUiModel&&const DeepCollectionEquality().equals(other._locations, _locations)&&(identical(other.allowCustomLocation, allowCustomLocation) || other.allowCustomLocation == allowCustomLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_locations),allowCustomLocation);

@override
String toString() {
  return 'SellSeatOptionsUiModel(locations: $locations, allowCustomLocation: $allowCustomLocation)';
}


}

/// @nodoc
abstract mixin class _$SellSeatOptionsUiModelCopyWith<$Res> implements $SellSeatOptionsUiModelCopyWith<$Res> {
  factory _$SellSeatOptionsUiModelCopyWith(_SellSeatOptionsUiModel value, $Res Function(_SellSeatOptionsUiModel) _then) = __$SellSeatOptionsUiModelCopyWithImpl;
@override @useResult
$Res call({
 List<SellSeatLocationUiModel> locations, bool allowCustomLocation
});




}
/// @nodoc
class __$SellSeatOptionsUiModelCopyWithImpl<$Res>
    implements _$SellSeatOptionsUiModelCopyWith<$Res> {
  __$SellSeatOptionsUiModelCopyWithImpl(this._self, this._then);

  final _SellSeatOptionsUiModel _self;
  final $Res Function(_SellSeatOptionsUiModel) _then;

/// Create a copy of SellSeatOptionsUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locations = null,Object? allowCustomLocation = null,}) {
  return _then(_SellSeatOptionsUiModel(
locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<SellSeatLocationUiModel>,allowCustomLocation: null == allowCustomLocation ? _self.allowCustomLocation : allowCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
