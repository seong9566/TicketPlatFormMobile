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
mixin _$SellSeatGradeUiModel {

 int get gradeId; String get code; String get gradeName;
/// Create a copy of SellSeatGradeUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatGradeUiModelCopyWith<SellSeatGradeUiModel> get copyWith => _$SellSeatGradeUiModelCopyWithImpl<SellSeatGradeUiModel>(this as SellSeatGradeUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatGradeUiModel&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.code, code) || other.code == code)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName));
}


@override
int get hashCode => Object.hash(runtimeType,gradeId,code,gradeName);

@override
String toString() {
  return 'SellSeatGradeUiModel(gradeId: $gradeId, code: $code, gradeName: $gradeName)';
}


}

/// @nodoc
abstract mixin class $SellSeatGradeUiModelCopyWith<$Res>  {
  factory $SellSeatGradeUiModelCopyWith(SellSeatGradeUiModel value, $Res Function(SellSeatGradeUiModel) _then) = _$SellSeatGradeUiModelCopyWithImpl;
@useResult
$Res call({
 int gradeId, String code, String gradeName
});




}
/// @nodoc
class _$SellSeatGradeUiModelCopyWithImpl<$Res>
    implements $SellSeatGradeUiModelCopyWith<$Res> {
  _$SellSeatGradeUiModelCopyWithImpl(this._self, this._then);

  final SellSeatGradeUiModel _self;
  final $Res Function(SellSeatGradeUiModel) _then;

/// Create a copy of SellSeatGradeUiModel
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


/// Adds pattern-matching-related methods to [SellSeatGradeUiModel].
extension SellSeatGradeUiModelPatterns on SellSeatGradeUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatGradeUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatGradeUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatGradeUiModel value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatGradeUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatGradeUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatGradeUiModel() when $default != null:
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
case _SellSeatGradeUiModel() when $default != null:
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
case _SellSeatGradeUiModel():
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
case _SellSeatGradeUiModel() when $default != null:
return $default(_that.gradeId,_that.code,_that.gradeName);case _:
  return null;

}
}

}

/// @nodoc


class _SellSeatGradeUiModel implements SellSeatGradeUiModel {
  const _SellSeatGradeUiModel({required this.gradeId, required this.code, required this.gradeName});
  

@override final  int gradeId;
@override final  String code;
@override final  String gradeName;

/// Create a copy of SellSeatGradeUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatGradeUiModelCopyWith<_SellSeatGradeUiModel> get copyWith => __$SellSeatGradeUiModelCopyWithImpl<_SellSeatGradeUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatGradeUiModel&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.code, code) || other.code == code)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName));
}


@override
int get hashCode => Object.hash(runtimeType,gradeId,code,gradeName);

@override
String toString() {
  return 'SellSeatGradeUiModel(gradeId: $gradeId, code: $code, gradeName: $gradeName)';
}


}

/// @nodoc
abstract mixin class _$SellSeatGradeUiModelCopyWith<$Res> implements $SellSeatGradeUiModelCopyWith<$Res> {
  factory _$SellSeatGradeUiModelCopyWith(_SellSeatGradeUiModel value, $Res Function(_SellSeatGradeUiModel) _then) = __$SellSeatGradeUiModelCopyWithImpl;
@override @useResult
$Res call({
 int gradeId, String code, String gradeName
});




}
/// @nodoc
class __$SellSeatGradeUiModelCopyWithImpl<$Res>
    implements _$SellSeatGradeUiModelCopyWith<$Res> {
  __$SellSeatGradeUiModelCopyWithImpl(this._self, this._then);

  final _SellSeatGradeUiModel _self;
  final $Res Function(_SellSeatGradeUiModel) _then;

/// Create a copy of SellSeatGradeUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gradeId = null,Object? code = null,Object? gradeName = null,}) {
  return _then(_SellSeatGradeUiModel(
gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SellSeatLocationUiModel {

 int get locationId; String get locationName;
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
 int locationId, String locationName
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
as int,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int locationId,  String locationName)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int locationId,  String locationName)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int locationId,  String locationName)?  $default,) {final _that = this;
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
  

@override final  int locationId;
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
 int locationId, String locationName
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
as int,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SellSeatAreaUiModel {

 int get areaId; String get areaName;
/// Create a copy of SellSeatAreaUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatAreaUiModelCopyWith<SellSeatAreaUiModel> get copyWith => _$SellSeatAreaUiModelCopyWithImpl<SellSeatAreaUiModel>(this as SellSeatAreaUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatAreaUiModel&&(identical(other.areaId, areaId) || other.areaId == areaId)&&(identical(other.areaName, areaName) || other.areaName == areaName));
}


@override
int get hashCode => Object.hash(runtimeType,areaId,areaName);

@override
String toString() {
  return 'SellSeatAreaUiModel(areaId: $areaId, areaName: $areaName)';
}


}

