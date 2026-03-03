// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettlementEntity {

 int get id; int get transactionId; int get amount; int get fee; int get netAmount; String get statusCode; String get statusName; DateTime get scheduledAt; DateTime? get processedAt; String? get failureReason; String? get eventTitle; String? get seatInfo;
/// Create a copy of SettlementEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementEntityCopyWith<SettlementEntity> get copyWith => _$SettlementEntityCopyWithImpl<SettlementEntity>(this as SettlementEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo));
}


@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,fee,netAmount,statusCode,statusName,scheduledAt,processedAt,failureReason,eventTitle,seatInfo);

@override
String toString() {
  return 'SettlementEntity(id: $id, transactionId: $transactionId, amount: $amount, fee: $fee, netAmount: $netAmount, statusCode: $statusCode, statusName: $statusName, scheduledAt: $scheduledAt, processedAt: $processedAt, failureReason: $failureReason, eventTitle: $eventTitle, seatInfo: $seatInfo)';
}


}

/// @nodoc
abstract mixin class $SettlementEntityCopyWith<$Res>  {
  factory $SettlementEntityCopyWith(SettlementEntity value, $Res Function(SettlementEntity) _then) = _$SettlementEntityCopyWithImpl;
@useResult
$Res call({
 int id, int transactionId, int amount, int fee, int netAmount, String statusCode, String statusName, DateTime scheduledAt, DateTime? processedAt, String? failureReason, String? eventTitle, String? seatInfo
});




}
/// @nodoc
class _$SettlementEntityCopyWithImpl<$Res>
    implements $SettlementEntityCopyWith<$Res> {
  _$SettlementEntityCopyWithImpl(this._self, this._then);

  final SettlementEntity _self;
  final $Res Function(SettlementEntity) _then;

/// Create a copy of SettlementEntity
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
as DateTime,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SettlementEntity].
extension SettlementEntityPatterns on SettlementEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettlementEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettlementEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettlementEntity value)  $default,){
final _that = this;
switch (_that) {
case _SettlementEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettlementEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SettlementEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int transactionId,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  DateTime scheduledAt,  DateTime? processedAt,  String? failureReason,  String? eventTitle,  String? seatInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettlementEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int transactionId,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  DateTime scheduledAt,  DateTime? processedAt,  String? failureReason,  String? eventTitle,  String? seatInfo)  $default,) {final _that = this;
switch (_that) {
case _SettlementEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int transactionId,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  DateTime scheduledAt,  DateTime? processedAt,  String? failureReason,  String? eventTitle,  String? seatInfo)?  $default,) {final _that = this;
switch (_that) {
case _SettlementEntity() when $default != null:
return $default(_that.id,_that.transactionId,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.scheduledAt,_that.processedAt,_that.failureReason,_that.eventTitle,_that.seatInfo);case _:
  return null;

}
}

}

/// @nodoc


class _SettlementEntity implements SettlementEntity {
  const _SettlementEntity({required this.id, required this.transactionId, required this.amount, required this.fee, required this.netAmount, required this.statusCode, required this.statusName, required this.scheduledAt, this.processedAt, this.failureReason, this.eventTitle, this.seatInfo});
  

@override final  int id;
@override final  int transactionId;
@override final  int amount;
@override final  int fee;
@override final  int netAmount;
@override final  String statusCode;
@override final  String statusName;
@override final  DateTime scheduledAt;
@override final  DateTime? processedAt;
@override final  String? failureReason;
@override final  String? eventTitle;
@override final  String? seatInfo;

/// Create a copy of SettlementEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettlementEntityCopyWith<_SettlementEntity> get copyWith => __$SettlementEntityCopyWithImpl<_SettlementEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettlementEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo));
}


@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,fee,netAmount,statusCode,statusName,scheduledAt,processedAt,failureReason,eventTitle,seatInfo);

@override
String toString() {
  return 'SettlementEntity(id: $id, transactionId: $transactionId, amount: $amount, fee: $fee, netAmount: $netAmount, statusCode: $statusCode, statusName: $statusName, scheduledAt: $scheduledAt, processedAt: $processedAt, failureReason: $failureReason, eventTitle: $eventTitle, seatInfo: $seatInfo)';
}


}

