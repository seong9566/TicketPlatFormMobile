// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_seat_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellSeatInfoState {

 SellSeatOptionsUiModel? get seatOptions; String? get selectedLocationId; bool get isCustomLocation; String get customLocation; String get area; String get row;
/// Create a copy of SellSeatInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSeatInfoStateCopyWith<SellSeatInfoState> get copyWith => _$SellSeatInfoStateCopyWithImpl<SellSeatInfoState>(this as SellSeatInfoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSeatInfoState&&(identical(other.seatOptions, seatOptions) || other.seatOptions == seatOptions)&&(identical(other.selectedLocationId, selectedLocationId) || other.selectedLocationId == selectedLocationId)&&(identical(other.isCustomLocation, isCustomLocation) || other.isCustomLocation == isCustomLocation)&&(identical(other.customLocation, customLocation) || other.customLocation == customLocation)&&(identical(other.area, area) || other.area == area)&&(identical(other.row, row) || other.row == row));
}


@override
int get hashCode => Object.hash(runtimeType,seatOptions,selectedLocationId,isCustomLocation,customLocation,area,row);

@override
String toString() {
  return 'SellSeatInfoState(seatOptions: $seatOptions, selectedLocationId: $selectedLocationId, isCustomLocation: $isCustomLocation, customLocation: $customLocation, area: $area, row: $row)';
}


}

/// @nodoc
abstract mixin class $SellSeatInfoStateCopyWith<$Res>  {
  factory $SellSeatInfoStateCopyWith(SellSeatInfoState value, $Res Function(SellSeatInfoState) _then) = _$SellSeatInfoStateCopyWithImpl;
@useResult
$Res call({
 SellSeatOptionsUiModel? seatOptions, String? selectedLocationId, bool isCustomLocation, String customLocation, String area, String row
});


$SellSeatOptionsUiModelCopyWith<$Res>? get seatOptions;

}
/// @nodoc
class _$SellSeatInfoStateCopyWithImpl<$Res>
    implements $SellSeatInfoStateCopyWith<$Res> {
  _$SellSeatInfoStateCopyWithImpl(this._self, this._then);

  final SellSeatInfoState _self;
  final $Res Function(SellSeatInfoState) _then;

/// Create a copy of SellSeatInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seatOptions = freezed,Object? selectedLocationId = freezed,Object? isCustomLocation = null,Object? customLocation = null,Object? area = null,Object? row = null,}) {
  return _then(_self.copyWith(
seatOptions: freezed == seatOptions ? _self.seatOptions : seatOptions // ignore: cast_nullable_to_non_nullable
as SellSeatOptionsUiModel?,selectedLocationId: freezed == selectedLocationId ? _self.selectedLocationId : selectedLocationId // ignore: cast_nullable_to_non_nullable
as String?,isCustomLocation: null == isCustomLocation ? _self.isCustomLocation : isCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,customLocation: null == customLocation ? _self.customLocation : customLocation // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,row: null == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of SellSeatInfoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellSeatOptionsUiModelCopyWith<$Res>? get seatOptions {
    if (_self.seatOptions == null) {
    return null;
  }

  return $SellSeatOptionsUiModelCopyWith<$Res>(_self.seatOptions!, (value) {
    return _then(_self.copyWith(seatOptions: value));
  });
}
}


/// Adds pattern-matching-related methods to [SellSeatInfoState].
extension SellSeatInfoStatePatterns on SellSeatInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSeatInfoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSeatInfoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSeatInfoState value)  $default,){
final _that = this;
switch (_that) {
case _SellSeatInfoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSeatInfoState value)?  $default,){
final _that = this;
switch (_that) {
case _SellSeatInfoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SellSeatOptionsUiModel? seatOptions,  String? selectedLocationId,  bool isCustomLocation,  String customLocation,  String area,  String row)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellSeatInfoState() when $default != null:
return $default(_that.seatOptions,_that.selectedLocationId,_that.isCustomLocation,_that.customLocation,_that.area,_that.row);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SellSeatOptionsUiModel? seatOptions,  String? selectedLocationId,  bool isCustomLocation,  String customLocation,  String area,  String row)  $default,) {final _that = this;
switch (_that) {
case _SellSeatInfoState():
return $default(_that.seatOptions,_that.selectedLocationId,_that.isCustomLocation,_that.customLocation,_that.area,_that.row);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SellSeatOptionsUiModel? seatOptions,  String? selectedLocationId,  bool isCustomLocation,  String customLocation,  String area,  String row)?  $default,) {final _that = this;
switch (_that) {
case _SellSeatInfoState() when $default != null:
return $default(_that.seatOptions,_that.selectedLocationId,_that.isCustomLocation,_that.customLocation,_that.area,_that.row);case _:
  return null;

}
}

}