/// @nodoc
abstract mixin class $SellSeatAreaUiModelCopyWith<$Res>  {
  factory $SellSeatAreaUiModelCopyWith(SellSeatAreaUiModel value, $Res Function(SellSeatAreaUiModel) _then) = _$SellSeatAreaUiModelCopyWithImpl;
@useResult
$Res call({
 int areaId, String areaName
});




}
/// @nodoc
class _$SellSeatAreaUiModelCopyWithImpl<$Res>
    implements $SellSeatAreaUiModelCopyWith<$Res> {
  _$SellSeatAreaUiModelCopyWithImpl(this._self, this._then);

  final SellSeatAreaUiModel _self;
  final $Res Function(SellSeatAreaUiModel) _then;

/// Create a copy of SellSeatAreaUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? areaId = null,Object? areaName = null,}) {
  return _then(_self.copyWith(
areaId: null == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int,areaName: null == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellSeatAreaUiModel].
extension SellSeatAreaUiModelPatterns on SellSeatAreaUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatAreaUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatAreaUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatAreaUiModel value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatAreaUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatAreaUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatAreaUiModel() when $default != null:
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
case _SellSeatAreaUiModel() when $default != null:
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
case _SellSeatAreaUiModel():
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
case _SellSeatAreaUiModel() when $default != null:
return $default(_that.areaId,_that.areaName);case _:
  return null;

}
}

}

/// @nodoc


class _SellSeatAreaUiModel implements SellSeatAreaUiModel {
  const _SellSeatAreaUiModel({required this.areaId, required this.areaName});
  

@override final  int areaId;
@override final  String areaName;

/// Create a copy of SellSeatAreaUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatAreaUiModelCopyWith<_SellSeatAreaUiModel> get copyWith => __$SellSeatAreaUiModelCopyWithImpl<_SellSeatAreaUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatAreaUiModel&&(identical(other.areaId, areaId) || other.areaId == areaId)&&(identical(other.areaName, areaName) || other.areaName == areaName));
}


@override
int get hashCode => Object.hash(runtimeType,areaId,areaName);

@override
String toString() {
  return 'SellSeatAreaUiModel(areaId: $areaId, areaName: $areaName)';
}


}