/// @nodoc
abstract mixin class _$SettlementEntityCopyWith<$Res> implements $SettlementEntityCopyWith<$Res> {
  factory _$SettlementEntityCopyWith(_SettlementEntity value, $Res Function(_SettlementEntity) _then) = __$SettlementEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int transactionId, int amount, int fee, int netAmount, String statusCode, String statusName, DateTime scheduledAt, DateTime? processedAt, String? failureReason, String? eventTitle, String? seatInfo
});




}
/// @nodoc
class __$SettlementEntityCopyWithImpl<$Res>
    implements _$SettlementEntityCopyWith<$Res> {
  __$SettlementEntityCopyWithImpl(this._self, this._then);

  final _SettlementEntity _self;
  final $Res Function(_SettlementEntity) _then;

/// Create a copy of SettlementEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? amount = null,Object? fee = null,Object? netAmount = null,Object? statusCode = null,Object? statusName = null,Object? scheduledAt = null,Object? processedAt = freezed,Object? failureReason = freezed,Object? eventTitle = freezed,Object? seatInfo = freezed,}) {
  return _then(_SettlementEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SettlementListEntity {

 List<SettlementEntity> get settlements; int get totalCount; int get totalNetAmount;
/// Create a copy of SettlementListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementListEntityCopyWith<SettlementListEntity> get copyWith => _$SettlementListEntityCopyWithImpl<SettlementListEntity>(this as SettlementListEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementListEntity&&const DeepCollectionEquality().equals(other.settlements, settlements)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalNetAmount, totalNetAmount) || other.totalNetAmount == totalNetAmount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(settlements),totalCount,totalNetAmount);

@override
String toString() {
  return 'SettlementListEntity(settlements: $settlements, totalCount: $totalCount, totalNetAmount: $totalNetAmount)';
}


}

/// @nodoc
abstract mixin class $SettlementListEntityCopyWith<$Res>  {
  factory $SettlementListEntityCopyWith(SettlementListEntity value, $Res Function(SettlementListEntity) _then) = _$SettlementListEntityCopyWithImpl;
@useResult
$Res call({
 List<SettlementEntity> settlements, int totalCount, int totalNetAmount
});




}
/// @nodoc
class _$SettlementListEntityCopyWithImpl<$Res>
    implements $SettlementListEntityCopyWith<$Res> {
  _$SettlementListEntityCopyWithImpl(this._self, this._then);

  final SettlementListEntity _self;
  final $Res Function(SettlementListEntity) _then;

/// Create a copy of SettlementListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settlements = null,Object? totalCount = null,Object? totalNetAmount = null,}) {
  return _then(_self.copyWith(
settlements: null == settlements ? _self.settlements : settlements // ignore: cast_nullable_to_non_nullable
as List<SettlementEntity>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,totalNetAmount: null == totalNetAmount ? _self.totalNetAmount : totalNetAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SettlementListEntity].
extension SettlementListEntityPatterns on SettlementListEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettlementListEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettlementListEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettlementListEntity value)  $default,){
final _that = this;
switch (_that) {
case _SettlementListEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettlementListEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SettlementListEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SettlementEntity> settlements,  int totalCount,  int totalNetAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettlementListEntity() when $default != null:
return $default(_that.settlements,_that.totalCount,_that.totalNetAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SettlementEntity> settlements,  int totalCount,  int totalNetAmount)  $default,) {final _that = this;
switch (_that) {
case _SettlementListEntity():
return $default(_that.settlements,_that.totalCount,_that.totalNetAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SettlementEntity> settlements,  int totalCount,  int totalNetAmount)?  $default,) {final _that = this;
switch (_that) {
case _SettlementListEntity() when $default != null:
return $default(_that.settlements,_that.totalCount,_that.totalNetAmount);case _:
  return null;

}
}

}

/// @nodoc


class _SettlementListEntity implements SettlementListEntity {
  const _SettlementListEntity({final  List<SettlementEntity> settlements = const [], required this.totalCount, required this.totalNetAmount}): _settlements = settlements;
  

 final  List<SettlementEntity> _settlements;
@override@JsonKey() List<SettlementEntity> get settlements {
  if (_settlements is EqualUnmodifiableListView) return _settlements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_settlements);
}

@override final  int totalCount;
@override final  int totalNetAmount;

/// Create a copy of SettlementListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettlementListEntityCopyWith<_SettlementListEntity> get copyWith => __$SettlementListEntityCopyWithImpl<_SettlementListEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettlementListEntity&&const DeepCollectionEquality().equals(other._settlements, _settlements)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalNetAmount, totalNetAmount) || other.totalNetAmount == totalNetAmount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_settlements),totalCount,totalNetAmount);

@override
String toString() {
  return 'SettlementListEntity(settlements: $settlements, totalCount: $totalCount, totalNetAmount: $totalNetAmount)';
}


}

/// @nodoc
abstract mixin class _$SettlementListEntityCopyWith<$Res> implements $SettlementListEntityCopyWith<$Res> {
  factory _$SettlementListEntityCopyWith(_SettlementListEntity value, $Res Function(_SettlementListEntity) _then) = __$SettlementListEntityCopyWithImpl;
@override @useResult
$Res call({
 List<SettlementEntity> settlements, int totalCount, int totalNetAmount
});




}
/// @nodoc
class __$SettlementListEntityCopyWithImpl<$Res>
    implements _$SettlementListEntityCopyWith<$Res> {
  __$SettlementListEntityCopyWithImpl(this._self, this._then);

  final _SettlementListEntity _self;
  final $Res Function(_SettlementListEntity) _then;

/// Create a copy of SettlementListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settlements = null,Object? totalCount = null,Object? totalNetAmount = null,}) {
  return _then(_SettlementListEntity(
settlements: null == settlements ? _self._settlements : settlements // ignore: cast_nullable_to_non_nullable
as List<SettlementEntity>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,totalNetAmount: null == totalNetAmount ? _self.totalNetAmount : totalNetAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SettlementDetailEntity {

 int get id; int get transactionId; int get amount; int get fee; int get netAmount; String get statusCode; String get statusName; DateTime get scheduledAt; DateTime? get processedAt; String? get failureReason; int? get retryCount; String? get eventTitle; String? get seatInfo; String? get buyerNickname; String? get bankName; String? get accountNumber; String? get accountHolder;
/// Create a copy of SettlementDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementDetailEntityCopyWith<SettlementDetailEntity> get copyWith => _$SettlementDetailEntityCopyWithImpl<SettlementDetailEntity>(this as SettlementDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.retryCount, retryCount) || other.retryCount == retryCount)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.buyerNickname, buyerNickname) || other.buyerNickname == buyerNickname)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder));
}


@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,fee,netAmount,statusCode,statusName,scheduledAt,processedAt,failureReason,retryCount,eventTitle,seatInfo,buyerNickname,bankName,accountNumber,accountHolder);

@override
String toString() {
  return 'SettlementDetailEntity(id: $id, transactionId: $transactionId, amount: $amount, fee: $fee, netAmount: $netAmount, statusCode: $statusCode, statusName: $statusName, scheduledAt: $scheduledAt, processedAt: $processedAt, failureReason: $failureReason, retryCount: $retryCount, eventTitle: $eventTitle, seatInfo: $seatInfo, buyerNickname: $buyerNickname, bankName: $bankName, accountNumber: $accountNumber, accountHolder: $accountHolder)';
}


}

/// @nodoc
abstract mixin class $SettlementDetailEntityCopyWith<$Res>  {
  factory $SettlementDetailEntityCopyWith(SettlementDetailEntity value, $Res Function(SettlementDetailEntity) _then) = _$SettlementDetailEntityCopyWithImpl;
@useResult
$Res call({
 int id, int transactionId, int amount, int fee, int netAmount, String statusCode, String statusName, DateTime scheduledAt, DateTime? processedAt, String? failureReason, int? retryCount, String? eventTitle, String? seatInfo, String? buyerNickname, String? bankName, String? accountNumber, String? accountHolder
});




}
/// @nodoc
class _$SettlementDetailEntityCopyWithImpl<$Res>
    implements $SettlementDetailEntityCopyWith<$Res> {
  _$SettlementDetailEntityCopyWithImpl(this._self, this._then);

  final SettlementDetailEntity _self;
  final $Res Function(SettlementDetailEntity) _then;

/// Create a copy of SettlementDetailEntity
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
as DateTime,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [SettlementDetailEntity].
extension SettlementDetailEntityPatterns on SettlementDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettlementDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettlementDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettlementDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _SettlementDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettlementDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SettlementDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int transactionId,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  DateTime scheduledAt,  DateTime? processedAt,  String? failureReason,  int? retryCount,  String? eventTitle,  String? seatInfo,  String? buyerNickname,  String? bankName,  String? accountNumber,  String? accountHolder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettlementDetailEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int transactionId,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  DateTime scheduledAt,  DateTime? processedAt,  String? failureReason,  int? retryCount,  String? eventTitle,  String? seatInfo,  String? buyerNickname,  String? bankName,  String? accountNumber,  String? accountHolder)  $default,) {final _that = this;
switch (_that) {
case _SettlementDetailEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int transactionId,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  DateTime scheduledAt,  DateTime? processedAt,  String? failureReason,  int? retryCount,  String? eventTitle,  String? seatInfo,  String? buyerNickname,  String? bankName,  String? accountNumber,  String? accountHolder)?  $default,) {final _that = this;
switch (_that) {
case _SettlementDetailEntity() when $default != null:
return $default(_that.id,_that.transactionId,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.scheduledAt,_that.processedAt,_that.failureReason,_that.retryCount,_that.eventTitle,_that.seatInfo,_that.buyerNickname,_that.bankName,_that.accountNumber,_that.accountHolder);case _:
  return null;

}
}

}

/// @nodoc


class _SettlementDetailEntity implements SettlementDetailEntity {
  const _SettlementDetailEntity({required this.id, required this.transactionId, required this.amount, required this.fee, required this.netAmount, required this.statusCode, required this.statusName, required this.scheduledAt, this.processedAt, this.failureReason, this.retryCount, this.eventTitle, this.seatInfo, this.buyerNickname, this.bankName, this.accountNumber, this.accountHolder});
  

@override final  int id;
@override final  int transactionId;
@override final  int amount;
@override final  int fee;
@override final  int netAmount;
@override final  String statusCode;
@override final  String statusName;
@override final  DateTime scheduledAt;
@override final  DateTime? processedAt;
@override final  String? failureReason;
@override final  int? retryCount;
@override final  String? eventTitle;
@override final  String? seatInfo;
@override final  String? buyerNickname;
@override final  String? bankName;
@override final  String? accountNumber;
@override final  String? accountHolder;

/// Create a copy of SettlementDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettlementDetailEntityCopyWith<_SettlementDetailEntity> get copyWith => __$SettlementDetailEntityCopyWithImpl<_SettlementDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettlementDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.retryCount, retryCount) || other.retryCount == retryCount)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.buyerNickname, buyerNickname) || other.buyerNickname == buyerNickname)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder));
}


@override
int get hashCode => Object.hash(runtimeType,id,transactionId,amount,fee,netAmount,statusCode,statusName,scheduledAt,processedAt,failureReason,retryCount,eventTitle,seatInfo,buyerNickname,bankName,accountNumber,accountHolder);

@override
String toString() {
  return 'SettlementDetailEntity(id: $id, transactionId: $transactionId, amount: $amount, fee: $fee, netAmount: $netAmount, statusCode: $statusCode, statusName: $statusName, scheduledAt: $scheduledAt, processedAt: $processedAt, failureReason: $failureReason, retryCount: $retryCount, eventTitle: $eventTitle, seatInfo: $seatInfo, buyerNickname: $buyerNickname, bankName: $bankName, accountNumber: $accountNumber, accountHolder: $accountHolder)';
}


}