/// @nodoc


class _SellSeatInfoState implements SellSeatInfoState {
  const _SellSeatInfoState({this.seatOptions = null, this.selectedLocationId = null, this.isCustomLocation = false, this.customLocation = '', this.area = '', this.row = ''});
  

@override@JsonKey() final  SellSeatOptionsUiModel? seatOptions;
@override@JsonKey() final  String? selectedLocationId;
@override@JsonKey() final  bool isCustomLocation;
@override@JsonKey() final  String customLocation;
@override@JsonKey() final  String area;
@override@JsonKey() final  String row;

/// Create a copy of SellSeatInfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSeatInfoStateCopyWith<_SellSeatInfoState> get copyWith => __$SellSeatInfoStateCopyWithImpl<_SellSeatInfoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSeatInfoState&&(identical(other.seatOptions, seatOptions) || other.seatOptions == seatOptions)&&(identical(other.selectedLocationId, selectedLocationId) || other.selectedLocationId == selectedLocationId)&&(identical(other.isCustomLocation, isCustomLocation) || other.isCustomLocation == isCustomLocation)&&(identical(other.customLocation, customLocation) || other.customLocation == customLocation)&&(identical(other.area, area) || other.area == area)&&(identical(other.row, row) || other.row == row));
}


@override
int get hashCode => Object.hash(runtimeType,seatOptions,selectedLocationId,isCustomLocation,customLocation,area,row);

@override
String toString() {
  return 'SellSeatInfoState(seatOptions: $seatOptions, selectedLocationId: $selectedLocationId, isCustomLocation: $isCustomLocation, customLocation: $customLocation, area: $area, row: $row)';
}


}

/// @nodoc
abstract mixin class _$SellSeatInfoStateCopyWith<$Res> implements $SellSeatInfoStateCopyWith<$Res> {
  factory _$SellSeatInfoStateCopyWith(_SellSeatInfoState value, $Res Function(_SellSeatInfoState) _then) = __$SellSeatInfoStateCopyWithImpl;
@override @useResult
$Res call({
 SellSeatOptionsUiModel? seatOptions, String? selectedLocationId, bool isCustomLocation, String customLocation, String area, String row
});


@override $SellSeatOptionsUiModelCopyWith<$Res>? get seatOptions;

}
/// @nodoc
class __$SellSeatInfoStateCopyWithImpl<$Res>
    implements _$SellSeatInfoStateCopyWith<$Res> {
  __$SellSeatInfoStateCopyWithImpl(this._self, this._then);

  final _SellSeatInfoState _self;
  final $Res Function(_SellSeatInfoState) _then;

/// Create a copy of SellSeatInfoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? seatOptions = freezed,Object? selectedLocationId = freezed,Object? isCustomLocation = null,Object? customLocation = null,Object? area = null,Object? row = null,}) {
  return _then(_SellSeatInfoState(
seatOptions: freezed == seatOptions ? _self.seatOptions : seatOptions // ignore: cast_nullable_to_non_nullable
as SellSeatOptionsUiModel?,selectedLocationId: freezed == selectedLocationId ? _self.selectedLocationId : selectedLocationId // ignore: cast_nullable_to_non_nullable
as String?,isCustomLocation: null == isCustomLocation ? _self.isCustomLocation : isCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,customLocation: null == customLocation ? _self.customLocation : customLocation // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,row: null == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SellSeatInfoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellSeatOptionsUiModelCopyWith<$Res>? get seatOptions {
    if (_self.seatOptions == null) {
    return null;
  }

  return $SellSeatOptionsUiModelCopyWith<$Res>(_self.seatOptions!, (value) {
    return _then(_self.copyWith(seatOptions: value));
  });
}
}

// dart format on