/// @nodoc
abstract mixin class _$SellSeatAreaUiModelCopyWith<$Res> implements $SellSeatAreaUiModelCopyWith<$Res> {
  factory _$SellSeatAreaUiModelCopyWith(_SellSeatAreaUiModel value, $Res Function(_SellSeatAreaUiModel) _then) = __$SellSeatAreaUiModelCopyWithImpl;
@override @useResult
$Res call({
 int areaId, String areaName
});




}
/// @nodoc
class __$SellSeatAreaUiModelCopyWithImpl<$Res>
    implements _$SellSeatAreaUiModelCopyWith<$Res> {
  __$SellSeatAreaUiModelCopyWithImpl(this._self, this._then);

  final _SellSeatAreaUiModel _self;
  final $Res Function(_SellSeatAreaUiModel) _then;

/// Create a copy of SellSeatAreaUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? areaId = null,Object? areaName = null,}) {
  return _then(_SellSeatAreaUiModel(
areaId: null == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int,areaName: null == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SellSeatOptionsUiModel {

 List<SellSeatGradeUiModel> get grades; List<SellSeatLocationUiModel> get locations; List<SellSeatAreaUiModel> get areas; bool get allowCustomLocation;
/// Create a copy of SellSeatOptionsUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatOptionsUiModelCopyWith<SellSeatOptionsUiModel> get copyWith => _$SellSeatOptionsUiModelCopyWithImpl<SellSeatOptionsUiModel>(this as SellSeatOptionsUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatOptionsUiModel&&const DeepCollectionEquality().equals(other.grades, grades)&&const DeepCollectionEquality().equals(other.locations, locations)&&const DeepCollectionEquality().equals(other.areas, areas)&&(identical(other.allowCustomLocation, allowCustomLocation) || other.allowCustomLocation == allowCustomLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(grades),const DeepCollectionEquality().hash(locations),const DeepCollectionEquality().hash(areas),allowCustomLocation);

@override
String toString() {
  return 'SellSeatOptionsUiModel(grades: $grades, locations: $locations, areas: $areas, allowCustomLocation: $allowCustomLocation)';
}


}

/// @nodoc
abstract mixin class $SellSeatOptionsUiModelCopyWith<$Res>  {
  factory $SellSeatOptionsUiModelCopyWith(SellSeatOptionsUiModel value, $Res Function(SellSeatOptionsUiModel) _then) = _$SellSeatOptionsUiModelCopyWithImpl;
@useResult
$Res call({
 List<SellSeatGradeUiModel> grades, List<SellSeatLocationUiModel> locations, List<SellSeatAreaUiModel> areas, bool allowCustomLocation
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
@pragma('vm:prefer-inline') @override $Res call({Object? grades = null,Object? locations = null,Object? areas = null,Object? allowCustomLocation = null,}) {
  return _then(_self.copyWith(
grades: null == grades ? _self.grades : grades // ignore: cast_nullable_to_non_nullable
as List<SellSeatGradeUiModel>,locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<SellSeatLocationUiModel>,areas: null == areas ? _self.areas : areas // ignore: cast_nullable_to_non_nullable
as List<SellSeatAreaUiModel>,allowCustomLocation: null == allowCustomLocation ? _self.allowCustomLocation : allowCustomLocation // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellSeatGradeUiModel> grades,  List<SellSeatLocationUiModel> locations,  List<SellSeatAreaUiModel> areas,  bool allowCustomLocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellSeatOptionsUiModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellSeatGradeUiModel> grades,  List<SellSeatLocationUiModel> locations,  List<SellSeatAreaUiModel> areas,  bool allowCustomLocation)  $default,) {final _that = this;
switch (_that) {
case _SellSeatOptionsUiModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellSeatGradeUiModel> grades,  List<SellSeatLocationUiModel> locations,  List<SellSeatAreaUiModel> areas,  bool allowCustomLocation)?  $default,) {final _that = this;
switch (_that) {
case _SellSeatOptionsUiModel() when $default != null:
return $default(_that.grades,_that.locations,_that.areas,_that.allowCustomLocation);case _:
  return null;

}
}

}

/// @nodoc


class _SellSeatOptionsUiModel implements SellSeatOptionsUiModel {
  const _SellSeatOptionsUiModel({required final  List<SellSeatGradeUiModel> grades, required final  List<SellSeatLocationUiModel> locations, required final  List<SellSeatAreaUiModel> areas, required this.allowCustomLocation}): _grades = grades,_locations = locations,_areas = areas;
  

 final  List<SellSeatGradeUiModel> _grades;
@override List<SellSeatGradeUiModel> get grades {
  if (_grades is EqualUnmodifiableListView) return _grades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_grades);
}

 final  List<SellSeatLocationUiModel> _locations;
@override List<SellSeatLocationUiModel> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}

 final  List<SellSeatAreaUiModel> _areas;
@override List<SellSeatAreaUiModel> get areas {
  if (_areas is EqualUnmodifiableListView) return _areas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_areas);
}

@override final  bool allowCustomLocation;

/// Create a copy of SellSeatOptionsUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatOptionsUiModelCopyWith<_SellSeatOptionsUiModel> get copyWith => __$SellSeatOptionsUiModelCopyWithImpl<_SellSeatOptionsUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatOptionsUiModel&&const DeepCollectionEquality().equals(other._grades, _grades)&&const DeepCollectionEquality().equals(other._locations, _locations)&&const DeepCollectionEquality().equals(other._areas, _areas)&&(identical(other.allowCustomLocation, allowCustomLocation) || other.allowCustomLocation == allowCustomLocation));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_grades),const DeepCollectionEquality().hash(_locations),const DeepCollectionEquality().hash(_areas),allowCustomLocation);

@override
String toString() {
  return 'SellSeatOptionsUiModel(grades: $grades, locations: $locations, areas: $areas, allowCustomLocation: $allowCustomLocation)';
}


}

/// @nodoc
abstract mixin class _$SellSeatOptionsUiModelCopyWith<$Res> implements $SellSeatOptionsUiModelCopyWith<$Res> {
  factory _$SellSeatOptionsUiModelCopyWith(_SellSeatOptionsUiModel value, $Res Function(_SellSeatOptionsUiModel) _then) = __$SellSeatOptionsUiModelCopyWithImpl;
@override @useResult
$Res call({
 List<SellSeatGradeUiModel> grades, List<SellSeatLocationUiModel> locations, List<SellSeatAreaUiModel> areas, bool allowCustomLocation
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
@override @pragma('vm:prefer-inline') $Res call({Object? grades = null,Object? locations = null,Object? areas = null,Object? allowCustomLocation = null,}) {
  return _then(_SellSeatOptionsUiModel(
grades: null == grades ? _self._grades : grades // ignore: cast_nullable_to_non_nullable
as List<SellSeatGradeUiModel>,locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<SellSeatLocationUiModel>,areas: null == areas ? _self._areas : areas // ignore: cast_nullable_to_non_nullable
as List<SellSeatAreaUiModel>,allowCustomLocation: null == allowCustomLocation ? _self.allowCustomLocation : allowCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
