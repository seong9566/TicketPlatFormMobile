// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WithdrawalRespDto {

 int get id; int get amount; int get fee; int get netAmount; String get statusCode; String get statusName; String? get bankName; String get requestedAt; String? get processedAt; String? get failureReason;
/// Create a copy of WithdrawalRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawalRespDtoCopyWith<WithdrawalRespDto> get copyWith => _$WithdrawalRespDtoCopyWithImpl<WithdrawalRespDto>(this as WithdrawalRespDto, _$identity);

  /// Serializes this WithdrawalRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,fee,netAmount,statusCode,statusName,bankName,requestedAt,processedAt,failureReason);

@override
String toString() {
  return 'WithdrawalRespDto(id: $id, amount: $amount, fee: $fee, netAmount: $netAmount, statusCode: $statusCode, statusName: $statusName, bankName: $bankName, requestedAt: $requestedAt, processedAt: $processedAt, failureReason: $failureReason)';
}


}

/// @nodoc
abstract mixin class $WithdrawalRespDtoCopyWith<$Res>  {
  factory $WithdrawalRespDtoCopyWith(WithdrawalRespDto value, $Res Function(WithdrawalRespDto) _then) = _$WithdrawalRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, int amount, int fee, int netAmount, String statusCode, String statusName, String? bankName, String requestedAt, String? processedAt, String? failureReason
});




}
/// @nodoc
class _$WithdrawalRespDtoCopyWithImpl<$Res>
    implements $WithdrawalRespDtoCopyWith<$Res> {
  _$WithdrawalRespDtoCopyWithImpl(this._self, this._then);

  final WithdrawalRespDto _self;
  final $Res Function(WithdrawalRespDto) _then;

/// Create a copy of WithdrawalRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? fee = null,Object? netAmount = null,Object? statusCode = null,Object? statusName = null,Object? bankName = freezed,Object? requestedAt = null,Object? processedAt = freezed,Object? failureReason = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as String,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as String?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WithdrawalRespDto].
extension WithdrawalRespDtoPatterns on WithdrawalRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WithdrawalRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WithdrawalRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WithdrawalRespDto value)  $default,){
final _that = this;
switch (_that) {
case _WithdrawalRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WithdrawalRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _WithdrawalRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  String? bankName,  String requestedAt,  String? processedAt,  String? failureReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WithdrawalRespDto() when $default != null:
return $default(_that.id,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.bankName,_that.requestedAt,_that.processedAt,_that.failureReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  String? bankName,  String requestedAt,  String? processedAt,  String? failureReason)  $default,) {final _that = this;
switch (_that) {
case _WithdrawalRespDto():
return $default(_that.id,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.bankName,_that.requestedAt,_that.processedAt,_that.failureReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  String? bankName,  String requestedAt,  String? processedAt,  String? failureReason)?  $default,) {final _that = this;
switch (_that) {
case _WithdrawalRespDto() when $default != null:
return $default(_that.id,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.bankName,_that.requestedAt,_that.processedAt,_that.failureReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WithdrawalRespDto implements WithdrawalRespDto {
  const _WithdrawalRespDto({required this.id, required this.amount, required this.fee, required this.netAmount, required this.statusCode, required this.statusName, this.bankName, required this.requestedAt, this.processedAt, this.failureReason});
  factory _WithdrawalRespDto.fromJson(Map<String, dynamic> json) => _$WithdrawalRespDtoFromJson(json);

@override final  int id;
@override final  int amount;
@override final  int fee;
@override final  int netAmount;
@override final  String statusCode;
@override final  String statusName;
@override final  String? bankName;
@override final  String requestedAt;
@override final  String? processedAt;
@override final  String? failureReason;

/// Create a copy of WithdrawalRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithdrawalRespDtoCopyWith<_WithdrawalRespDto> get copyWith => __$WithdrawalRespDtoCopyWithImpl<_WithdrawalRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WithdrawalRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithdrawalRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,fee,netAmount,statusCode,statusName,bankName,requestedAt,processedAt,failureReason);

@override
String toString() {
  return 'WithdrawalRespDto(id: $id, amount: $amount, fee: $fee, netAmount: $netAmount, statusCode: $statusCode, statusName: $statusName, bankName: $bankName, requestedAt: $requestedAt, processedAt: $processedAt, failureReason: $failureReason)';
}


}

/// @nodoc
abstract mixin class _$WithdrawalRespDtoCopyWith<$Res> implements $WithdrawalRespDtoCopyWith<$Res> {
  factory _$WithdrawalRespDtoCopyWith(_WithdrawalRespDto value, $Res Function(_WithdrawalRespDto) _then) = __$WithdrawalRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int amount, int fee, int netAmount, String statusCode, String statusName, String? bankName, String requestedAt, String? processedAt, String? failureReason
});




}
/// @nodoc
class __$WithdrawalRespDtoCopyWithImpl<$Res>
    implements _$WithdrawalRespDtoCopyWith<$Res> {
  __$WithdrawalRespDtoCopyWithImpl(this._self, this._then);

  final _WithdrawalRespDto _self;
  final $Res Function(_WithdrawalRespDto) _then;

/// Create a copy of WithdrawalRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? fee = null,Object? netAmount = null,Object? statusCode = null,Object? statusName = null,Object? bankName = freezed,Object? requestedAt = null,Object? processedAt = freezed,Object? failureReason = freezed,}) {
  return _then(_WithdrawalRespDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as String,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as String?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
