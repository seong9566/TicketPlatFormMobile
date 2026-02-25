// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bank_account_req_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterBankAccountReqDto {

 String get bankName; String get bankCode; String get accountNumber; String get accountHolder;
/// Create a copy of RegisterBankAccountReqDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterBankAccountReqDtoCopyWith<RegisterBankAccountReqDto> get copyWith => _$RegisterBankAccountReqDtoCopyWithImpl<RegisterBankAccountReqDto>(this as RegisterBankAccountReqDto, _$identity);

  /// Serializes this RegisterBankAccountReqDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterBankAccountReqDto&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankName,bankCode,accountNumber,accountHolder);

@override
String toString() {
  return 'RegisterBankAccountReqDto(bankName: $bankName, bankCode: $bankCode, accountNumber: $accountNumber, accountHolder: $accountHolder)';
}


}

/// @nodoc
abstract mixin class $RegisterBankAccountReqDtoCopyWith<$Res>  {
  factory $RegisterBankAccountReqDtoCopyWith(RegisterBankAccountReqDto value, $Res Function(RegisterBankAccountReqDto) _then) = _$RegisterBankAccountReqDtoCopyWithImpl;
@useResult
$Res call({
 String bankName, String bankCode, String accountNumber, String accountHolder
});




}
/// @nodoc
class _$RegisterBankAccountReqDtoCopyWithImpl<$Res>
    implements $RegisterBankAccountReqDtoCopyWith<$Res> {
  _$RegisterBankAccountReqDtoCopyWithImpl(this._self, this._then);

  final RegisterBankAccountReqDto _self;
  final $Res Function(RegisterBankAccountReqDto) _then;

/// Create a copy of RegisterBankAccountReqDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankName = null,Object? bankCode = null,Object? accountNumber = null,Object? accountHolder = null,}) {
  return _then(_self.copyWith(
bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountHolder: null == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterBankAccountReqDto].
extension RegisterBankAccountReqDtoPatterns on RegisterBankAccountReqDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterBankAccountReqDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterBankAccountReqDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterBankAccountReqDto value)  $default,){
final _that = this;
switch (_that) {
case _RegisterBankAccountReqDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterBankAccountReqDto value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterBankAccountReqDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bankName,  String bankCode,  String accountNumber,  String accountHolder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterBankAccountReqDto() when $default != null:
return $default(_that.bankName,_that.bankCode,_that.accountNumber,_that.accountHolder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bankName,  String bankCode,  String accountNumber,  String accountHolder)  $default,) {final _that = this;
switch (_that) {
case _RegisterBankAccountReqDto():
return $default(_that.bankName,_that.bankCode,_that.accountNumber,_that.accountHolder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bankName,  String bankCode,  String accountNumber,  String accountHolder)?  $default,) {final _that = this;
switch (_that) {
case _RegisterBankAccountReqDto() when $default != null:
return $default(_that.bankName,_that.bankCode,_that.accountNumber,_that.accountHolder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterBankAccountReqDto implements RegisterBankAccountReqDto {
  const _RegisterBankAccountReqDto({required this.bankName, required this.bankCode, required this.accountNumber, required this.accountHolder});
  factory _RegisterBankAccountReqDto.fromJson(Map<String, dynamic> json) => _$RegisterBankAccountReqDtoFromJson(json);

@override final  String bankName;
@override final  String bankCode;
@override final  String accountNumber;
@override final  String accountHolder;

/// Create a copy of RegisterBankAccountReqDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterBankAccountReqDtoCopyWith<_RegisterBankAccountReqDto> get copyWith => __$RegisterBankAccountReqDtoCopyWithImpl<_RegisterBankAccountReqDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterBankAccountReqDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterBankAccountReqDto&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankName,bankCode,accountNumber,accountHolder);

@override
String toString() {
  return 'RegisterBankAccountReqDto(bankName: $bankName, bankCode: $bankCode, accountNumber: $accountNumber, accountHolder: $accountHolder)';
}


}

/// @nodoc
abstract mixin class _$RegisterBankAccountReqDtoCopyWith<$Res> implements $RegisterBankAccountReqDtoCopyWith<$Res> {
  factory _$RegisterBankAccountReqDtoCopyWith(_RegisterBankAccountReqDto value, $Res Function(_RegisterBankAccountReqDto) _then) = __$RegisterBankAccountReqDtoCopyWithImpl;
@override @useResult
$Res call({
 String bankName, String bankCode, String accountNumber, String accountHolder
});




}
/// @nodoc
class __$RegisterBankAccountReqDtoCopyWithImpl<$Res>
    implements _$RegisterBankAccountReqDtoCopyWith<$Res> {
  __$RegisterBankAccountReqDtoCopyWithImpl(this._self, this._then);

  final _RegisterBankAccountReqDto _self;
  final $Res Function(_RegisterBankAccountReqDto) _then;

/// Create a copy of RegisterBankAccountReqDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankName = null,Object? bankCode = null,Object? accountNumber = null,Object? accountHolder = null,}) {
  return _then(_RegisterBankAccountReqDto(
bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountHolder: null == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
