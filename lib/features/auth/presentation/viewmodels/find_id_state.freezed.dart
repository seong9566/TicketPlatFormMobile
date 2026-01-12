// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_id_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FindIdState {

 String get phoneNumber; bool get isLoading; String? get errorMessage; String? get foundId;
/// Create a copy of FindIdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindIdStateCopyWith<FindIdState> get copyWith => _$FindIdStateCopyWithImpl<FindIdState>(this as FindIdState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindIdState&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.foundId, foundId) || other.foundId == foundId));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,isLoading,errorMessage,foundId);

@override
String toString() {
  return 'FindIdState(phoneNumber: $phoneNumber, isLoading: $isLoading, errorMessage: $errorMessage, foundId: $foundId)';
}


}

/// @nodoc
abstract mixin class $FindIdStateCopyWith<$Res>  {
  factory $FindIdStateCopyWith(FindIdState value, $Res Function(FindIdState) _then) = _$FindIdStateCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, bool isLoading, String? errorMessage, String? foundId
});




}
/// @nodoc
class _$FindIdStateCopyWithImpl<$Res>
    implements $FindIdStateCopyWith<$Res> {
  _$FindIdStateCopyWithImpl(this._self, this._then);

  final FindIdState _self;
  final $Res Function(FindIdState) _then;

/// Create a copy of FindIdState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? isLoading = null,Object? errorMessage = freezed,Object? foundId = freezed,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,foundId: freezed == foundId ? _self.foundId : foundId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FindIdState].
extension FindIdStatePatterns on FindIdState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FindIdState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FindIdState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FindIdState value)  $default,){
final _that = this;
switch (_that) {
case _FindIdState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FindIdState value)?  $default,){
final _that = this;
switch (_that) {
case _FindIdState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phoneNumber,  bool isLoading,  String? errorMessage,  String? foundId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FindIdState() when $default != null:
return $default(_that.phoneNumber,_that.isLoading,_that.errorMessage,_that.foundId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phoneNumber,  bool isLoading,  String? errorMessage,  String? foundId)  $default,) {final _that = this;
switch (_that) {
case _FindIdState():
return $default(_that.phoneNumber,_that.isLoading,_that.errorMessage,_that.foundId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phoneNumber,  bool isLoading,  String? errorMessage,  String? foundId)?  $default,) {final _that = this;
switch (_that) {
case _FindIdState() when $default != null:
return $default(_that.phoneNumber,_that.isLoading,_that.errorMessage,_that.foundId);case _:
  return null;

}
}

}

/// @nodoc


class _FindIdState implements FindIdState {
  const _FindIdState({this.phoneNumber = '', this.isLoading = false, this.errorMessage, this.foundId});
  

@override@JsonKey() final  String phoneNumber;
@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override final  String? foundId;

/// Create a copy of FindIdState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindIdStateCopyWith<_FindIdState> get copyWith => __$FindIdStateCopyWithImpl<_FindIdState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FindIdState&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.foundId, foundId) || other.foundId == foundId));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,isLoading,errorMessage,foundId);

@override
String toString() {
  return 'FindIdState(phoneNumber: $phoneNumber, isLoading: $isLoading, errorMessage: $errorMessage, foundId: $foundId)';
}


}

/// @nodoc
abstract mixin class _$FindIdStateCopyWith<$Res> implements $FindIdStateCopyWith<$Res> {
  factory _$FindIdStateCopyWith(_FindIdState value, $Res Function(_FindIdState) _then) = __$FindIdStateCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber, bool isLoading, String? errorMessage, String? foundId
});




}
/// @nodoc
class __$FindIdStateCopyWithImpl<$Res>
    implements _$FindIdStateCopyWith<$Res> {
  __$FindIdStateCopyWithImpl(this._self, this._then);

  final _FindIdState _self;
  final $Res Function(_FindIdState) _then;

/// Create a copy of FindIdState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? isLoading = null,Object? errorMessage = freezed,Object? foundId = freezed,}) {
  return _then(_FindIdState(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,foundId: freezed == foundId ? _self.foundId : foundId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
