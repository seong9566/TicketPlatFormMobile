// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_detail_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettlementDetailRespDto {

 int get id; int get transactionId; int get amount; int get fee; int get netAmount; String get statusCode; String get statusName; String get scheduledAt; String? get processedAt; String? get failureReason; int? get retryCount; String? get eventTitle; String? get seatInfo; String? get buyerNickname; String? get bankName; String? get accountNumber; String? get accountHolder;
/// Create a copy of SettlementDetailRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementDetailRespDtoCopyWith<SettlementDetailRespDto> get copyWith => _$SettlementDetailRespDtoCopyWithImpl<SettlementDetailRespDto>(this as SettlementDetailRespDto, _$identity);

  /// Serializes this SettlementDetailRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementDetailRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.retryCount, retryCount) || other.retryCount == retryCount)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.buyerNickname, buyerNickname) || other.buyerNickname == buyerNickname)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,fee,netAmount,statusCode,statusName,scheduledAt,processedAt,failureReason,retryCount,eventTitle,seatInfo,buyerNickname,bankName,accountNumber,accountHolder);

@override
String toString() {
  return 'SettlementDetailRespDto(id: $id, transactionId: $transactionId, amount: $amount, fee: $fee, netAmount: $netAmount, statusCode: $statusCode, statusName: $statusName, scheduledAt: $scheduledAt, processedAt: $processedAt, failureReason: $failureReason, retryCount: $retryCount, eventTitle: $eventTitle, seatInfo: $seatInfo, buyerNickname: $buyerNickname, bankName: $bankName, accountNumber: $accountNumber, accountHolder: $accountHolder)';
}


}

