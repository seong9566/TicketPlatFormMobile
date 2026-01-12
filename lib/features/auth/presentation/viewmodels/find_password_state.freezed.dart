// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FindPasswordState {

 String get email; bool get isLoading; String? get errorMessage; bool get isLinkSent;
/// Create a copy of FindPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindPasswordStateCopyWith<FindPasswordState> get copyWith => _$FindPasswordStateCopyWithImpl<FindPasswordState>(this as FindPasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindPasswordState&&(identical(other.email, email) || other.email == email)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isLinkSent, isLinkSent) || other.isLinkSent == isLinkSent));
}


@override
int get hashCode => Object.hash(runtimeType,email,isLoading,errorMessage,isLinkSent);

@override
String toString() {
  return 'FindPasswordState(email: $email, isLoading: $isLoading, errorMessage: $errorMessage, isLinkSent: $isLinkSent)';
}


}

/// @nodoc
abstract mixin class $FindPasswordStateCopyWith<$Res>  {
  factory $FindPasswordStateCopyWith(FindPasswordState value, $Res Function(FindPasswordState) _then) = _$FindPasswordStateCopyWithImpl;
@useResult
$Res call({
 String email, bool isLoading, String? errorMessage, bool isLinkSent
});




}
/// @nodoc
class _$FindPasswordStateCopyWithImpl<$Res>
    implements $FindPasswordStateCopyWith<$Res> {
  _$FindPasswordStateCopyWithImpl(this._self, this._then);

  final FindPasswordState _self;
  final $Res Function(FindPasswordState) _then;

/// Create a copy of FindPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? isLoading = null,Object? errorMessage = freezed,Object? isLinkSent = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isLinkSent: null == isLinkSent ? _self.isLinkSent : isLinkSent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FindPasswordState].
extension FindPasswordStatePatterns on FindPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FindPasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FindPasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FindPasswordState value)  $default,){
final _that = this;
switch (_that) {
case _FindPasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FindPasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _FindPasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  bool isLoading,  String? errorMessage,  bool isLinkSent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FindPasswordState() when $default != null:
return $default(_that.email,_that.isLoading,_that.errorMessage,_that.isLinkSent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  bool isLoading,  String? errorMessage,  bool isLinkSent)  $default,) {final _that = this;
switch (_that) {
case _FindPasswordState():
return $default(_that.email,_that.isLoading,_that.errorMessage,_that.isLinkSent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  bool isLoading,  String? errorMessage,  bool isLinkSent)?  $default,) {final _that = this;
switch (_that) {
case _FindPasswordState() when $default != null:
return $default(_that.email,_that.isLoading,_that.errorMessage,_that.isLinkSent);case _:
  return null;

}
}

}

/// @nodoc


class _FindPasswordState implements FindPasswordState {
  const _FindPasswordState({this.email = '', this.isLoading = false, this.errorMessage, this.isLinkSent = false});
  

@override@JsonKey() final  String email;
@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override@JsonKey() final  bool isLinkSent;

/// Create a copy of FindPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindPasswordStateCopyWith<_FindPasswordState> get copyWith => __$FindPasswordStateCopyWithImpl<_FindPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FindPasswordState&&(identical(other.email, email) || other.email == email)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isLinkSent, isLinkSent) || other.isLinkSent == isLinkSent));
}


@override
int get hashCode => Object.hash(runtimeType,email,isLoading,errorMessage,isLinkSent);

@override
String toString() {
  return 'FindPasswordState(email: $email, isLoading: $isLoading, errorMessage: $errorMessage, isLinkSent: $isLinkSent)';
}


}

/// @nodoc
abstract mixin class _$FindPasswordStateCopyWith<$Res> implements $FindPasswordStateCopyWith<$Res> {
  factory _$FindPasswordStateCopyWith(_FindPasswordState value, $Res Function(_FindPasswordState) _then) = __$FindPasswordStateCopyWithImpl;
@override @useResult
$Res call({
 String email, bool isLoading, String? errorMessage, bool isLinkSent
});




}
/// @nodoc
class __$FindPasswordStateCopyWithImpl<$Res>
    implements _$FindPasswordStateCopyWith<$Res> {
  __$FindPasswordStateCopyWithImpl(this._self, this._then);

  final _FindPasswordState _self;
  final $Res Function(_FindPasswordState) _then;

/// Create a copy of FindPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? isLoading = null,Object? errorMessage = freezed,Object? isLinkSent = null,}) {
  return _then(_FindPasswordState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isLinkSent: null == isLinkSent ? _self.isLinkSent : isLinkSent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
