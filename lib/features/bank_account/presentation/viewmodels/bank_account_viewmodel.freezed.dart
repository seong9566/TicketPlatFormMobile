// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_account_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BankAccountState {

 BankAccountEntity? get bankAccount; VerificationState get verificationState; bool get isSubmitting; String? get error; DateTime? get expiresAt; int get remainingSeconds; String? get verificationProvider; String? get verificationTier; String? get reasonCode;
/// Create a copy of BankAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankAccountStateCopyWith<BankAccountState> get copyWith => _$BankAccountStateCopyWithImpl<BankAccountState>(this as BankAccountState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankAccountState&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.verificationState, verificationState) || other.verificationState == verificationState)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.error, error) || other.error == error)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.remainingSeconds, remainingSeconds) || other.remainingSeconds == remainingSeconds)&&(identical(other.verificationProvider, verificationProvider) || other.verificationProvider == verificationProvider)&&(identical(other.verificationTier, verificationTier) || other.verificationTier == verificationTier)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode));
}


@override
int get hashCode => Object.hash(runtimeType,bankAccount,verificationState,isSubmitting,error,expiresAt,remainingSeconds,verificationProvider,verificationTier,reasonCode);

@override
String toString() {
  return 'BankAccountState(bankAccount: $bankAccount, verificationState: $verificationState, isSubmitting: $isSubmitting, error: $error, expiresAt: $expiresAt, remainingSeconds: $remainingSeconds, verificationProvider: $verificationProvider, verificationTier: $verificationTier, reasonCode: $reasonCode)';
}


}

/// @nodoc
abstract mixin class $BankAccountStateCopyWith<$Res>  {
  factory $BankAccountStateCopyWith(BankAccountState value, $Res Function(BankAccountState) _then) = _$BankAccountStateCopyWithImpl;
@useResult
$Res call({
 BankAccountEntity? bankAccount, VerificationState verificationState, bool isSubmitting, String? error, DateTime? expiresAt, int remainingSeconds, String? verificationProvider, String? verificationTier, String? reasonCode
});


$BankAccountEntityCopyWith<$Res>? get bankAccount;

}
/// @nodoc
class _$BankAccountStateCopyWithImpl<$Res>
    implements $BankAccountStateCopyWith<$Res> {
  _$BankAccountStateCopyWithImpl(this._self, this._then);

  final BankAccountState _self;
  final $Res Function(BankAccountState) _then;

/// Create a copy of BankAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankAccount = freezed,Object? verificationState = null,Object? isSubmitting = null,Object? error = freezed,Object? expiresAt = freezed,Object? remainingSeconds = null,Object? verificationProvider = freezed,Object? verificationTier = freezed,Object? reasonCode = freezed,}) {
  return _then(_self.copyWith(
bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as BankAccountEntity?,verificationState: null == verificationState ? _self.verificationState : verificationState // ignore: cast_nullable_to_non_nullable
as VerificationState,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remainingSeconds: null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,verificationProvider: freezed == verificationProvider ? _self.verificationProvider : verificationProvider // ignore: cast_nullable_to_non_nullable
as String?,verificationTier: freezed == verificationTier ? _self.verificationTier : verificationTier // ignore: cast_nullable_to_non_nullable
as String?,reasonCode: freezed == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BankAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankAccountEntityCopyWith<$Res>? get bankAccount {
    if (_self.bankAccount == null) {
    return null;
  }

  return $BankAccountEntityCopyWith<$Res>(_self.bankAccount!, (value) {
    return _then(_self.copyWith(bankAccount: value));
  });
}
}


/// Adds pattern-matching-related methods to [BankAccountState].
extension BankAccountStatePatterns on BankAccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankAccountState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankAccountState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankAccountState value)  $default,){
final _that = this;
switch (_that) {
case _BankAccountState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankAccountState value)?  $default,){
final _that = this;
switch (_that) {
case _BankAccountState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BankAccountEntity? bankAccount,  VerificationState verificationState,  bool isSubmitting,  String? error,  DateTime? expiresAt,  int remainingSeconds,  String? verificationProvider,  String? verificationTier,  String? reasonCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankAccountState() when $default != null:
return $default(_that.bankAccount,_that.verificationState,_that.isSubmitting,_that.error,_that.expiresAt,_that.remainingSeconds,_that.verificationProvider,_that.verificationTier,_that.reasonCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BankAccountEntity? bankAccount,  VerificationState verificationState,  bool isSubmitting,  String? error,  DateTime? expiresAt,  int remainingSeconds,  String? verificationProvider,  String? verificationTier,  String? reasonCode)  $default,) {final _that = this;
switch (_that) {
case _BankAccountState():
return $default(_that.bankAccount,_that.verificationState,_that.isSubmitting,_that.error,_that.expiresAt,_that.remainingSeconds,_that.verificationProvider,_that.verificationTier,_that.reasonCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BankAccountEntity? bankAccount,  VerificationState verificationState,  bool isSubmitting,  String? error,  DateTime? expiresAt,  int remainingSeconds,  String? verificationProvider,  String? verificationTier,  String? reasonCode)?  $default,) {final _that = this;
switch (_that) {
case _BankAccountState() when $default != null:
return $default(_that.bankAccount,_that.verificationState,_that.isSubmitting,_that.error,_that.expiresAt,_that.remainingSeconds,_that.verificationProvider,_that.verificationTier,_that.reasonCode);case _:
  return null;

}
}

}

/// @nodoc


class _BankAccountState implements BankAccountState {
  const _BankAccountState({this.bankAccount, this.verificationState = VerificationState.idle, this.isSubmitting = false, this.error, this.expiresAt, this.remainingSeconds = 0, this.verificationProvider, this.verificationTier, this.reasonCode});
  

@override final  BankAccountEntity? bankAccount;
@override@JsonKey() final  VerificationState verificationState;
@override@JsonKey() final  bool isSubmitting;
@override final  String? error;
@override final  DateTime? expiresAt;
@override@JsonKey() final  int remainingSeconds;
@override final  String? verificationProvider;
@override final  String? verificationTier;
@override final  String? reasonCode;

/// Create a copy of BankAccountState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankAccountStateCopyWith<_BankAccountState> get copyWith => __$BankAccountStateCopyWithImpl<_BankAccountState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankAccountState&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.verificationState, verificationState) || other.verificationState == verificationState)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.error, error) || other.error == error)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.remainingSeconds, remainingSeconds) || other.remainingSeconds == remainingSeconds)&&(identical(other.verificationProvider, verificationProvider) || other.verificationProvider == verificationProvider)&&(identical(other.verificationTier, verificationTier) || other.verificationTier == verificationTier)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode));
}


@override
int get hashCode => Object.hash(runtimeType,bankAccount,verificationState,isSubmitting,error,expiresAt,remainingSeconds,verificationProvider,verificationTier,reasonCode);

@override
String toString() {
  return 'BankAccountState(bankAccount: $bankAccount, verificationState: $verificationState, isSubmitting: $isSubmitting, error: $error, expiresAt: $expiresAt, remainingSeconds: $remainingSeconds, verificationProvider: $verificationProvider, verificationTier: $verificationTier, reasonCode: $reasonCode)';
}


}

