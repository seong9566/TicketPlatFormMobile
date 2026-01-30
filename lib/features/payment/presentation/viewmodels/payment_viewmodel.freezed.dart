// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentState {

 bool get isLoading; PaymentRequestEntity? get paymentRequest; PaymentConfirmEntity? get paymentConfirm; String? get errorMessage; int? get roomId;
/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentStateCopyWith<PaymentState> get copyWith => _$PaymentStateCopyWithImpl<PaymentState>(this as PaymentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.paymentRequest, paymentRequest) || other.paymentRequest == paymentRequest)&&(identical(other.paymentConfirm, paymentConfirm) || other.paymentConfirm == paymentConfirm)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.roomId, roomId) || other.roomId == roomId));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,paymentRequest,paymentConfirm,errorMessage,roomId);

@override
String toString() {
  return 'PaymentState(isLoading: $isLoading, paymentRequest: $paymentRequest, paymentConfirm: $paymentConfirm, errorMessage: $errorMessage, roomId: $roomId)';
}


}

/// @nodoc
abstract mixin class $PaymentStateCopyWith<$Res>  {
  factory $PaymentStateCopyWith(PaymentState value, $Res Function(PaymentState) _then) = _$PaymentStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, PaymentRequestEntity? paymentRequest, PaymentConfirmEntity? paymentConfirm, String? errorMessage, int? roomId
});


$PaymentRequestEntityCopyWith<$Res>? get paymentRequest;$PaymentConfirmEntityCopyWith<$Res>? get paymentConfirm;

}
/// @nodoc
class _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._self, this._then);

  final PaymentState _self;
  final $Res Function(PaymentState) _then;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? paymentRequest = freezed,Object? paymentConfirm = freezed,Object? errorMessage = freezed,Object? roomId = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,paymentRequest: freezed == paymentRequest ? _self.paymentRequest : paymentRequest // ignore: cast_nullable_to_non_nullable
as PaymentRequestEntity?,paymentConfirm: freezed == paymentConfirm ? _self.paymentConfirm : paymentConfirm // ignore: cast_nullable_to_non_nullable
as PaymentConfirmEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,roomId: freezed == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentRequestEntityCopyWith<$Res>? get paymentRequest {
    if (_self.paymentRequest == null) {
    return null;
  }

  return $PaymentRequestEntityCopyWith<$Res>(_self.paymentRequest!, (value) {
    return _then(_self.copyWith(paymentRequest: value));
  });
}/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentConfirmEntityCopyWith<$Res>? get paymentConfirm {
    if (_self.paymentConfirm == null) {
    return null;
  }

  return $PaymentConfirmEntityCopyWith<$Res>(_self.paymentConfirm!, (value) {
    return _then(_self.copyWith(paymentConfirm: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentState].
extension PaymentStatePatterns on PaymentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentState value)  $default,){
final _that = this;
switch (_that) {
case _PaymentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentState value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  PaymentRequestEntity? paymentRequest,  PaymentConfirmEntity? paymentConfirm,  String? errorMessage,  int? roomId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentState() when $default != null:
return $default(_that.isLoading,_that.paymentRequest,_that.paymentConfirm,_that.errorMessage,_that.roomId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  PaymentRequestEntity? paymentRequest,  PaymentConfirmEntity? paymentConfirm,  String? errorMessage,  int? roomId)  $default,) {final _that = this;
switch (_that) {
case _PaymentState():
return $default(_that.isLoading,_that.paymentRequest,_that.paymentConfirm,_that.errorMessage,_that.roomId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  PaymentRequestEntity? paymentRequest,  PaymentConfirmEntity? paymentConfirm,  String? errorMessage,  int? roomId)?  $default,) {final _that = this;
switch (_that) {
case _PaymentState() when $default != null:
return $default(_that.isLoading,_that.paymentRequest,_that.paymentConfirm,_that.errorMessage,_that.roomId);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentState implements PaymentState {
  const _PaymentState({this.isLoading = false, this.paymentRequest, this.paymentConfirm, this.errorMessage, this.roomId});
  

@override@JsonKey() final  bool isLoading;
@override final  PaymentRequestEntity? paymentRequest;
@override final  PaymentConfirmEntity? paymentConfirm;
@override final  String? errorMessage;
@override final  int? roomId;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentStateCopyWith<_PaymentState> get copyWith => __$PaymentStateCopyWithImpl<_PaymentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.paymentRequest, paymentRequest) || other.paymentRequest == paymentRequest)&&(identical(other.paymentConfirm, paymentConfirm) || other.paymentConfirm == paymentConfirm)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.roomId, roomId) || other.roomId == roomId));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,paymentRequest,paymentConfirm,errorMessage,roomId);

@override
String toString() {
  return 'PaymentState(isLoading: $isLoading, paymentRequest: $paymentRequest, paymentConfirm: $paymentConfirm, errorMessage: $errorMessage, roomId: $roomId)';
}


}

/// @nodoc
abstract mixin class _$PaymentStateCopyWith<$Res> implements $PaymentStateCopyWith<$Res> {
  factory _$PaymentStateCopyWith(_PaymentState value, $Res Function(_PaymentState) _then) = __$PaymentStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, PaymentRequestEntity? paymentRequest, PaymentConfirmEntity? paymentConfirm, String? errorMessage, int? roomId
});


@override $PaymentRequestEntityCopyWith<$Res>? get paymentRequest;@override $PaymentConfirmEntityCopyWith<$Res>? get paymentConfirm;

}
/// @nodoc
class __$PaymentStateCopyWithImpl<$Res>
    implements _$PaymentStateCopyWith<$Res> {
  __$PaymentStateCopyWithImpl(this._self, this._then);

  final _PaymentState _self;
  final $Res Function(_PaymentState) _then;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? paymentRequest = freezed,Object? paymentConfirm = freezed,Object? errorMessage = freezed,Object? roomId = freezed,}) {
  return _then(_PaymentState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,paymentRequest: freezed == paymentRequest ? _self.paymentRequest : paymentRequest // ignore: cast_nullable_to_non_nullable
as PaymentRequestEntity?,paymentConfirm: freezed == paymentConfirm ? _self.paymentConfirm : paymentConfirm // ignore: cast_nullable_to_non_nullable
as PaymentConfirmEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,roomId: freezed == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentRequestEntityCopyWith<$Res>? get paymentRequest {
    if (_self.paymentRequest == null) {
    return null;
  }

  return $PaymentRequestEntityCopyWith<$Res>(_self.paymentRequest!, (value) {
    return _then(_self.copyWith(paymentRequest: value));
  });
}/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentConfirmEntityCopyWith<$Res>? get paymentConfirm {
    if (_self.paymentConfirm == null) {
    return null;
  }

  return $PaymentConfirmEntityCopyWith<$Res>(_self.paymentConfirm!, (value) {
    return _then(_self.copyWith(paymentConfirm: value));
  });
}
}

// dart format on