/// @nodoc
abstract mixin class $SettlementDetailRespDtoCopyWith<$Res>  {
  factory $SettlementDetailRespDtoCopyWith(SettlementDetailRespDto value, $Res Function(SettlementDetailRespDto) _then) = _$SettlementDetailRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, int transactionId, int amount, int fee, int netAmount, String statusCode, String statusName, String scheduledAt, String? processedAt, String? failureReason, int? retryCount, String? eventTitle, String? seatInfo, String? buyerNickname, String? bankName, String? accountNumber, String? accountHolder
});




}
/// @nodoc
class _$SettlementDetailRespDtoCopyWithImpl<$Res>
    implements $SettlementDetailRespDtoCopyWith<$Res> {
  _$SettlementDetailRespDtoCopyWithImpl(this._self, this._then);

  final SettlementDetailRespDto _self;
  final $Res Function(SettlementDetailRespDto) _then;

/// Create a copy of SettlementDetailRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? transactionId = null,Object? amount = null,Object? fee = null,Object? netAmount = null,Object? statusCode = null,Object? statusName = null,Object? scheduledAt = null,Object? processedAt = freezed,Object? failureReason = freezed,Object? retryCount = freezed,Object? eventTitle = freezed,Object? seatInfo = freezed,Object? buyerNickname = freezed,Object? bankName = freezed,Object? accountNumber = freezed,Object? accountHolder = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as String,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as String?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,retryCount: freezed == retryCount ? _self.retryCount : retryCount // ignore: cast_nullable_to_non_nullable
as int?,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,buyerNickname: freezed == buyerNickname ? _self.buyerNickname : buyerNickname // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,accountHolder: freezed == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SettlementDetailRespDto].
extension SettlementDetailRespDtoPatterns on SettlementDetailRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettlementDetailRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettlementDetailRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettlementDetailRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SettlementDetailRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettlementDetailRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SettlementDetailRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int transactionId,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  String scheduledAt,  String? processedAt,  String? failureReason,  int? retryCount,  String? eventTitle,  String? seatInfo,  String? buyerNickname,  String? bankName,  String? accountNumber,  String? accountHolder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettlementDetailRespDto() when $default != null:
return $default(_that.id,_that.transactionId,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.scheduledAt,_that.processedAt,_that.failureReason,_that.retryCount,_that.eventTitle,_that.seatInfo,_that.buyerNickname,_that.bankName,_that.accountNumber,_that.accountHolder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int transactionId,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  String scheduledAt,  String? processedAt,  String? failureReason,  int? retryCount,  String? eventTitle,  String? seatInfo,  String? buyerNickname,  String? bankName,  String? accountNumber,  String? accountHolder)  $default,) {final _that = this;
switch (_that) {
case _SettlementDetailRespDto():
return $default(_that.id,_that.transactionId,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.scheduledAt,_that.processedAt,_that.failureReason,_that.retryCount,_that.eventTitle,_that.seatInfo,_that.buyerNickname,_that.bankName,_that.accountNumber,_that.accountHolder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int transactionId,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  String scheduledAt,  String? processedAt,  String? failureReason,  int? retryCount,  String? eventTitle,  String? seatInfo,  String? buyerNickname,  String? bankName,  String? accountNumber,  String? accountHolder)?  $default,) {final _that = this;
switch (_that) {
case _SettlementDetailRespDto() when $default != null:
return $default(_that.id,_that.transactionId,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.scheduledAt,_that.processedAt,_that.failureReason,_that.retryCount,_that.eventTitle,_that.seatInfo,_that.buyerNickname,_that.bankName,_that.accountNumber,_that.accountHolder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettlementDetailRespDto implements SettlementDetailRespDto {
  const _SettlementDetailRespDto({required this.id, required this.transactionId, required this.amount, required this.fee, required this.netAmount, required this.statusCode, required this.statusName, required this.scheduledAt, this.processedAt, this.failureReason, this.retryCount, this.eventTitle, this.seatInfo, this.buyerNickname, this.bankName, this.accountNumber, this.accountHolder});
  factory _SettlementDetailRespDto.fromJson(Map<String, dynamic> json) => _$SettlementDetailRespDtoFromJson(json);

@override final  int id;
@override final  int transactionId;
@override final  int amount;
@override final  int fee;
@override final  int netAmount;
@override final  String statusCode;
@override final  String statusName;
@override final  String scheduledAt;
@override final  String? processedAt;
@override final  String? failureReason;
@override final  int? retryCount;
@override final  String? eventTitle;
@override final  String? seatInfo;
@override final  String? buyerNickname;
@override final  String? bankName;
@override final  String? accountNumber;
@override final  String? accountHolder;

/// Create a copy of SettlementDetailRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettlementDetailRespDtoCopyWith<_SettlementDetailRespDto> get copyWith => __$SettlementDetailRespDtoCopyWithImpl<_SettlementDetailRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettlementDetailRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettlementDetailRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.retryCount, retryCount) || other.retryCount == retryCount)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.buyerNickname, buyerNickname) || other.buyerNickname == buyerNickname)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,fee,netAmount,statusCode,statusName,scheduledAt,processedAt,failureReason,retryCount,eventTitle,seatInfo,buyerNickname,bankName,accountNumber,accountHolder);

@override
String toString() {
  return 'SettlementDetailRespDto(id: $id, transactionId: $transactionId, amount: $amount, fee: $fee, netAmount: $netAmount, statusCode: $statusCode, statusName: $statusName, scheduledAt: $scheduledAt, processedAt: $processedAt, failureReason: $failureReason, retryCount: $retryCount, eventTitle: $eventTitle, seatInfo: $seatInfo, buyerNickname: $buyerNickname, bankName: $bankName, accountNumber: $accountNumber, accountHolder: $accountHolder)';
}


}

/// @nodoc
abstract mixin class _$SettlementDetailRespDtoCopyWith<$Res> implements $SettlementDetailRespDtoCopyWith<$Res> {
  factory _$SettlementDetailRespDtoCopyWith(_SettlementDetailRespDto value, $Res Function(_SettlementDetailRespDto) _then) = __$SettlementDetailRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int transactionId, int amount, int fee, int netAmount, String statusCode, String statusName, String scheduledAt, String? processedAt, String? failureReason, int? retryCount, String? eventTitle, String? seatInfo, String? buyerNickname, String? bankName, String? accountNumber, String? accountHolder
});




}
/// @nodoc
class __$SettlementDetailRespDtoCopyWithImpl<$Res>
    implements _$SettlementDetailRespDtoCopyWith<$Res> {
  __$SettlementDetailRespDtoCopyWithImpl(this._self, this._then);

  final _SettlementDetailRespDto _self;
  final $Res Function(_SettlementDetailRespDto) _then;

/// Create a copy of SettlementDetailRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? amount = null,Object? fee = null,Object? netAmount = null,Object? statusCode = null,Object? statusName = null,Object? scheduledAt = null,Object? processedAt = freezed,Object? failureReason = freezed,Object? retryCount = freezed,Object? eventTitle = freezed,Object? seatInfo = freezed,Object? buyerNickname = freezed,Object? bankName = freezed,Object? accountNumber = freezed,Object? accountHolder = freezed,}) {
  return _then(_SettlementDetailRespDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as String,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as String?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,retryCount: freezed == retryCount ? _self.retryCount : retryCount // ignore: cast_nullable_to_non_nullable
as int?,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,buyerNickname: freezed == buyerNickname ? _self.buyerNickname : buyerNickname // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,accountHolder: freezed == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
