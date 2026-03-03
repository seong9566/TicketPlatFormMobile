// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettlementRespDto {

 int get id; int get transactionId; int get amount; int get fee; int get netAmount; String get statusCode; String get statusName; String get scheduledAt; String? get processedAt; String? get failureReason; String? get eventTitle; String? get seatInfo;
/// Create a copy of SettlementRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementRespDtoCopyWith<SettlementRespDto> get copyWith => _$SettlementRespDtoCopyWithImpl<SettlementRespDto>(this as SettlementRespDto, _$identity);

  /// Serializes this SettlementRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,fee,netAmount,statusCode,statusName,scheduledAt,processedAt,failureReason,eventTitle,seatInfo);

@override
String toString() {
  return 'SettlementRespDto(id: $id, transactionId: $transactionId, amount: $amount, fee: $fee, netAmount: $netAmount, statusCode: $statusCode, statusName: $statusName, scheduledAt: $scheduledAt, processedAt: $processedAt, failureReason: $failureReason, eventTitle: $eventTitle, seatInfo: $seatInfo)';
}


}

/// @nodoc
abstract mixin class $SettlementRespDtoCopyWith<$Res>  {
  factory $SettlementRespDtoCopyWith(SettlementRespDto value, $Res Function(SettlementRespDto) _then) = _$SettlementRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, int transactionId, int amount, int fee, int netAmount, String statusCode, String statusName, String scheduledAt, String? processedAt, String? failureReason, String? eventTitle, String? seatInfo
});




}
/// @nodoc
class _$SettlementRespDtoCopyWithImpl<$Res>
    implements $SettlementRespDtoCopyWith<$Res> {
  _$SettlementRespDtoCopyWithImpl(this._self, this._then);

  final SettlementRespDto _self;
  final $Res Function(SettlementRespDto) _then;

/// Create a copy of SettlementRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? transactionId = null,Object? amount = null,Object? fee = null,Object? netAmount = null,Object? statusCode = null,Object? statusName = null,Object? scheduledAt = null,Object? processedAt = freezed,Object? failureReason = freezed,Object? eventTitle = freezed,Object? seatInfo = freezed,}) {
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
as String?,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SettlementRespDto].
extension SettlementRespDtoPatterns on SettlementRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettlementRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettlementRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettlementRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SettlementRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettlementRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SettlementRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int transactionId,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  String scheduledAt,  String? processedAt,  String? failureReason,  String? eventTitle,  String? seatInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettlementRespDto() when $default != null:
return $default(_that.id,_that.transactionId,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.scheduledAt,_that.processedAt,_that.failureReason,_that.eventTitle,_that.seatInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int transactionId,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  String scheduledAt,  String? processedAt,  String? failureReason,  String? eventTitle,  String? seatInfo)  $default,) {final _that = this;
switch (_that) {
case _SettlementRespDto():
return $default(_that.id,_that.transactionId,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.scheduledAt,_that.processedAt,_that.failureReason,_that.eventTitle,_that.seatInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int transactionId,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  String scheduledAt,  String? processedAt,  String? failureReason,  String? eventTitle,  String? seatInfo)?  $default,) {final _that = this;
switch (_that) {
case _SettlementRespDto() when $default != null:
return $default(_that.id,_that.transactionId,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.scheduledAt,_that.processedAt,_that.failureReason,_that.eventTitle,_that.seatInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettlementRespDto implements SettlementRespDto {
  const _SettlementRespDto({required this.id, required this.transactionId, required this.amount, required this.fee, required this.netAmount, required this.statusCode, required this.statusName, required this.scheduledAt, this.processedAt, this.failureReason, this.eventTitle, this.seatInfo});
  factory _SettlementRespDto.fromJson(Map<String, dynamic> json) => _$SettlementRespDtoFromJson(json);

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
@override final  String? eventTitle;
@override final  String? seatInfo;

/// Create a copy of SettlementRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettlementRespDtoCopyWith<_SettlementRespDto> get copyWith => __$SettlementRespDtoCopyWithImpl<_SettlementRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettlementRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettlementRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,fee,netAmount,statusCode,statusName,scheduledAt,processedAt,failureReason,eventTitle,seatInfo);

@override
String toString() {
  return 'SettlementRespDto(id: $id, transactionId: $transactionId, amount: $amount, fee: $fee, netAmount: $netAmount, statusCode: $statusCode, statusName: $statusName, scheduledAt: $scheduledAt, processedAt: $processedAt, failureReason: $failureReason, eventTitle: $eventTitle, seatInfo: $seatInfo)';
}


}

/// @nodoc
abstract mixin class _$SettlementRespDtoCopyWith<$Res> implements $SettlementRespDtoCopyWith<$Res> {
  factory _$SettlementRespDtoCopyWith(_SettlementRespDto value, $Res Function(_SettlementRespDto) _then) = __$SettlementRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int transactionId, int amount, int fee, int netAmount, String statusCode, String statusName, String scheduledAt, String? processedAt, String? failureReason, String? eventTitle, String? seatInfo
});




}
/// @nodoc
class __$SettlementRespDtoCopyWithImpl<$Res>
    implements _$SettlementRespDtoCopyWith<$Res> {
  __$SettlementRespDtoCopyWithImpl(this._self, this._then);

  final _SettlementRespDto _self;
  final $Res Function(_SettlementRespDto) _then;

/// Create a copy of SettlementRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? amount = null,Object? fee = null,Object? netAmount = null,Object? statusCode = null,Object? statusName = null,Object? scheduledAt = null,Object? processedAt = freezed,Object? failureReason = freezed,Object? eventTitle = freezed,Object? seatInfo = freezed,}) {
  return _then(_SettlementRespDto(
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
as String?,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
