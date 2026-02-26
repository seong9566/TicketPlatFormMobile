// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WithdrawalRequestState {

 bool get isSubmitting; bool get isSuccess; String? get errorMessage; WithdrawalEntity? get result;
/// Create a copy of WithdrawalRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawalRequestStateCopyWith<WithdrawalRequestState> get copyWith => _$WithdrawalRequestStateCopyWithImpl<WithdrawalRequestState>(this as WithdrawalRequestState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalRequestState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,isSuccess,errorMessage,result);

@override
String toString() {
  return 'WithdrawalRequestState(isSubmitting: $isSubmitting, isSuccess: $isSuccess, errorMessage: $errorMessage, result: $result)';
}


}

/// @nodoc
abstract mixin class $WithdrawalRequestStateCopyWith<$Res>  {
  factory $WithdrawalRequestStateCopyWith(WithdrawalRequestState value, $Res Function(WithdrawalRequestState) _then) = _$WithdrawalRequestStateCopyWithImpl;
@useResult
$Res call({
 bool isSubmitting, bool isSuccess, String? errorMessage, WithdrawalEntity? result
});


$WithdrawalEntityCopyWith<$Res>? get result;

}
/// @nodoc
class _$WithdrawalRequestStateCopyWithImpl<$Res>
    implements $WithdrawalRequestStateCopyWith<$Res> {
  _$WithdrawalRequestStateCopyWithImpl(this._self, this._then);

  final WithdrawalRequestState _self;
  final $Res Function(WithdrawalRequestState) _then;

/// Create a copy of WithdrawalRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSubmitting = null,Object? isSuccess = null,Object? errorMessage = freezed,Object? result = freezed,}) {
  return _then(_self.copyWith(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as WithdrawalEntity?,
  ));
}
/// Create a copy of WithdrawalRequestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WithdrawalEntityCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $WithdrawalEntityCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [WithdrawalRequestState].
extension WithdrawalRequestStatePatterns on WithdrawalRequestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WithdrawalRequestState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WithdrawalRequestState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WithdrawalRequestState value)  $default,){
final _that = this;
switch (_that) {
case _WithdrawalRequestState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WithdrawalRequestState value)?  $default,){
final _that = this;
switch (_that) {
case _WithdrawalRequestState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSubmitting,  bool isSuccess,  String? errorMessage,  WithdrawalEntity? result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WithdrawalRequestState() when $default != null:
return $default(_that.isSubmitting,_that.isSuccess,_that.errorMessage,_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSubmitting,  bool isSuccess,  String? errorMessage,  WithdrawalEntity? result)  $default,) {final _that = this;
switch (_that) {
case _WithdrawalRequestState():
return $default(_that.isSubmitting,_that.isSuccess,_that.errorMessage,_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSubmitting,  bool isSuccess,  String? errorMessage,  WithdrawalEntity? result)?  $default,) {final _that = this;
switch (_that) {
case _WithdrawalRequestState() when $default != null:
return $default(_that.isSubmitting,_that.isSuccess,_that.errorMessage,_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _WithdrawalRequestState implements WithdrawalRequestState {
  const _WithdrawalRequestState({this.isSubmitting = false, this.isSuccess = false, this.errorMessage, this.result});
  

@override@JsonKey() final  bool isSubmitting;
@override@JsonKey() final  bool isSuccess;
@override final  String? errorMessage;
@override final  WithdrawalEntity? result;

/// Create a copy of WithdrawalRequestState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithdrawalRequestStateCopyWith<_WithdrawalRequestState> get copyWith => __$WithdrawalRequestStateCopyWithImpl<_WithdrawalRequestState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithdrawalRequestState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,isSuccess,errorMessage,result);

@override
String toString() {
  return 'WithdrawalRequestState(isSubmitting: $isSubmitting, isSuccess: $isSuccess, errorMessage: $errorMessage, result: $result)';
}


}

/// @nodoc
abstract mixin class _$WithdrawalRequestStateCopyWith<$Res> implements $WithdrawalRequestStateCopyWith<$Res> {
  factory _$WithdrawalRequestStateCopyWith(_WithdrawalRequestState value, $Res Function(_WithdrawalRequestState) _then) = __$WithdrawalRequestStateCopyWithImpl;
@override @useResult
$Res call({
 bool isSubmitting, bool isSuccess, String? errorMessage, WithdrawalEntity? result
});


@override $WithdrawalEntityCopyWith<$Res>? get result;

}
/// @nodoc
class __$WithdrawalRequestStateCopyWithImpl<$Res>
    implements _$WithdrawalRequestStateCopyWith<$Res> {
  __$WithdrawalRequestStateCopyWithImpl(this._self, this._then);

  final _WithdrawalRequestState _self;
  final $Res Function(_WithdrawalRequestState) _then;

/// Create a copy of WithdrawalRequestState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSubmitting = null,Object? isSuccess = null,Object? errorMessage = freezed,Object? result = freezed,}) {
  return _then(_WithdrawalRequestState(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as WithdrawalEntity?,
  ));
}

/// Create a copy of WithdrawalRequestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WithdrawalEntityCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $WithdrawalEntityCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