/// @nodoc
abstract mixin class _$SettlementDetailEntityCopyWith<$Res> implements $SettlementDetailEntityCopyWith<$Res> {
  factory _$SettlementDetailEntityCopyWith(_SettlementDetailEntity value, $Res Function(_SettlementDetailEntity) _then) = __$SettlementDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int transactionId, int amount, int fee, int netAmount, String statusCode, String statusName, DateTime scheduledAt, DateTime? processedAt, String? failureReason, int? retryCount, String? eventTitle, String? seatInfo, String? buyerNickname, String? bankName, String? accountNumber, String? accountHolder
});




}
/// @nodoc
class __$SettlementDetailEntityCopyWithImpl<$Res>
    implements _$SettlementDetailEntityCopyWith<$Res> {
  __$SettlementDetailEntityCopyWithImpl(this._self, this._then);

  final _SettlementDetailEntity _self;
  final $Res Function(_SettlementDetailEntity) _then;

/// Create a copy of SettlementDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? amount = null,Object? fee = null,Object? netAmount = null,Object? statusCode = null,Object? statusName = null,Object? scheduledAt = null,Object? processedAt = freezed,Object? failureReason = freezed,Object? retryCount = freezed,Object? eventTitle = freezed,Object? seatInfo = freezed,Object? buyerNickname = freezed,Object? bankName = freezed,Object? accountNumber = freezed,Object? accountHolder = freezed,}) {
  return _then(_SettlementDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
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