/// @nodoc
abstract mixin class _$BankAccountStateCopyWith<$Res> implements $BankAccountStateCopyWith<$Res> {
  factory _$BankAccountStateCopyWith(_BankAccountState value, $Res Function(_BankAccountState) _then) = __$BankAccountStateCopyWithImpl;
@override @useResult
$Res call({
 BankAccountEntity? bankAccount, VerificationState verificationState, bool isSubmitting, String? error, DateTime? expiresAt, int remainingSeconds, String? verificationProvider, String? verificationTier, String? reasonCode
});


@override $BankAccountEntityCopyWith<$Res>? get bankAccount;

}
/// @nodoc
class __$BankAccountStateCopyWithImpl<$Res>
    implements _$BankAccountStateCopyWith<$Res> {
  __$BankAccountStateCopyWithImpl(this._self, this._then);

  final _BankAccountState _self;
  final $Res Function(_BankAccountState) _then;

/// Create a copy of BankAccountState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankAccount = freezed,Object? verificationState = null,Object? isSubmitting = null,Object? error = freezed,Object? expiresAt = freezed,Object? remainingSeconds = null,Object? verificationProvider = freezed,Object? verificationTier = freezed,Object? reasonCode = freezed,}) {
  return _then(_BankAccountState(
bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as BankAccountEntity?,verificationState: null == verificationState ? _self.verificationState : verificationState // ignore: cast_nullable_to_non_nullable
as VerificationState,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remainingSeconds: null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,verificationProvider: freezed == verificationProvider ? _self.verificationProvider : verificationProvider // ignore: cast_nullable_to_non_nullable
as String?,verificationTier: freezed == verificationTier ? _self.verificationTier : verificationTier // ignore: cast_nullable_to_non_nullable
as String?,reasonCode: freezed == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BankAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankAccountEntityCopyWith<$Res>? get bankAccount {
    if (_self.bankAccount == null) {
    return null;
  }

  return $BankAccountEntityCopyWith<$Res>(_self.bankAccount!, (value) {
    return _then(_self.copyWith(bankAccount: value));
  });
}
}

// dart format on
